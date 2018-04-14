pragma solidity ^0.4.17;

import "truffle/Assert.sol";                // various assertions
import "truffle/DeployedAddresses.sol";     // addresses of the clean-room contracts
import "../contracts/Adoptions.sol";        // the contract to be tested

/**
 * @title TestAdoption
 * @dev testing the Adoption contract
 */
contract TestAdoption {

    Adoption adoption = Adoption(DeployedAddresses.Adoption());
        // if `Adoption` is a deployed contract then
        // the clean-room address is `DeployedAddresses.Adoption()`

    /**
     * @dev testing the `adopt` function
     */
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);
        uint expected = 8;
        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");
    }

    /**
     * @dev Testing retrieval of a single pet's owner
     */
    function testGetAdopterAddressByPetId() public {
        address expected = this; // Expected owner is this contract
        address adopter = adoption.adopters(8);
      Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
    }

    /**
     * @dev Testing retrieval of all pet owners
     */

    function testGetAdopterAddressByPetIdInArray() public {
        address expected = this; // Expected owner is this contract
        address[16] memory adopters = adoption.getAdopters();
            // Store adopters in memory rather than contract's storage
        Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
    }
}
