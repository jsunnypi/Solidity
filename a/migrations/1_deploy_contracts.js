const AppleShop = artifacts.require("AppleShop")

module.exports = function(_deployer) {
    _deployer.deploy(AppleShop);
};
