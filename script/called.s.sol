// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/call.sol";

interface deployed {
    function callCalled() external;
}

contract callerDeployer is Script {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    address callerP = 0xD1d4441187E3BFA38798FAD442416D307cF7E337;

    function run() public {
        vm.broadcast(deployerPrivateKey);

        deployed(callerP).callCalled();
    }
}
