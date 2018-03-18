pragma solidity ^0.4.0;

import "./SafeMath.sol";

contract oddeven {
    uint8 constant type_odd = 0;
    uint8 constant type_even = 1;

    using SafeMath for uint256;
    using SafeMath for uint8;

    uint8 odd_user = 0;
    uint8 even_user = 0;

    mapping(address => uint256) odd_bet;
    mapping(address => uint256) even_bet;

    function bet(uint256 amount, uint8 bet_type) public {
        if (bet_type == type_odd) {
            odd_bet[msg.sender].add(amount);
            odd_user.add(1);
        } else if (bet_type == type_even) {
            even_bet[msg.sender].add(amount);
            even_user.add(1);
        }
    }

    function startGame() public {
        require(odd_user != 0 && even_user != 0);

        uint8 random_number = uint8(block.blockhash(block.number-1)) % 2;
        if (random_number % 2 == 0) {
            // even win
        } else {
            // odd win
        }
    }
}
