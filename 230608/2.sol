// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract A {
    function getAB(uint _a, uint) public virtual pure returns(uint) {
        /*
         중요한 식 
        */
        return _a;
    }
}

contract B is A {
    function getAB(uint _a, uint _b)  public override pure returns(uint) {
        // _a와 _b의 대소비교 
        /*
         중요한 식 
        */
        return _b;
    }
}

contract C {
    function getAB() public pure returns(uint a, uint b) {
        a = 1;
        b = 2;
    }

    function getString(string memory _a) public pure returns(string memory) {
        string memory _b = "abc";
        string memory c = string.concat(_a, _b);
        return c;
    }

    function getString2(string memory _a) public pure returns(string memory c) {
        string memory _b = "abc";
        c = string.concat(_a, _b);
    }
}