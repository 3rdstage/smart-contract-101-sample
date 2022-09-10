// SPDX-License-Identifier: MIT
// https://eips.ethereum.org/EIPS/eip-20

pragma solidity ^0.8.0;

interface IERC20Base {

    /**
     * @dev MUST trigger when tokens are transferred, including zero value transfers
     */
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    /**
     * @dev MUST trigger on any successful call to `approve(address spender, uint256 value)`
     */
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    /**
     * @dev Returns the total token supply.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the account balance of another account
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Transfers `value` amount of tokens to address `to`, and MUST fire the `Transfer` event.
     */
    function transfer(address to, uint256 value) external returns (bool success);

    /**
     * @dev Transfers `value` amount of tokens from address `from` to address `to`, and MUST fire the `Transfer` event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool success);

    /**
     * @dev Allows `spender` to withdraw from your account multiple times, up to the `value` amount
     */
    function approve(address spender, uint256 value) external returns (bool success);

    /**
     * @dev Returns the amount which `spender` is still allowed to withdraw from `owner`.
     */
    function allowance(address owner, address spender) external view returns (uint256 remaining);


}