// Define a 'comptime global variable' of type Field and assign a value of 10 to
// it. Then, the result of the multiplication of this global variable with the
// input of the main function should be returned.

// See here: https://noir-lang.org/language_concepts/mutability/#globals

fn main(x : Field) -> pub Field {
  // your code here
  globalVar * x
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
  assert(main(2)==20);
  assert(main(10)==100);
  assert(main(203)!=120);
}
