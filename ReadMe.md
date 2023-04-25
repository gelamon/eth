# My Token

The primary goal of this solidity program is to construct a token contract that allows users to mint and burn tokens. Furthermore, the application provides for the tracking of balances connected with certain addresses and includes conditional statements to guarantee that certain actions are carried out only when viable.

## Description

This program is a simple contract that uses a mapping data structure to keep track of the number of tokens owned by a specific address. The software has two functions: one for creating tokens and another for removing them. Overall, this program acts as a practical simulation, displaying the processes of minting and burning tokens.

## Getting Started

### Executing program

To execute this program, you may use Remix, an online Solidity IDE; to get started, go visit https://remix.ethereum.org/.

Once on the Remix website, create a new file by clicking the "+" symbol in the left-hand sidebar. Save the file as myToken.sol. Copy and paste the following code into the file:

```solidity
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
```

Click on the "Solidity Compiler" tab in the left-hand sidebar to compile the code. Make sure the "Compiler" option is selected to "0.8.18" (or any suitable version), then click the "Compile myToken.sol" button.

Click the "Deploy and Run Transactions" button to deploy the contract. This will launch a new window where you may deploy the contract. Before launching, be sure you choose the "MyToken" contract.

Set the parameters for the balance, mint, and burn functions in the "Deployed Contracts" deployment window.
  *To mint new tokens, enter the recipient's address and the quantity of tokens you wish to mint, then click transact. 
  *To burn tokens, enter the recipient's address and the quantity of tokens you wish to burn, then click transact.
  *To view the address's current balances, enter the recipient's address and click call. By clicking the "totalSupply" button, you can also see the total supply.


## Authors

Contributors names and contact info

NTCIAN Angela Morta
[Discord: @angelaaa#0676](https://discordapp.com/users/angelaaa#0676)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
