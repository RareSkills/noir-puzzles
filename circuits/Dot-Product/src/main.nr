// Use the main function to calculate the dot product of a 4-item field array ‘x’ and ‘y’, and then return the result as a mutable variable 'out'

fn main(x : [Field; 4], y : [Field; 4]) -> pub Field {

}


////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    constrain main([1,2,3,4],[5,6,7,8]) == 70;
    constrain main([1,2,3,4],[5,6,7,8]) != 3000;
    constrain main([10,40,3,76],[330,26,2,190]) == 18786;
}