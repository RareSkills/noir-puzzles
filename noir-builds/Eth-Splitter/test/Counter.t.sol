// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Splitter.sol";
contract CounterTest is Test {

   
Splitter public splitter;
    function setUp() public {
     splitter = new Splitter();

    }

    function testClaim() public {
        splitter.LaunchTorpedo{value: 1 ether}(1 ether,0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);
        string memory proof = vm.readLine("./proofs/p.proof");
        bytes memory proof_in_bytes = vm.parseBytes(proof);
        bytes32[] memory publicInputs =  new bytes32[](4);
        publicInputs[0] = bytes32(0x0000000000000000000000001b37B1EC6B7faaCbB9AddCCA4043824F36Fb88D8);
        publicInputs[1] = bytes32(0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);
        publicInputs[2] = bytes32(0x2fdc3f51f01ae83932eb9755616a3a37715aff17f15c31ae1f19ce5d2e6429d6);
        publicInputs[3] = bytes32(0x0000000000000000000000001b37B1EC6B7faaCbB9AddCCA4043824F36Fb88D8);
        splitter.claimFuel(proof_in_bytes,publicInputs);
    }
}
