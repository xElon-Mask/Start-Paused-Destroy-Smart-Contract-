// SPDX-License-Identifier: Open GPL-3.0

pragma solidity 0.8.13;


contract Owner {

    address owner;
    uint nombre;


    constructor() {
        owner = msg.sender;
    }

    function setNombre(uint _nombre) public {
        require(msg.sender == owner, "Vous n'avez pas les droits d'acces sur ce contrat");
        nombre = _nombre;
    }
}