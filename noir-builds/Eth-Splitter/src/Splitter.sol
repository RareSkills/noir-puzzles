pragma solidity ^0.8.19;

import "../contract/plonk_vk.sol";
import "openzeppelin/utils/Address.sol";

/// @author RareSkills
/// @notice Anonymous Eth Splitter to 8 receipients.
contract Splitter {

// @dev Ultra Verifier contract for proof verification
    UltraVerifier public verifier;

    using Address for address payable;

/// @dev Round Struct
/// root merkle root
/// TotalFuel Total Amount of ETH to split
    struct Round{
        bytes32 root;
        uint TotalFuel;
    }

/// @dev Stores unique nullifier for already claimed value.
    mapping(bytes32 => bool) public claimed;

/// @dev Round counter to Round Struct
    mapping(uint => Round) public round;

/// @dev Round counter 
    uint public  roundCounter;


/// @dev Start a new round 
/// @param _fuel Total amount of ETH to split
/// @param _root Merkle root
    function LaunchTorpedo(uint _fuel, bytes32 _root) external payable {
        require(_fuel == msg.value);
        round[roundCounter] = Round({root:_root,TotalFuel: _fuel});
        roundCounter ++;
    }

/// @dev Claim value from respective round
/// @param _receipient Receipient of value 
/// @param _round Round number to claim from 
/// @param _proof Proof 
/// @param publicInputs [0] note_root [1] nullifier 
    function claimFuel(address payable _receipient,uint _round,bytes memory  _proof, bytes32[] memory publicInputs) external  {
        require(!claimed[publicInputs[1]],"Already Claimed!");
        require(round[_round].root == publicInputs[0],"Invalid Round");
        bool mission = verifier.verify(_proof,publicInputs);
        assert(mission == true);
        claimed[publicInputs[1]] = true;
        _receipient.sendValue(round[_round].TotalFuel/8);
    }

/// @notice Initializing verifier.
    constructor() payable  {
        verifier= new UltraVerifier();
    }

}
