const LowLev = artifacts.require("LowLev");
module.exports = async function(deployer) {
    const accounts = await web3.eth.getAccounts();

    await deployer.deploy(LowLev);
    var impl = await LowLev.deployed();
    
    await console.log(impl.address);
    
    await impl.returnNumber("3","8").then((response)=>{
        console.log(response.toString())
    })
    
};