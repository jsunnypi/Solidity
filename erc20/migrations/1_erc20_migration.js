const erc20 = artifacts.require("erc20");

module.exports = function(deployer){
    const name = "JeongTae";
    const symbol = 'JT';
    const decimals = 18;
    const totalSupply = '10000000000000000000000000'
    deployer.deploy(erc20, name, symbol, decimals, totalSupply);
}