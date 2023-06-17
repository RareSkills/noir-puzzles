# Sudoku

In this puzzle we will integrate [Foundry](https://book.getfoundry.sh/) testing with Noir circuits.

![sudoku](https://github.com/burke-md/noir-puzzles/assets/22263098/608b1296-82fe-4148-8c81-1648ec2f971f)


### Goal: Create a 4×4 Sudoku verifier

### Rules: 
- There will be 4 columns and 4 rows. 
- Sum of each row/column should be 10. 
- Numbers from 1 to 4(inclusive) should be used for this.
- There should be no repetition in numbers for any row/column .
(For more information, checkout the circuit file)

### Note:

Within `main.nr` the `main()` the function signature will need to be updated. It currently does not include a return type.

```
fn main(question: [Field; 16], answer : [Field; 16]) -> pub bool
```

This is to ensure users do not face a return value type error on first compile. The test suit will require a `bool` value be returned from `main()`.

## Testing 

Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Navigate to specific puzzle

```bash
cd circuits/<Sudoku>
```

Load submodules

```bash
forge install
```

Navigate to the `circuits` folder where the Noir code and config can be found
```bash
cd circuits
```

Input correct parameters in the `Prover.toml`. This will later be done with a script.

```bash
nargo prove p 
```

Run Foundry test

```bash
forge test 
```


### Sample code for validating 2D matrix in Noir:

```
    // Verifying the Question
    for i in 0..16 {
        let mut a = question[i] == answer[i];
        let mut b = question[i] == 0;
        let c = a | b;
        std::println(c);
        assert(c == true);
    }

// Check first row has 3 inputs as 0 and 1 input as non zero
    let mut m:[Field; 16] = [0; 16];
    for i in 0..4 {
    let mut a = question[i] ;
    assert(a == question[i]);
    let mut b = 0;
    assert(b == 0);
    let c =  a==b; 
    m[i] = c as Field;
    }
    assert(3 == (m[0] + m[1] +m[2] + m[3]));

// Check second row has 3 inputs as 0 and 1 input as non zero

    for i in 4..8 {
    let mut a = question[i] ;
    assert(a == question[i]);
    let mut b = 0;
    assert(b == 0);
    let c =  a==b; 
    m[i] = c as Field;
    }
    assert(3 == (m[4] + m[5] +m[6] + m[7]));

// Check third row has 3 inputs as 0 and 1 input as non zero

    for i in 8..12 {
    let mut a = question[i] ;
    assert(a == question[i]);
    let mut b = 0;
    assert(b == 0);
    let c =  a==b; 
    m[i] = c as Field;
    }
    assert(3 == (m[8] + m[9] +m[10] + m[11]));

// Check fourth row has 3 inputs as 0 and 1 input as non zero

    for i in 12..16 {
    let mut a = question[i] ;
    assert(a == question[i]);
    let mut b = 0;
    assert(b == 0);
    let c =  a==b; 
    m[i] = c as Field;
    }
    assert(3 == (m[12] + m[13] +m[14] + m[15]));    
    ```