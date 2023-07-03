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

## Testing 

Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Navigate to specific puzzle

```bash
cd circuits/<Sudoku>/circuits
```

Load submodules

```bash
forge install
```

Solve code challenge within `src/main.nr` and create proof

```bash
nargo prove p
```

Run Foundry test

```bash
forge test 
```
