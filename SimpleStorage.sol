// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myfav;

    struct Person {
        string name;
        uint256 fav;
    }

    Person[] public listOfPerson;

    mapping(string => uint256) public nametofav;

    function store(uint256 _myfav) public virtual  {
        myfav = _myfav;
    }

    function retrieve() public view returns (uint256) {
        return myfav;
    }

    function addPerson(string memory _name, uint256 _fav) public {
        listOfPerson.push(Person(_name, _fav));
        nametofav[_name] = _fav;
    }
}
