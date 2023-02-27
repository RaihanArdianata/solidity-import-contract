// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //^ meaning any version of 0.8 will work 

import './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
}