// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Splitter.sol";
contract SplitterTest is Test {

    Splitter public splitter;

    function setUp() public {
        
     splitter = new Splitter();
     address distributer = makeAddr("distributor");
     vm.deal(distributer,10 ether);
     vm.prank(distributer);
     splitter.LaunchTorpedo{value: 8 ether}(8 ether,0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);

    }

    function testClaim() public {
        address payable _receipient ;
        splitter.LaunchTorpedo{value: 1 ether}(1 ether,0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);
        string memory proof = vm.readLine("./proofs/p.proof");
        bytes memory proof_in_bytes = vm.parseBytes(proof);
        bytes32[] memory publicInputs =  new bytes32[](2);
        publicInputs[0] = bytes32(0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);
        publicInputs[1] = bytes32(0x2fdc3f51f01ae83932eb9755616a3a37715aff17f15c31ae1f19ce5d2e6429d6);
        splitter.claimFuel(_receipient,0,proof_in_bytes,publicInputs);
        assertTrue(_receipient.balance == 1 ether);
    }
}
