// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract A {
    function getMSGSender() public view returns(address) {
        return msg.sender;
    }
}

contract B {
    A a = new A();

    function getMSG() public view virtual returns(address) {
        return a.getMSGSender();
    }
}

contract D2 {
    // B b = new B();
    B b;
    constructor(address _b) {
        b = B(_b);
    }

    function getMSG() public view returns(address) {
        return b.getMSG();
    }
}

contract D is B {
    function getMSG() public view override returns(address) {
        return a.getMSGSender();
    }
}