// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    int myfav;

    struct Person {
        string name;
        int fav;
    }

    Person[] public listOfPerson;

    mapping(string => int) public nametofav;

    function store(int _myfav) public {
        myfav = _myfav;
    }

    function retrieve() public view returns (int) {
        return myfav;
    }

    function addPerson(string memory _name, int _fav) public {
        listOfPerson.push(Person(_name, _fav));
        nametofav[_name] = _fav;
    }
}
