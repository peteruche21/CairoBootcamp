%lang starknet
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem

// Using binary operations return:
// - 1 when pattern of bits is 01010101 from LSB up to MSB 1, but accounts for trailing zeros
// - 0 otherwise

// 000000101010101 PASS
// 010101010101011 FAIL

func pattern{bitwise_ptr: BitwiseBuiltin*, range_check_ptr}(
    n: felt, idx: felt, exp: felt, broken_chain: felt
) -> (true: felt) {
    alloc_locals;
    local bitres;
    %{  
        print(bin(ids.n & ((1 << 8) -1 )))
        if ((ids.n & ((1 << 8) - 1)) == 0b01010101):
            ids.bitres = 1
        elif ((ids.n >> 1) & 0b01010101):
            ids.bitres = 1
        else:
            ids.bitres = 0
        print(ids.bitres)
    %}
    // let (local shift) = bitwise_and(n, bitres);
    // %{print(ids.shift)%}
    // assert [fp + 1] = 01010101;
    return (bitres,);
}
