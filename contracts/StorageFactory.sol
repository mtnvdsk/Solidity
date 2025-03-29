// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simpleStoragea;
    function createSimpleStorageContract() public{
       SimpleStorage simpleStorage = new SimpleStorage();
       simpleStoragea.push(simpleStorage);
    }
    function sfstore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public{
        SimpleStorage simpleStorage=simpleStoragea[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }
    function sfget(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage=simpleStoragea[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}