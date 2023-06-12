# Hello Noir 

This is a sample puzzle showing a basic example of how to integrate [Foundry](https://book.getfoundry.sh/) testing with Noir circuits.

## Testing 

Install Foundry 

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Navigate to specific puzzle

```bash
cd circuits/<HelloNoir>/circuits
```

Load submodules

```bash
forge install
```

Generate verifier contract and proofs 

```bash
nargo codegen-verifier
```

Create proofs

Input correct parameters in the `Prover.toml`

```bash
nargo prove p 
```

Run Foundry test

```bash
forge test 
```