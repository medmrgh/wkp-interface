// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.8.0. SEE SOURCE BELOW. !!
pragma solidity >=0.7.0 <0.9.0;

interface dice {
  error InvalidMultiplier(uint256 max, uint256 min, uint256 multiplier);
  error InvalidNumBets(uint256 maxNumBets);
  event BankrollChanged(address indexed newBankroll);
  event BankrollInit(address indexed bankRoll);
  event Claim(address, address, uint256, uint256[], uint256);
  event Claimed(
    address indexed playerAddress,
    address tokenAddress,
    uint256 indexed reqId,
    uint256 wager,
    uint256 payout
  );
  event DiceRoll(
    address owner,
    address tokenAddress,
    uint256 wager,
    uint32 multiplier,
    uint32 numBets,
    bool isOver,
    uint256 requestID
  );
  event Initialized(uint8 version);
  event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
  );
  event Paused(address account);
  event Unpaused(address account);

  function bankRoll() external view returns (address);

  function changeBankroll(address _newBankroll) external;

  function currentReqIds(address) external view returns (uint256);

  function init(address _bankRoll) external;

  function kellyWager(
    address tokenAddress,
    uint256 multiplier
  ) external view returns (uint256);

  function minTokenWagers(address) external view returns (uint256);

  function owner() external view returns (address);

  function pause() external;

  function paused() external view returns (bool);

  function payReward(uint256 reqId, uint256 result) external;

  function renounceOwnership() external;

  function roll(
    address from,
    uint256 wager,
    address tokenAddress,
    uint32 multiplier,
    bool isOver,
    uint32 numBets
  ) external payable;

  function rolls(
    uint256
  )
    external
    view
    returns (
      uint256 wager,
      address tokenAddress,
      address from,
      uint32 multiplier,
      uint32 numBets,
      bool isOver,
      uint256 reqId
    );

  function setMinimumWager(
    address[] memory tokens,
    uint256[] memory _minWagers
  ) external;

  function setRngData(address _rng, uint256 _pId) external;

  function transferOwnership(address newOwner) external;

  function unPause() external;
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"inputs":[{"internalType":"uint256","name":"max","type":"uint256"},{"internalType":"uint256","name":"min","type":"uint256"},{"internalType":"uint256","name":"multiplier","type":"uint256"}],"name":"InvalidMultiplier","type":"error"},{"inputs":[{"internalType":"uint256","name":"maxNumBets","type":"uint256"}],"name":"InvalidNumBets","type":"error"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"newBankroll","type":"address"}],"name":"BankrollChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"bankRoll","type":"address"}],"name":"BankrollInit","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"","type":"address"},{"indexed":false,"internalType":"address","name":"","type":"address"},{"indexed":false,"internalType":"uint256","name":"","type":"uint256"},{"indexed":false,"internalType":"uint256[]","name":"","type":"uint256[]"},{"indexed":false,"internalType":"uint256","name":"","type":"uint256"}],"name":"Claim","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"playerAddress","type":"address"},{"indexed":false,"internalType":"address","name":"tokenAddress","type":"address"},{"indexed":true,"internalType":"uint256","name":"reqId","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"wager","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"payout","type":"uint256"}],"name":"Claimed","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"owner","type":"address"},{"indexed":false,"internalType":"address","name":"tokenAddress","type":"address"},{"indexed":false,"internalType":"uint256","name":"wager","type":"uint256"},{"indexed":false,"internalType":"uint32","name":"multiplier","type":"uint32"},{"indexed":false,"internalType":"uint32","name":"numBets","type":"uint32"},{"indexed":false,"internalType":"bool","name":"isOver","type":"bool"},{"indexed":false,"internalType":"uint256","name":"requestID","type":"uint256"}],"name":"DiceRoll","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint8","name":"version","type":"uint8"}],"name":"Initialized","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"previousOwner","type":"address"},{"indexed":true,"internalType":"address","name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Paused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Unpaused","type":"event"},{"inputs":[],"name":"bankRoll","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_newBankroll","type":"address"}],"name":"changeBankroll","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"currentReqIds","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_bankRoll","type":"address"}],"name":"init","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"tokenAddress","type":"address"},{"internalType":"uint256","name":"multiplier","type":"uint256"}],"name":"kellyWager","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"minTokenWagers","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"paused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"reqId","type":"uint256"},{"internalType":"uint256","name":"result","type":"uint256"}],"name":"payReward","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"renounceOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"from","type":"address"},{"internalType":"uint256","name":"wager","type":"uint256"},{"internalType":"address","name":"tokenAddress","type":"address"},{"internalType":"uint32","name":"multiplier","type":"uint32"},{"internalType":"bool","name":"isOver","type":"bool"},{"internalType":"uint32","name":"numBets","type":"uint32"}],"name":"roll","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"rolls","outputs":[{"internalType":"uint256","name":"wager","type":"uint256"},{"internalType":"address","name":"tokenAddress","type":"address"},{"internalType":"address","name":"from","type":"address"},{"internalType":"uint32","name":"multiplier","type":"uint32"},{"internalType":"uint32","name":"numBets","type":"uint32"},{"internalType":"bool","name":"isOver","type":"bool"},{"internalType":"uint256","name":"reqId","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address[]","name":"tokens","type":"address[]"},{"internalType":"uint256[]","name":"_minWagers","type":"uint256[]"}],"name":"setMinimumWager","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_rng","type":"address"},{"internalType":"uint256","name":"_pId","type":"uint256"}],"name":"setRngData","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"unPause","outputs":[],"stateMutability":"nonpayable","type":"function"}]
*/
