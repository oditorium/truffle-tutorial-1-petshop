pragma solidity ^0.4.17;

/**
 * @title Adoption
 * @dev Adopting one of 16 pets
 */

contract Adoption {

    // there are 16 pets to adopt
    address[16] public adopters;

    /**
    * @dev adopt a pet (public transaction)
    */
    function adopt(uint petId) public returns (uint) {
      require(petId >= 0 && petId <= 15); // check bounds
      adopters[petId] = msg.sender;       // remember the adopter
      return petId;                       // return the ID that was fed in
    }

    /**
    * @dev get all adopters (public view)
    */
    function getAdopters() public view returns (address[16]) {
      return adopters;
    }

}
