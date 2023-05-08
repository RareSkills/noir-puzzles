// Modify the "main" function to find the maximum range of a triangle's third edge, 
// where the side lengths (represented with 'side1' and 'side2' below) are all positive integers.

fn main(side1 : Field, side2 : pub Field) -> pub Field {}

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