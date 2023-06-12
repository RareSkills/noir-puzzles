// Import the poseidon hash_1 hash method from the noir standard library,
// return the hashed value.

// For instructions on how to use the Poseidon hash, refer to:
//https://noir-lang.org/standard_library/cryptographic_primitives/hashes/#poseidon


// Note: We are able to import the entire standard library as before, or specific functions.
//       For example, below is the import syntax for a specific elliptic curve method.
//       use dep::std::ec::tecurve::affine::Curve;

fn main(x : Field) -> pub Field {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  assert(main(256) ==
      0x0430fbd12a16d8729d8452729d5ee831a85918c402c77ae3b8da153c8725e206);
  assert(main(2390) !=
      0xc97bfaf2f8ee708c303a06d134f5ecd8389ae0432af62dc132a24118292866bb);
  assert(main(0) ==
      0x2a09a9fd93c590c26b91effbb2499f07e8f7aa12e2b4940a3aed2411cb65e11c);
}
