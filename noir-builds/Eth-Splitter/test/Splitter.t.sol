// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Splitter.sol";
contract SplitterTest is Test {

    Splitter public splitter;

/// @notice setUp 
    function setUp() public {
     splitter = new Splitter();
     address distributer = makeAddr("distributor");
     vm.deal(distributer,10 ether);
     vm.prank(distributer);
     console.logString("Distributor distributes 8 ether to 8 recipients!!");
     splitter.LaunchTorpedo{value: 8 ether}(8 ether,0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8);
     console.logString("8 ether distributed successfully");
    }

/// @notice Test that claims ETH 
    function testClaim() public {
        address payable _recipient ; // Address that receives ETH 
        string memory proof = vm.readLine("./proofs/p.proof"); // Get proof from file 
        bytes memory proof_in_bytes = vm.parseBytes(proof); // convert proof to bytes
        bytes32[] memory publicInputs =  new bytes32[](2); // Instantiate  bytes32 memory array of length 2 
        publicInputs[0] = bytes32(0x10ab75288f0f92639577be3a15ee21d9a1fa41f236f0e88f3a61bda7c55ebae8); // merkle root 
        publicInputs[1] = bytes32(0x2fdc3f51f01ae83932eb9755616a3a37715aff17f15c31ae1f19ce5d2e6429d6); // unique nullifier
        console.logString("claiming fuel : 1 ether!!");
        splitter.claimFuel(_recipient,0,proof_in_bytes,publicInputs); // user calls claimFuel from a new address to remain anonymous
        console.logString("Successfully claimed!!");
        assertTrue(_recipient.balance == 1 ether);// receives 1 ether 
    }


/// @notice Test user cannot claim 2 times using same nullifier.
    function testDoubleClaim() public {
        testClaim();
        vm.expectRevert("Already Claimed!");
        testClaim();
    }
}
