// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ExampleUsage {
    // 1. Исправлено: проверка, что значение не равно нулю
    function assertExample(uint256 _value) public pure {
        assert(_value != 0);
    }

    // 2. Исправлено: revert при ложном условии с сообщением
    function revertExample(bool _condition) public pure {
        if (!_condition) {
            revert("Invalid condition");
        }
    }

    // 3. Исправлено: добавлена ветка else с возвратом нужной строки
    function ifElseExample(uint256 _value) public pure returns (string memory) {
        if (_value > 10) {
            return "Value is greater than 10";
        } else {
            return "Value is 10 or less";
        }
    }

    // 4. Исправлено: заменено присваивание (=) на сравнение (==)
    function elseIfExample(uint256 _value) public pure returns (string memory) {
        if (_value > 10) {
            return "Value is greater than 10";
        } else if (_value == 10) {
            return "Value is exactly 10";
        } else {
            return "Value is less than 10";
        }
    }

    // 5. Исправлено: переписано с тернарного оператора на if-else
    function ternaryExample(uint256 _value) public pure returns (string memory) {
        if (_value > 10) {
            return "Value is greater than 10";
        } else {
            return "Value is 10 or less";
        }
    }
}