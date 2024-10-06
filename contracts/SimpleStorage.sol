//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint public storagedData;

    struct identity {
        string name;
        uint age;
    }

    identity[] public peoplesList;

    mapping (string => uint)  public identityMappings;

    function setStoragedData(uint _storagedData) public  {
        storagedData = _storagedData;
    }

    function addIdentitiy(string memory _name,uint256 _age) public{
        peoplesList.push(identity(_name, _age));
        identityMappings[_name] = _age;
    }
}