pragma solidity 0.8.2;

import "./SimpleImple.sol";
contract SimpleFac{

    uint256 ind = 0;

    mapping(uint256=>address) uad;

    function deployNewCon(address _target) public{
        ind+=1;
        uad[ind] = createClone(_target);
    }

    function retmdata(uint256 _nmb) public view returns(address) {
        return(uad[_nmb]);
    }
    
    function retsum(uint256 _nmb,uint256 _el1,uint256 _el2) public view returns(uint256) {
        return(SimpleImple(uad[_nmb]).retnum(_el1,_el2));
    }

    function createClone(address target) internal returns (address result) {
        bytes20 targetBytes = bytes20(target);
        assembly {
          let clone := mload(0x40)
          mstore(clone, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
          mstore(add(clone, 0x14), targetBytes)
          mstore(add(clone, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
          result := create(0, clone, 0x37)
        }
    }

}