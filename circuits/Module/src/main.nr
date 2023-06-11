// Using a module, implement a function that performs basic mathematical operations on two
// fields; "addition", "subtraction", "multiplication" and "division".

// Instructions:
// 1. Define four functions in the "math.nr" file: "add", "sub", "mul", and
// "div". Each function should take two fields arguments and return the result
// of the corresponding operation.
// 2. In this file, the "main" function takes three fields inputs "x", "y" and
// "op", where "op" is the operation to carry out on "x" and "y" (0 == add, 1 ==
// sub, 2 == mul, 3 == div).
// 3. Use the "math.nr" file as a module here and use the functions you defined
// in step 1 to perform an addition, subtraction, multiplication, or division of
// "x" and "y" based on the operation number "op".
// 4. Store the result in a mutable variable and return it.
// 5. Test your implementation by running the included "test_main" function with
// 'nargo test' inside this directory.

// See here: https://noir-lang.org/modules_packages_crates/modules/

fn main(x : Field, y : Field, op : Field) -> pub Field {
    // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    assert(main(4, 2, 0) == 6);
    assert(main(80, 2, 1) == 78); 
    assert(main(10, 10, 2) == 100); 
    assert(main(50, 10, 3) == 5); 
    assert(main(4, 2, 5) == 0); 
}
