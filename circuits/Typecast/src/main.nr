// The inputs of the main function are fields, but we want to return "x" greater
// than “y.” This wouldn't work because fields cannot be compared in Noir. In
// other for the comparison to work, you must cast them to a valid uint type
// before we can compare them.

fn main(x : Field, y : pub Field) -> pub bool {}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() { 
    constrain main(1, 2) == false; 
}
