// Modify the "main" function so it takes an array of field of length '3',
// and a loop that adds the elements of the array. Return the result of the
// addition.
// Note: Noir uses an implicit return method in functions

// See here: https://noir-lang.org/language_concepts/control_flow/#loops

fn main() -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_loop() {
  let arr : [ Field; 3 ] = [ 2, 4, 6 ];
  constrain main(arr) == 12;

  let arr2 : [ Field; 3 ] = [ 0, 6, 34 ];
  constrain main(arr2) == 40;

  let arr3 : [ Field; 3 ] = [ 32, 128, 256 ];
  constrain main(arr3) == 416;
}