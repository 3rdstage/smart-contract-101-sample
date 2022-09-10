// SPDX-License-Identifier: MIT
// https://eips.ethereum.org/EIPS/eip-20

pragma solidity ^0.8.0;

interface IERC20Metadata {

    /**
     * @dev Returns the name of the token - e.g. "MyToken".
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token. E.g. “HIX”.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the number of decimals the token uses - e.g. `8`, means to divide the token amount by `100000000` to get its user representation.
     */
    function decimals() external view returns (uint8);

}
