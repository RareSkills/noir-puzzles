// Noir has some available cryptographic hashing methods, poseidon is one of
// them Import the poseidon hash_1 hash method from the noir standard library
// Hash the input variable 'x', and return the output of the hash as a variable
// 'out' .

// HINT: use the correct datatype

fn main(x : Field) -> pub Field {}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    constrain main(256) ==
        0x0430fbd12a16d8729d8452729d5ee831a85918c402c77ae3b8da153c8725e206;
}
