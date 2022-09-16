// SPDX-License-Identifier: MIT
// https://eips.ethereum.org/EIPS/eip-20
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/GUIDELINES.md#style-guidelines
// https://docs.soliditylang.org/en/v0.8.17/style-guide.html#naming-conventions
pragma solidity ^0.8.0;

import "./IERC20Base.sol";

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
abstract contract ERC20Base is IERC20Base {

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    uint256 private _totalSupply;
 
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) 
            public view virtual override returns (uint256) {
        return _balances[account];
    }

    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);
    }


    function transfer(address to, uint256 amount) 
            public virtual override returns (bool) {
        address owner = msg.sender;
        _transfer(owner, to, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) 
            public virtual override returns (bool) {
        address spender = msg.sender;

        uint256 currentAllowance = allowance(from, spender);
        require(currentAllowance >= amount, "ERC20: insufficient allowance");
        _allowances[from][spender] = currentAllowance - amount;
        emit Approval(from, spender, currentAllowance - amount);

        _transfer(from, to, amount);
        return true;
    }


    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = msg.sender;
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
        return true;
    }

    function allowance(address owner, address spender) 
            public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }


    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _totalSupply += amount;
        unchecked {
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);
    }
}