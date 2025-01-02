// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarReservation{

    struct Car{
        uint id;
        string name;
        bool isReserved; // false
        address reservedBy;
    }

    mapping (uint => Car) public cars;
    
    uint public carsCount;

    constructor(){
        addCar("Sonata");
        addCar("Ray");
        addCar("BMW5s");
        addCar("Granduer");
        addCar("BMW5s");
        addCar("Granduer");
    }


    function addCar(string memory name) private {
        carsCount++;
        cars[carsCount] = Car(carsCount, name, false, address(0));
    }

    function reserveCar(uint carId) public {
        require(carId > 0 && carId <= carsCount, "Invalid car ID");
        require(!cars[carId].isReserved, "Car is already reserved");
        
        cars[carId].isReserved = true;
        cars[carId].reservedBy = msg.sender;
    }

    function getCar(uint carId) public view returns (string memory, bool, address) {
        Car memory car = cars[carId];
        return(car.name, car.isReserved, car.reservedBy);
    }


}