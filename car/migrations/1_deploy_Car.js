const CarReservation = artifacts.require("CarReservation");

module.exports = function(deployer){
    deployer.deploy(CarReservation);
}