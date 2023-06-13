// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EVENT_EMIT2 {
    event ADD(string add, uint result);
    event SUB(string sub, uint result);
    event MUL(string mul, uint result);
    event DIV(string div, uint result);

    function add (uint _a, uint _b) public returns(uint _c) {
        _c = _a + _b;
        emit ADD("Plus", _c);
    }

    function sub (uint _a, uint _b) public returns(uint _c) {
        _c = _a - _b;
        emit ADD("Minus", _c);
    }

    function mul (uint _a, uint _b) public returns(uint _c) {
        _c = _a * _b;
        emit ADD("Times", _c);
    }

    function div (uint _a, uint _b) public returns(uint _c) {
        _c = _a / _b;
        emit ADD("Divided", _c);
    }

}