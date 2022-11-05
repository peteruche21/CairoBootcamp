// Implement a funcion that returns:
// - 1 when magnitudes of inputs are equal
// - 0 otherwise
from starkware.cairo.common.math import abs_value

func abs_eq{range_check_ptr}(x: felt, y: felt) -> (bit: felt) {
    alloc_locals;
    // check for absolute equality
    local abs_x = abs_value(x);
    local abs_y = abs_value(y);

    %{ print(memory[fp + 0]) %}
    %{ print(memory[fp + 1]) %}

    if ([fp + 0] == [fp + 1]) {
        return (1,);
    }
    return (0,);
}
