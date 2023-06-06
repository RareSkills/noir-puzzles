// Modify the "main" function to add the two inputs and return the result of the addition.

fn main(x : Field, y : Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_add() {
  assert(main(4, 5) == 9);
  assert(main(2, 9) == 11);
}
