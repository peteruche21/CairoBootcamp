// Perform and log output of simple arithmetic operations
from starkware.cairo.common.math import unsigned_div_rem

func simple_math{range_check_ptr}() {
    // adding 13 +  14
    [ap] = 13 + 14, ap++;
    %{ print(memory[ap - 1]) %}
    // multiplying 3 * 6
    [ap] = 3 * 6, ap++;
    %{ print(memory[ap - 1]) %}
    // dividing 6 by 2
    [ap] = 6 / 2, ap++;
    %{ print(memory[ap - 1]) %}
    // dividing 70 by 2
    [ap] = 70 / 2, ap++;
    %{ print(memory[ap - 1]) %}
    // dividing 7 by 2
    let (q, r) = unsigned_div_rem(7, 2);
    %{ print(ids.q, "rem", ids.r) %}
    return ();
}
