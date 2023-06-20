use dep::std;

fn derive_public_key(priv_key: Field) -> [Field; 2] {
    let pubkey = std::scalar_mul::fixed_base(priv_key);
    let pubkey_x = pubkey[0];
    let pubkey_y = pubkey[1];
    [pubkey_x, pubkey_y]
}

fn create_commitment(pubkey_x: Field, pubkey_y: Field, secret: Field) -> Field {
    let note_commitment = std::hash::pedersen([pubkey_x, pubkey_y, secret]);
    note_commitment[0]
}

fn check_nullifier(note_commitment: Field, index: Field, priv_key: Field) -> Field {
    let nullifier = std::hash::pedersen([note_commitment, index, priv_key]); // random nonce that uniquely identifies your commitment in the tree
    nullifier[0]
}

fn test_merkle_membership(note_root: Field, note_commitment: Field, index: Field, note_hash_path: [Field; 3]) -> Field {
    let nullifier = std::merkle::check_membership(note_root, note_commitment, index, note_hash_path); 
    nullifier
}


fn main(
  priv_key: Field,             // Private key of note
  note_root: pub Field,        // Merkle membership proof
  index: Field,                // Index of note in merkle tree
  note_hash_path: [Field; 3],  // Merkle path of note
  secret: Field,               // Private key
) -> pub [Field; 1] {
    // Derive public key from private key to show ownership
    let pubkey = derive_public_key(priv_key);
    
    // Compute commitment for note
    let note_commitment = create_commitment(pubkey[0], pubkey[1], secret);
    // Compute nullifier for note
    let nullifier = check_nullifier(note_commitment, index, priv_key);
    std::println(nullifier);
    // Check that the input note commitment is in the root
    let is_member = test_merkle_membership(note_root, note_commitment, index, note_hash_path);

    // Constraint check
    constrain is_member == 1;
    
    // Cannot have unused variables, return the recipient as public output of the circuit
    [nullifier]
}

