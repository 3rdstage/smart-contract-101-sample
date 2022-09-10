// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20Base.sol";
import "./ERC20Metadata.sol";

contract RegularERC20 is ERC20Base, ERC20Metadata {

    constructor(string memory name, string memory symbol) ERC20Metadata(name, symbol, 18){

    }

}
