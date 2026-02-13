// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_11 {
   address public owner;


   constructor() {
       owner = msg.sender;
   }


   // Пример 5: Модификатор доступа и управление владельцем
   // onlyOwner — ограничивает вызов функции только владельцем
   modifier onlyOwner() {
       require(msg.sender == owner, "Not the contract owner");
       _;
   }
   function transferOwnership(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }
}
