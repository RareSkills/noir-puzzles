// The goal is to modify the main function to return true if the value of "x" is
// greater than the value of "y". However, fields cannot be directly compared in
// Noir. To make the comparison work, you must cast them to a valid uint type
// first. Then, perform the comparison and return the result.

fn main(x : Field, y : pub Field) -> pub bool {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  assert(main(1, 2) == false); 
  assert(main(188, 32) == true); 
  assert(main(20, 20) != true); 
}
