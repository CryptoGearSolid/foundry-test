// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/MockPayable.sol";
import "forge-std/Script.sol";

contract MockPayableDeploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new MockPayable(true);

        vm.stopBroadcast();
    }
}
