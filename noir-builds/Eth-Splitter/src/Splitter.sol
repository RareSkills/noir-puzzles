pragma solidity ^0.8.19;

import "../contract/plonk_vk.sol";
import "@openzeppelin/open"
contract Splitter {

    UltraVerifier public verifier;

    struct Round{
        bytes32 root;
        uint TotalFuel;
    }

    mapping(bytes32 => bool) public claimed;

    mapping(uint => Round) public round;
    uint private roundCounter;

    function LaunchTorpedo(uint _fuel, bytes32 _root) external payable {
        require(_fuel == msg.value);
        round[roundCounter] = Round({root:_root,TotalFuel: _fuel});
        roundCounter ++;
    }

    function claimFuel(uint _round,bytes memory  _proof, bytes32[] memory publicInputs) external  {
        require(!claimed[publicInputs[2]],"Already Claimed!");
        require(round[_round].root == publicInputs[1],"Invalid Round");
        bool mission = verifier.verify(_proof,publicInputs);
        assert(mission == true);
        claimed[publicInputs[2]] = true;

    }












    constructor() payable  {
        verifier= new UltraVerifier();
    }

    


    
}
