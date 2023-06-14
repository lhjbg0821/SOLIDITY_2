// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Q1 {
    function equal(string memory _a, string memory _b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked(_a)) == keccak256(abi.encodePacked(_b)));
    }

    function compare(string memory _word) public view returns(uint) {
        if(equal(_word, "hello")) {
            return 1;
        } else if (equal(_word, "hi")) {
            return 2;
        } else if (equal(_word, "move")) {
            return 3;
        } else {
            return 4;
        }
    }
}

/*
10보다 작은 한개의 input값을 받아서 그숫자의 구구단을 반환해주는 함수를 만들어주세요
3일경우 => 3X1=3,  3X2=6 .... 3X9=27
8일경우 => 8X1=8,  8X2=16 .... 8X9=72

힌트 - openzeppelin
*/

contract Q2{ // .......??..?
    function multiplicationTable(uint _n) public returns(string memory) {
        string memory table = "";
        
        for (uint i = 1; i <= 9; i++) {
            uint result = number * i;
            string memory row = string(abi.encodePacked(_n, " x ", i, " = ", result, "\n"));
            table = string(abi.encodePacked(table, row));
        }
        
        return table;
    }
}

