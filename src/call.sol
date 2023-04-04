// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract caller {
    address public called = 0x747Db1AFa235844b3A2384840194A96a613D102f;

    function callCalled() public returns (bool, bytes memory) {
        (bool success, bytes memory data) = called.call(
            abi.encodeWithSignature("exploit_me(string)", "Okolo Uche")
        );

        return (success, data);
    }
}
