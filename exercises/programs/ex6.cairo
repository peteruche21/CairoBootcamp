from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*, range_check_ptr}(
    arr_len: felt, arr: felt*, run: felt, idx: felt
) -> (sum: felt) {
    if (idx == arr_len) {
        // When 0 is reached, return 0.
        return (sum=0);
    }

    let (sum) = sum_even(arr_len=arr_len, arr=arr, run=run, idx=idx + 1);
    let val = arr[idx];
    let (q, r) = unsigned_div_rem(val, 2);
    if (r == 0) {
        return (sum=sum + val);
    }
    return (sum=sum);
}
