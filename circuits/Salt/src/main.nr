// Hash a value privately using a secret salt value to overcome the problem of
// brute-forcing. Input 2 values, "a" and "salt". Hash all two values using
// mimc_bn254 as a hashing mechanism.
// Return the hash result as a public field.

// See here: https://noir-lang.org/standard_library/cryptographic_primitives/hashes/#mimc_bn254-and-mimc
// Note: An example of importing the standard library can be seen from the link below.
//       https://noir-lang.org/standard_library/logging

fn main(a : Field, salt : Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  assert(main(8, 18) ==
      0x0beff53084542749e294a2a122a41849bb33d923f16b7108e213f670ca80bd99); 
  assert(main(128, 1024) ==
      0x03f96e537ea553286ecd7b2085a6a95fb90b1796d0c728cde6278ddece0cfd61); 
  assert(main(18, 2024) !=
      0x219f5dcd16acbcfc246e20c81aa8c6d9d16e28afcf6076a370f254cd5131e0b9); 
}
