// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/callChallenge.sol";

interface DepCon {
    function exploitMe() external;
}

contract callerDeployer is Script {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    address depContract = 0x15ADC668CE0Ece42616F395C3841B0c580b6a603;

    function run() public {
        vm.broadcast(deployerPrivateKey);

        DepCon(depContract).exploitMe();
    }
}
