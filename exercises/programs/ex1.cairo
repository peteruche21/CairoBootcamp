// Create a function that accepts a parameter and logs it
func log_value(y: felt) {
   // Start a hint segment that uses python print()
   [ap] = y, ap++;
    %{
        print(memory[ap - 1])
    %}
   // This exercise has no tests to check against.

    return ();
}
