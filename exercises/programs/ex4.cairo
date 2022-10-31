// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    [ap] = 0, ap++;
    [ap] = n, ap++;

    loop:
    [ap] = [ap - 1] + [ap - 2], ap++;
    [ap] = [ap - 2] - 1, ap++;
    jmp loop if [ap - 1] != 0;

    return (sum=[ap - 2]);
}
