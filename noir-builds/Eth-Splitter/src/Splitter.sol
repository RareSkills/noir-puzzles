pragma solidity ^0.8.19;

import "../contract/plonk_vk.sol";

contract Splitter {

    UltraVerifier public verifier;

    struct Round{
        bytes32 root;
        uint TotalFuel;
    }

    mapping(uint => Round) public round;
    uint private roundCounter;

    function LaunchTorpedo(uint _fuel, bytes32 _root) external payable {
        require(_fuel == msg.value);
        round[roundCounter] = Round({root:_root,TotalFuel: _fuel});
        roundCounter ++;
    }

    function claimFuel(bytes memory  _proof, bytes32[] memory publicInputs) external  {
        bool mission = verifier.verify(_proof,publicInputs);
        require(mission == true);
        

    }












    constructor() payable  {
        verifier= new UltraVerifier();
    }

    


    
}
