const Purchase = artifacts.require("Puchase");

module.exports = function (deployer) {
    deployer.deploy(Purchase);
};
