// 0xB95Ed387deEDbE747E75E2fe7C26656F765cb6E2
pragma solidity 0.8.2;

import "./SimpleStateUpdate.sol";
contract LowLev{

    function getState(address _sa) public view returns(uint256){
        return(SimpleStateUpdate(_sa).getState());
    }

    function updateState(uint256 _kp1,address _sa) public{
        (bool success, bytes memory result) = _sa.call(abi.encodeWithSignature("upState(uint256)", _kp1));
        if(!success){
            revert();
        }
    }

}