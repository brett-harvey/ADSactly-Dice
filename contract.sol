pragma solidity ^0.4.16;

contract BettingContract {

  struct DiceRoll {
    address roller;
    uint index;
    uint guess;
    uint range;
    uint roll;
    uint amountBet;
    bool multiplier;
    bool BetWon;
  }

  mapping (address => mapping (uint => uint) public multiplier
  mapping (address => DiceRoll) GetMyDiceRoll;
  mapping (address => mapping (uint => uint) NumberOfRolls;

  function DiceRolled(uint _guess, uint _range, uint _roll, bool _multiplier) payable {
    DiceRoll NewRoll;
    NewRoll.roller = msg.sender;
    NewRoll.index = NumberOfRolls;
    NewRoll.guess = _guess;
    NewRoll.range = _range;
    NewRoll.roll = _roll;
    NewRoll.amountBet = msg.value;
    NewRoll.multiplier = _multiplier;

    if (_guess == _roll) NewRoll.BetWon = true;
    else NewRoll.BetWon = false;

    GetMyDiceRoll[msg.sender][NewRoll.index];

    NumberOfRolls[msg.sender]++;
  }

  function BuyMultiplier() payable {
    for (uint i = 0; i < 3; i++) {
      multiplier[msg.sender][i]++;
    }
  }

  function GetMyRollHistoryGuess(uint i) public constant returns (uint) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.guess;
  }

  function GetMyRollHistoryRange(uint i) public constant returns (uint) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.range;
  }

  function GetMyRollHistoryRoll(uint i) public constant returns (uint) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.roll;
  }

  function GetMyRollHistoryAmountBet(uint i) public constant returns (uint) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.amountBet;
  }

  function GetMyRollHistoryMultiplier(uint i) public constant returns (bool) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.multiplier;
  }

  function GetMyRollHistoryResult(uint i) public constant returns (bool) {
    DiceRoll GetMyDiceRoll[msg.sender][i];
    return DiceRoll.BetWon;
  }
}
