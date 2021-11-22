// 0xB95Ed387deEDbE747E75E2fe7C26656F765cb6E2
pragma solidity 0.8.2;

contract LowLev{

    function returnNumber(uint256 _kp1,uint256 _kp2) public returns(uint256){
        address addr = 0xB95Ed387deEDbE747E75E2fe7C26656F765cb6E2;
        (bool success, bytes memory result) = addr.call(abi.encodeWithSignature("retnum(uint256,uint256)", _kp1, _kp2));
        (uint _kp3) = abi.decode(result, (uint));
        return(_kp3);
    }

}