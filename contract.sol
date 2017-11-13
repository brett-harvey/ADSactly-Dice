pragma solidity ^0.4.16;

contract BettingContract {

  function MakeBet() payable {
    msg.sender.transfer(DepositAddress);
  }

  function CollectWinnings() {

  }
}
