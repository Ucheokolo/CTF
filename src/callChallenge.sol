// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Challenge {
    function exploit_me(string memory) external;

    function lock_me() external;
}

contract CallDeployed {
    address public deployedContract =
        0x43f165eA17a8AB50a1e81b3451AC8b5156C1065e;

    function exploitMe() public {
        Challenge(deployedContract).exploit_me("Okolo Uche");
    }

    fallback() external {
        Challenge(deployedContract).lock_me();
    }
}
