pragma solidity 0.8.2;

contract Gasleft{


function test() public view returns (uint256 gasUsed)
{
    uint256 startGas = gasleft();

    gasUsed = startGas - gasleft();
}

}