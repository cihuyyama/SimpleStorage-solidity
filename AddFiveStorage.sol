// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        myfav = _favoriteNumber + 5;
    }
}
