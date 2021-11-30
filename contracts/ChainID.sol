pragma solidity 0.8.2;

contract ChainID{
    function getChainId() public view returns (uint256) {
  uint256 chainId;
  assembly {
    chainId := chainid()
  }
  return chainId;
}

}