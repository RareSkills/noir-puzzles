// Dot product is calculated by multiplying the corresponding index of the
// two arrays and then sum up those products.
// Return the result of the calculation.

fn main(x : [ Field; 4 ], y : [ Field; 4 ]) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  constrain main([ 1, 2, 3, 4 ], [ 5, 6, 7, 8 ]) == 70;
  constrain main([ 1, 2, 3, 4 ], [ 5, 6, 7, 8 ]) != 3000;
  constrain main([ 10, 40, 3, 76 ], [ 330, 26, 2, 190 ]) == 18786;
}