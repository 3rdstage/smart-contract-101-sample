// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20Base.sol";
import "./ERC20Metadata.sol";

contract RegularERC20 is ERC20Base, ERC20Metadata {

    address private _admin;

    constructor(string memory name, string memory symbol) ERC20Metadata(name, symbol, 18){
        _admin = msg.sender;
    }

    function mint(address account, uint256 amount) public virtual{
        require(msg.sender == _admin, "RegularERC20: Must be an admin to mint.");
        _mint(account, amount);
    }

    function mint(address[10] memory accounts, uint256[10] memory amounts) public virtual{
        require(msg.sender == _admin, "RegularERC20: Must be an admin to mint.");
        for(uint256 i = 0; i < 10; i++){ _mint(accounts[i], amounts[i]); }       
    }

    function admin() public view returns (address){
        return _admin;
    }
}
