// SPDX-License-Identifier: MIT

//  "MIT" license specifies that anyone can use this code for personal or commercial purposes
pragma solidity >=0.7.0 <0.9.0;


// Setting the compiler version for solidity --> will use the latest compiler version which is greater than 0.8.0.

contract HelloData{

    uint storedData = 5;
    string name = "Ashok  the blockchain";
    string node = "cambridge";

    function setStoredData(uint x) public {
        storedData = x;
    }

    function getStoredData() public view returns (uint) {
        return storedData;
    }

    //function getDesc() public view returns(string ,string){
        function getDesc() public view returns(string memory,string memory){
        return (name,node);
    }
    
}
        

 // Learning If we use just string we will get error 
 /*
 TypeError: Data location must be "memory" or "calldata" for return parameter in function, but none was given.
--> contracts/4_Hello.sol:23:44
*/
