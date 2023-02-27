// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //^ meaning any version of 0.8 will work 

import './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage); 
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex]; // return simpleStorageArray[_simpleStorageIndex].retrieve()
        return simpleStorage.retrieve();
    }
}