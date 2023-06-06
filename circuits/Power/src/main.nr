// Modify the "main" function to raise x by the power of y and return the result
// of the exponent.

// See here: https://noir-lang.org/standard_library/field_methods/#pow_32

fn main(x : Field, y : Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_power() {
  assert(main(2, 4) == 16);
  assert(main(32, 5) == 33554432);
}
