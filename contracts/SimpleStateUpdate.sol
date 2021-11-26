pragma solidity 0.8.2;

contract SimpleStateUpdate{

    uint256 public st;

    function upState(uint256 _st) public {
        st+=_st;
    }
    
    function getState() public view returns(uint256){
        return(st);
    }

}