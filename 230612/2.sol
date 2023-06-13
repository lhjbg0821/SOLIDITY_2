// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EVENT_EMIT {
    struct User {
        uint number;
        string name;
    }

    User[] Users;

    event newUser(uint _number, string _name);

    function setUser(uint _number, string memory _name) public {
        Users.push(User(_number, _name));
        emit newUser(_number, _name);
        emit userPath("New User");
    }

    function setUser2(uint _number, string memory _name) public {
        Users.push(User(_number, _name));
    }
}