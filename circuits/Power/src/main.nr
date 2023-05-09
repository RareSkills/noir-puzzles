// Modify the "main" function to raise x by the power of y and return the result
// of the exponent.

fn main(x : Field, y : Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_power() {
  constrain main(2, 4) == 16;
  constrain main(32, 5) == 33554432;
}
