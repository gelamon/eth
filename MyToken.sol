// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
        string public name = "Angela";
        string public abbrv = "Gela";
        uint public totalSupply = 0;

    // mapping variable here
        mapping(address => uint) public balance;

    // mint function
        function mint (address _add, uint _val) public {
        totalSupply += _val;
        balance[_add] += _val;
    }

    // burn function
        function burn (address _add, uint _val) public {
        if(balance[_add] >= _val) {
            totalSupply -= _val;
            balance[_add] -= _val;
        }
    }
}
