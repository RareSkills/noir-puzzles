use dep::std;
// Create a 3 x 3 Sujiko Verifier circuit 
// https://en.wikipedia.org/wiki/Sujiko

/// Question will be in the form of  
/// q[0]  q[1]
/// q[2]  q[3]

/// solution will be in the form of 
/// s[0]  s[1]  s[2]
/// s[3]  s[4]  s[5]
/// s[6]  s[7]  s[8]


fn main(question:[Field;4], solution:[Field;9]) {
   
    // Your solution starts here ..

}

// Helper function
fn is_equal(a:Field,b:Field) -> pub bool {
    let z = a == b;
    let m = false;
    z| m 
}

#[test]
fn test_sujiko() {
    let question:[Field;4] = [20, 22, 14, 20];
    let solution:[Field;9] = [7, 9, 2, 1, 3, 8, 6,4, 5];
    main(question,solution);
}
