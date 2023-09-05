// Dot product is calculated by multiplying the corresponding index of the
// two arrays and then sum up those products.
// Return the result of the calculation.

fn main(x : [ Field; 4 ], y : [ Field; 4 ]) -> pub Field {
  let mut result: Field = 0;

  for i in 0..4 {
    result += x[i] * y[i];
  }

  result
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  assert(main([ 1, 2, 3, 4 ], [ 5, 6, 7, 8 ]) == 70); 
  assert(main([ 1, 2, 3, 4 ], [ 5, 6, 7, 8 ]) != 3000); 
  assert(main([ 10, 40, 3, 76 ], [ 330, 26, 2, 190 ]) == 18786); 
}
