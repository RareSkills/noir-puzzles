use dep::std;
// Create a 3 x 3 Sujiko Verifier circuit 

/// Question will be in the form of  
/// q[0]  q[1]
/// q[2]  q[3]

/// solution will be in the form of 
/// s[0]  s[1]  s[2]
/// s[3]  s[4]  s[5]
/// s[6]  s[7]  s[8]


fn main(question: pub [Field; 4], solution:[Field; 9]) {
   
    // Your solution starts here ..
    std::println("Question: ");
    std::println(question);
    std::println("Solution: ");
    std::println(solution);

}

// Helper function
fn is_equal(a:Field, b:Field) -> pub bool {
    let z = a == b;
    let m = false;
    z| m 
}
