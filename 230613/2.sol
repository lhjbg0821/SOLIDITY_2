// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract A { 
    function a() public view returns(address) {
        return msg.sender;
    }

    function b() public view returns(address) {
        return address(this);
    }

    function c() public view returns(address) {
        return tx.origin;   
    }
}

contract B {
    A C_a;
    constructor(address _c) {
        C_a = A(_c);
    }

    function a() public view returns(address) {
        return C_a.a();
    }

    function b() public view returns(address) {
        return C_a.b();
    }

    function c() public view returns(address) {
        return C_a.c();
    }
}