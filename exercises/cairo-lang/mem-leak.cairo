func main() {
    [ap] = 100;
    [ap + 2] = 200;
    [ap + 1] = [ap] * [ap + 2]; // ensures no skipped memory cell
    ret;
}