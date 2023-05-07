// In this exercise, we will learn how to check the range of a private variable
// and prove that it is within the range.

// For example, we can prove that a certain person's income is within the range
// Declare 3 input u64 `a`, `lowerbound` and `upperbound`.
// If 'a' is within the range, output 1, else output 0.

fn main(a : u64, lowerbound : pub u64, upperbound : pub u64) -> pub u64 {}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_range() {
    constrain main(1, 2, 5) == 0;
    constrain main(10, 1, 20) == 1;
}
