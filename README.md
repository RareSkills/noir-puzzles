# Noir-Puzzles

## Requirements
- Install [Noir](https://noir-lang.org/getting_started/nargo_installation)
- Install [Foundry](https://book.getfoundry.sh/getting-started/installation)

## Recommended Order for the puzzles
- [HelloNoir](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/HelloNoir) - Example on how to test noir with foundry . Run `forge test`
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
- [Sujiko](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/sujiko)
- [Sudoku](https://github.com/RareSkills/noir-puzzles/tree/main/circuits/sudoku)


## To test your solution [Excluding Sudoku and Sujiko]

Go to the relevant directory 

```bash
cd circuits/<Relevant Puzzle>
```

```bash
nargo test
```


## To test Sudoku and Sujiko(using foundry)

### Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

### Generate verifier contract and proofs 

```bash
cd circuits/<sudoku OR sujiko>/circuits
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

