const GasLeft = artifacts.require("Gasleft");
module.exports = async function(deployer) {
    const accounts = await web3.eth.getAccounts();

    await deployer.deploy(GasLeft);
    var impl = await GasLeft.deployed();
    
    await console.log(impl.address);
    
    await impl.test().then((response)=>{
        console.log(response.toString())
    })
    
};