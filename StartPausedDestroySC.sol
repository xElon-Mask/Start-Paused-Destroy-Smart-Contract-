// SPDX-License-Identifier: Open GPL-3.0

pragma solidity 0.8.13;


contract Owner {

    address owner;
    bool paused;
    uint nombre;


    constructor() {
        owner = msg.sender;
    }

    function activatePaused(bool _paused) public {
        require(msg.sender == owner, "Vous n'avez pas les droits d'acces sur ce contrat");
        paused = _paused;
    }

    function setNombre(uint _nombre) public {
        require(!paused, "Le contrat est en pause");
        require(msg.sender == owner, "Vous n'avez pas les droits d'acces sur ce contrat");
        nombre = _nombre;
    }

    function getNombre() public view returns(uint) {
        require(!paused, "Le contrat est en pause");
        return nombre;
    }
}