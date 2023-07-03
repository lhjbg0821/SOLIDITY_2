// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract B {
    struct a {
        uint a;
        string b;
        mapping(uint => string) c;
    }

    a public aa;

    function setAA(uint _a, string memory _b, uint _c1, string memory _c2) public {
        (aa.a, aa.b) = (_a, _b);
        aa.c[_c1] = _c2;
    }

    function getA(uint _c) public view returns(uint, string memory, string memory) {
        return (aa.a, aa.b, aa.c[_c]);
    }

    function deleteAA() public {
        delete aa;
    }

}

contract Bank {
    uint public a;
    bytes32 private b;
    bytes32 private b2;
    address owner;

    // function deposit() public payable {}

    // function withdraw(uint _b) public {
    //     require(_b == b);
    //     payable(msg.sender).transfer(address(this).balance);
    // }

    constructor(uint _pw) {
        owner = msg.sender;
        b = keccak256(abi.encodePacked(_pw));
        b2 = keccak256(abi.encodePacked(owner, _pw));
    }

    function deposit() public payable {}

    function setA(uint _a) public {
        a = _a;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function withdraw(uint _pw) public {
        bytes32 _b = keccak256(abi.encodePacked(_pw));
        require(b == _b, "nope");
        payable(msg.sender).transfer(address(this).balance);
    }

    function withdraw2(uint _pw) public {
        bytes32 _b2 = keccak256(abi.encodePacked(msg.sender, _pw));
        require(b2 == _b2);
        payable(msg.sender).transfer(address(this).balance);
    }
}


contract Thief {
    Bank b;
    constructor(address _a) {
        b = Bank(_a);
    }

    function getA() public view returns(uint) {
        return b.a();
    }

    function withdraw_Bank(uint _pw) public {
        b.withdraw(_pw);
    }

    receive() external payable{}


}