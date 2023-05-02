
// Add the 2 inputs and return the result
fn main( x : Field, y :  Field) {
  //Your code here
}


////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_add() {
    constrain main(4,5) == 9;
    constrain main(2,9) == 11;
}