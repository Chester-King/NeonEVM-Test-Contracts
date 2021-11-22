pragma solidity 0.8.2;

contract SimpleImple{

    function retnum(uint256 _kp1,uint256 _kp2) public pure returns(uint256){
        uint256 _kp3=_kp1+_kp2;
        return(_kp3);
    }

}