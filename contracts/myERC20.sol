// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract MyERC20 is ERC20, AccessControl {

    address public admin;
    address public member;

    mapping(address => uint256) balances;
    
    constructor() ERC20("MyToken", "MTN") {
        //10^18 in es20
        _mint(msg.sender, 10000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(hasRole(bytes32(uint256(uint160(admin)) << 96), msg.sender));
        _mint(to, amount);
    }

    function burn(uint amount) external {
        require(hasRole(bytes32(uint256(uint160(admin)) << 96), msg.sender));
        _burn(msg.sender, amount);
    }

    function findBalance(address _tokenOwner) public view returns(uint256) {
        return balances[_tokenOwner];
    }

}











