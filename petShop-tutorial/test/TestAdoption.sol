// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {

    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // Testing the adopt() funciton
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);
        uint expected = 8;
        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");      
    }

    // Testing retrieval of a single pet's owner
    function testGetAdopterAddressByPetId() public {
        //Expected owner is this contract
        address expected = address(this);
        address adopter = adoption.adopters(8);
        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
    }

    // Testing retrieval of all pet owners
    function testGetAdopterAddressByPetIdArray() public {
        // Expected owner is this contract
        address expected = address(this);
        // Store adopters in memory rather than contract's storage
        address[16] memory adopters = adoption.getAdopters();
        Assert.equal(adopters[8],expected,"Owner of pet ID 8 should be recorded.");
    }

    
}