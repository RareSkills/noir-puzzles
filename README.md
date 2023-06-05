# Noir-Puzzles

## Requirements
- Install [Noir](https://noir-lang.org/getting_started/nargo_installation)
- Install [Foundry](https://book.getfoundry.sh/getting-started/installation)

## Recommended Order for the puzzles
- [Addition](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Addition)
- [Global](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Global)
- [For Loop](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/ForLoop)
- [Power](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Power)
- [Range](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Range)
- [Dot-Product](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Dot-Product)
- [Typecast](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Typecast)
- [Module](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Module)
- [Max edge](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Max-Edge)
- [Salt](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Salt)
- [Poseidon](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Poseidon)
- [HelloNoir](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/HelloNoir) - Example on how to test noir with foundry . Run `forge test`
- [Sudoku](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Sudoku)
- [Sujiko](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/Sujiko)


## To test your solution [Excluding Sudoku and Sujiko]

Go to the relevant directory 

```bash
cd circuits/<Relevant Puzzle>
```

```bash
nargo test
```

## Sudoku
![Screenshot 2023-05-20 at 12 48 37 AM](https://github.com/RareSkills/noir-puzzles/assets/91280922/c2e09237-41f2-4f97-a59a-f5df14a85ad5)
 

### Goal: Create a 4×4 Sudoku verifier .

### Rules: 
- There will be 4 columns and 4 rows. 
- Sum of each row/column should be 10. 
- Numbers from 1 to 4(inclusive) should be used for this.
- There should be no repetition in numbers for any row/column .
(For more information, checkout the circuit file)


## Sujiko 
![Screenshot 2023-05-20 at 12 45 32 AM](https://github.com/RareSkills/noir-puzzles/assets/91280922/5cb45f0b-0dfb-4316-8ab7-0b8f5b708beb)



### Goal: Create a 3×3 Sujiko verifier.

### Rules:
- The puzzle takes place on a 3x3 grid with four circled number clues at the centre of each quadrant which indicate the sum of the four numbers in that quadrant.
- The numbers 1-9 must be placed in the grid, in accordance with the circled clues, to complete the puzzle.
(For more information, checkout the circuit file)


## To test Sudoku and Sujiko(using foundry)

### Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

### Navigate to specific puzzle

```bash
cd circuits/<Sudoku OR Sujiko>/circuits
```

### Load submodules

```bash
forge install
```

### Generate verifier contract and proofs 

```bash
nargo codegen-verifier
```

### Create proofs

Input correct parameters in the `Prover.toml`

```bash
nargo prove p 
```

### Testing

```bash
forge test 
```

### Write Custom For loops in Noir 
[Link](https://github.com/noir-lang/docs/issues/91#event-9026512607)

