// Modify the main function so that it finds the maximum range of a triangle's
// third edge, where the side lengths are all integers.
// See here: https://edabit.com/challenge/56XXwAkLJGbEccYfn

fn main(side1 : Field, side2 : pub Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  constrain main(2, 4) == 5;
  constrain main(256, 1000) == 1255;
  constrain main(20, 400) != 50;
}