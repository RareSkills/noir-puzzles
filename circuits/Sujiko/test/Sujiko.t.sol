// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../circuits/contract/plonk_vk.sol";

contract Noir is Test {
  UltraVerifier public ultraverifier;

    bytes32[] public correct_input = new bytes32[](4);
    bytes32[] public wrong_input = new bytes32[](4);
    function setUp() public {
        ultraverifier = new UltraVerifier();
        correct_input[0] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000014);
        correct_input[1] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000016);
        correct_input[2] = bytes32(0x000000000000000000000000000000000000000000000000000000000000000e);
        correct_input[3] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000014);

        wrong_input[0] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000014);
        wrong_input[1] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000016);
        wrong_input[2] = bytes32(0x000000000000000000000000000000000000000000000000000000000000000e);
        wrong_input[3] = bytes32(0x0000000000000000000000000000000000000000000000000000000000000014);
    }

    function test_correct_solution() public {
        string memory proof = vm.readLine("./circuits/proofs/p.proof");
        bytes memory proof_in_bytes = vm.parseBytes(proof);
        ultraverifier.verify(proof_in_bytes,correct_input);
    }

    function test_wrong_solution() public {
        vm.expectRevert();
        string memory proof = vm.readLine("./circuits/proofs/p.proof");
        bytes memory proof_in_bytes = vm.parseBytes(proof);
        ultraverifier.verify(proof_in_bytes,wrong_input);
    }

}
