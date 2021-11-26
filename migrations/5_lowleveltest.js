const LowLev = artifacts.require("LowLev");
const SimpleStateUpdate = artifacts.require("SimpleStateUpdate");
module.exports = async function(deployer) {
    const accounts = await web3.eth.getAccounts();

    await deployer.deploy(LowLev);
    var impl = await LowLev.deployed();
    await deployer.deploy(SimpleStateUpdate);
    var sstate = await SimpleStateUpdate.deployed();
    
    await console.log(impl.address);
    
    await impl.getState(sstate.address).then((response)=>{
        console.log(response.toString())
    })

    await impl.updateState("4",sstate.address);
    await impl.getState(sstate.address).then((response)=>{
        console.log(response.toString())
    })
    
};