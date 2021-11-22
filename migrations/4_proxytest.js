const SimpleImple = artifacts.require("SimpleImple");
const SimpleFac = artifacts.require("SimpleFac");

module.exports = async function(deployer) {
    const accounts = await web3.eth.getAccounts();

    await deployer.deploy(SimpleImple);
    var impl = await SimpleImple.deployed();
    
    await console.log(impl.address);
    
    await impl.retnum("3","8").then((response)=>{
        console.log(response.toString())
    })
    
    
    await deployer.deploy(SimpleFac);
    var fac = await SimpleFac.deployed();
    
    await fac.deployNewCon(impl.address);
    
    
    await fac.retsum("1","3","8").then((response)=>{
        console.log(response.toString())
    })
    
};