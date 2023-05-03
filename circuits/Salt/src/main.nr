// In this exercise, we will learn an important concept related to hashing.
// You want to secretly compute the hash of a value and verify it without exposing it. 
// One way is to hash the value and then store the hash as a reference. 
// One problem in this concept is that an attacker can brute force the variable by comparing the public hash with the resulting hash.
// To overcome this, we privately use a secret salt value in the input. We hash it with "a". 

// This way, brute forcing becomes illogical as the cost will increase multifold for the attacker.

// What to do:
// Input 2 values, a, and salt. 
// Hash all two values using Poseidon hash_2 as a hashing mechanism. 
// Return the hash result as a public field

// By default, all inputs are private in noir. We will not define any input as public because we want them to be a secret, at least in this case. 

// There will be cases where some values will be declared explicitly public.

fn main(value: Field, salt: Field) -> pub Field{
    
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    constrain main(8,18) == 0x2fc28bbd1aca48224c572b7bf14be136aebf89eda385fc148cd7b45d5eab78b5;
}
