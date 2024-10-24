"""
Copyright (c) Microsoft Corporation.
Licensed under the MIT License.
"""

from enum import Enum, IntEnum

FP32_EXPONENT_BIAS = 127
FP32_MIN_NORMAL = 2 ** (-FP32_EXPONENT_BIAS + 1)

# Enum for rounding modes
class RoundingMode(IntEnum):
    nearest = 0
    floor = 1
    even = 2

    @staticmethod
    def string_enums():
        return [s.name for s in list(RoundingMode)]

# Enum for scalar data formats
class ElemFormat(Enum):
    int8 = 1
    int4 = 2
    int2 = 3
    fp8_e5m2 = 4
    fp8_e4m3 = 5
    fp6_e3m2 = 6
    fp6_e2m3 = 7
    fp4 = 8
    fp4_e2m1 = 8
    float16 = 9
    fp16 = 9
    bfloat16 = 10
    bf16 = 10

    # ARCALA added formats
    int7 = 11
    int6 = 12
    int5 = 13
    int3 = 14
    fp8_e3m4 = 15
    fp8_e2m5 = 16
    fp7_e4m2 = 17
    fp7_e3m3 = 18
    fp7_e2m4 = 19
    fp5_e3m1 = 20
    fp5_e2m2 = 21
    fp4_e3m0 = 22
    fp3_e2m0 = 23
    fp4_e1m2 = 24

    @staticmethod
    def from_str(s):
        assert(s != None), "String elem_format == None"
        s = s.lower()
        if hasattr(ElemFormat, s):
            return getattr(ElemFormat, s)
        else:
            raise Exception("Undefined elem format", s)


def _get_min_norm(ebits):
    """ Valid for all float formats """
    emin = 2 - (2 ** (ebits - 1))
    return 0 if ebits == 0 else 2 ** emin


def _get_max_norm(ebits, mbits):
    """ Valid only for floats that define NaN """
    assert(ebits >= 5), "invalid for floats that don't define NaN"
    emax = 0 if ebits==0 else 2**(ebits - 1) - 1
    return 2**emax * float(2**(mbits-1) - 1) / 2**(mbits-2)


_FORMAT_CACHE = {}
def _get_format_params(fmt):
    """ Allowed formats:
        - intX:         2 <= X <= 32, assume sign-magnitude, 1.xxx representation
        - floatX/fpX:   16 <= X <= 28, assume top exp is used for NaN/Inf
        - bfloatX/bfX:  9 <= X <= 32
        - fp4,                  no NaN/Inf
        - fp6_e3m2/e2m3,        no NaN/Inf 
        - fp8_e4m3/e5m2,        e5m2 normal NaN/Inf, e4m3 special behavior

        Returns:
          ebits: exponent bits
          mbits: mantissa bits: includes sign and implicit bits
          emax: max normal exponent
          max_norm: max normal number
          min_norm: min normal number
    """
    if type(fmt) is str:
        fmt = ElemFormat.from_str(fmt)

    if fmt in _FORMAT_CACHE:
        return _FORMAT_CACHE[fmt]

    if fmt == ElemFormat.int8:
        ebits, mbits = 0, 8
        emax = 0
    elif fmt == ElemFormat.int4:
        ebits, mbits = 0, 4
        emax = 0
    elif fmt == ElemFormat.int2:
        ebits, mbits = 0, 2
        emax = 0
    elif fmt == ElemFormat.fp8_e5m2:
        ebits, mbits = 5, 4
        emax = 2**(ebits - 1) - 1
    elif fmt == ElemFormat.fp8_e4m3:
        ebits, mbits = 4, 5
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp6_e3m2:
        ebits, mbits = 3, 4
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp6_e2m3:
        ebits, mbits = 2, 5
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp4:
        ebits, mbits = 2, 3
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.float16:
        ebits, mbits = 5, 12
        emax = 2**(ebits - 1) - 1
    elif fmt == ElemFormat.bfloat16:
        ebits, mbits = 8, 9
        emax = 2**(ebits - 1) - 1
    # ARCALA added formats
    elif fmt == ElemFormat.int7:
        ebits, mbits = 0, 7
        emax = 0    
    elif fmt == ElemFormat.int6:
        ebits, mbits = 0, 6
        emax = 0 
    elif fmt == ElemFormat.int5:
        ebits, mbits = 0, 5
        emax = 0     
    elif fmt == ElemFormat.int3:
        ebits, mbits = 0, 3
        emax = 0   
    elif fmt == ElemFormat.fp8_e3m4:
        ebits, mbits = 3, 6
        emax = 2**(ebits - 1) 
    elif fmt == ElemFormat.fp8_e2m5:
        ebits, mbits = 2, 7
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp7_e4m2:
        ebits, mbits = 4, 4
        emax = 2**(ebits - 1) 
    elif fmt == ElemFormat.fp7_e3m3:
        ebits, mbits = 3, 5
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp7_e2m4:
        ebits, mbits = 2, 6
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp5_e3m1:
        ebits, mbits = 3, 3
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp5_e2m2:
        ebits, mbits = 2, 4
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp4_e3m0:
        ebits, mbits = 3, 2
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp3_e2m0:
        ebits, mbits = 2, 2
        emax = 2**(ebits - 1)
    elif fmt == ElemFormat.fp4_e1m2:
        ebits, mbits = 1, 4
        emax = 2**(ebits - 1)
    else:
        raise Exception("Unknown element format %s" % fmt)
    
    if fmt != ElemFormat.fp8_e4m3:
        max_norm = 2**emax * float(2**(mbits-1) - 1) / 2**(mbits-2)
    else:
        max_norm = 2**emax * 1.75  # FP8 has custom max_norm

    min_norm = _get_min_norm(ebits)
    
    _FORMAT_CACHE[fmt] = (ebits, mbits, emax, max_norm, min_norm)

    return ebits, mbits, emax, max_norm, min_norm
