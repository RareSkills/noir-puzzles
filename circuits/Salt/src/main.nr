// Hash a value privately using a secret salt value to overcome the problem of brute-forcing. 
// Input 2 values, "a", and "salt". Hash all two values using mimc_bn254 as a hashing mechanism. 
//Return the hash result as a public field.

fn main(a : Field, salt : Field) -> pub Field {}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    constrain main(8, 18) ==
        0x0beff53084542749e294a2a122a41849bb33d923f16b7108e213f670ca80bd99;
}
