from starkware.cairo.common.uint256 import Uint256, uint256_add

// Modify both functions so that they increment
// supplied value and return it
func add_one(y: felt) -> (val: felt) {
    [ap] = y + 1;
    return (val=[ap]);
}

func add_one_U256{range_check_ptr}(y: Uint256) -> (val: Uint256) {
    alloc_locals;
    let x: Uint256 = Uint256(low=1, high=0);
    let (local res: Uint256, local carry) = uint256_add(y, x);
    return (val=res);
}
