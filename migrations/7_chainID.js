const ChainID = artifacts.require("ChainID");
module.exports = async function(deployer) {
    const accounts = await web3.eth.getAccounts();

    await deployer.deploy(ChainID);
    var impl = await ChainID.deployed();
    
    await console.log(impl.address);
    
    await impl.getChainId().then((response)=>{
        console.log(response.toString())
    })
    
};