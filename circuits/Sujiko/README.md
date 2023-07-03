# Sujiko 

In this puzzle we will integrate [Foundry](https://book.getfoundry.sh/) testing with Noir circuits.


![sujiko](https://github.com/burke-md/noir-puzzles/assets/22263098/fe4f8a86-10eb-4c81-af9c-52ca64fc6008)


### Goal: Create a 3×3 Sujiko verifier.

### Rules:
- The puzzle takes place on a 3x3 grid with four circled number clues at the centre of each quadrant which indicate the sum of the four numbers in that quadrant.
- The numbers 1-9 must be placed in the grid, in accordance with the circled clues, to complete the puzzle.
(For more information, checkout the circuit file or this [wikipedia article](https://en.wikipedia.org/wiki/Sujiko))


## Testing 

Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Navigate to specific puzzle

```bash
cd circuits/Sujiko/circuits
```

Load submodules

```bash
forge install
```

Run Foundry test

```bash
forge test 
```
