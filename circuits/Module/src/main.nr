// Instructions:
// 1. Define four functions in the "math.nr" file: "add", "sub", "mul", and
// "div". Each function should take two integer arguments and return the result
// of the corresponding operation.
// 2. In this file, the "main" function takes two integer inputs, "x" and "y".
// Use the "math.nr" file as a module and use the functions you defined in step
// 2 to perform addition, subtraction, multiplication, and division of "x" and
// "y". Store the results in separate variables and return them as a tuple.
// 4. Test your implementation by running the included "test_main" function with
// nargo test inside this directory.

fn main(x : Field, y : Field) -> pub(Field, Field, Field, Field) {
  // your code here
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  let(a, b, c, d) = main(4, 2);
  constrain a == 6;
  constrain b == 2;
  constrain c == 8;
  constrain d == 2;
}
