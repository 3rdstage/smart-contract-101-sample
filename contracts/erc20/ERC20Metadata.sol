// SPDX-License-Identifier: MIT
// https://eips.ethereum.org/EIPS/eip-20
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/GUIDELINES.md#style-guidelines
// https://docs.soliditylang.org/en/v0.8.17/style-guide.html#naming-conventions

pragma solidity ^0.8.0;

import "./IERC20Metadata.sol";

abstract contract ERC20Metadata is IERC20Metadata {

    string private _name;
    string private _symbol;
    uint8 private _decimals;

    constructor(string memory name_, string memory symbol_, uint8 decimals_){
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
    }

    function name() public view override returns (string memory){
        return _name;
    }

    function symbol() public view virtual override returns (string memory){
        return _symbol;
    }

    function decimals() public view virtual override returns (uint8){
        return _decimals;
    }
}