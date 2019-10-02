pragma solidity ^0.4.17;

contract Rating {
  mapping (bytes32 => uint8) public ratingsReceived;

  bytes32[] public movieList;

  function Rating(bytes32[] movieNames) public {
    movieList = movieNames;
  }

  function totalVotesFor(bytes32 movie) view public returns (uint8) {
    return ratingsReceived[movie];
  }

  function voteForMovie(bytes32 movie) public {
    ratingsReceived[movie] += 1;
  }
}