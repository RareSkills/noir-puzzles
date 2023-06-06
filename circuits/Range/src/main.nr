// Check the range of a private variable and prove that it is within the range.
// There are three inputs "a", "lowerbound" and "upperbound". If 'a' is within
// the range of the two other inputs, output 1, else output 0.

fn main(a : u64, lowerbound : pub u64, upperbound : pub u64) -> pub u64 {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_range() {
  assert(main(1, 2, 5) == 0);
  assert(main(10, 1, 20) == 1);
}
