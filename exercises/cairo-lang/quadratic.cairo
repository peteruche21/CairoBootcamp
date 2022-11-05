// compute x^3 + 23x^2 + 45x 67, x = 100
func main() {
    [ap] = 100, ap++;
    // << Your code here >>
    [ap] = [ap - 1] * [ap - 1], ap++;  // x^2
    [ap] = [ap - 1] * 23, ap++;  // 23x^2
    [ap] = [ap - 2] * [ap - 3];  // x^3
    [ap + 1] = [ap - 3] * 45;  // 45x
    [fp + 5] = [ap] + [ap - 1];
    [fp + 6] = [fp + 5] + [ap + 1];
    [ap + 4] = [fp + 6] + 67;
    ret;
}
