const AppleShop = artifacts.require("ProductMarketplace");

module.exports = function(deployer){
    deployer.deploy(AppleShop);
};