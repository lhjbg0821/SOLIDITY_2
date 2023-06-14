// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
숫자 n의 약수를 구하는 함수를 pure 함수로 만드시오.
ex) 8 => 1,2,4,8 / 15 => 1,3,5,15
/
*/
contract Q1 {
    // 약수........
    // 8을 넣으면 1~8 다 넣어서 나눴을때 나머지가 0...

    function getDivisor(uint _n) public pure returns(uint[] memory) {
        uint[] memory numArr;
        uint count=0;

        for (uint256 i = 1; i <= _n; i++) {
            if (_n % i == 0) {
                numArr[count] = i;
                count++;
            }
        }

        uint[] memory result = new uint[](count);
        for (uint256 i = 0; i <= count; i++) {
            result[i] = numArr[i];
        }
        
        return result;
    }
}

/*

/
 입력한 날짜의 Unix Time을 구하는 함수를 구현하시오.(1970년 1월 1일 기준)
 윤년은 포함하지 않습니다.
 uint[12] daysPerMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
 입력 날짜 형식은 uint 20230531 입니다.
*/

contract Q2 {
    // unixtime : 19700101부터 시간을 초로 환산한 시간..
    // 일단 날짜 받아서 연 월 일로 쪼개고 
    // 

    uint[12] Month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    function getUnixTime(uint _date) public view returns(uint) { 
        uint year = _date/10000;
        uint month = (_date%10000) / 100;
        uint day = _date%100;
        uint result = calUnixTime(year, month, day);


        return result;
    }

     function calUnixTime(uint _year, uint _month, uint _day) internal view returns (uint) {
        uint unixTime = 0;
        
        for (uint year = 1970; year < _year; year ++) {
            unixTime += 365 * 24 * 60 * 60;
        }
        
        for (uint month = 1; month < _month; month ++) {
            unixTime += Month[month - 1] * 24 * 60 * 60;
        }
        
        unixTime += (_day - 1) * 24 * 60 * 60;
        
        return unixTime;
    }
    

}