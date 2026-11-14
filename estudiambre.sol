// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Estudiambre {

    struct Servicio {
        address payable prestador;
        string titulo;
        uint256 precio;
        bool activo;
    }

    uint256 public contadorServicios;
    mapping(uint256 => Servicio) public servicios;

    function publicarServicio(string memory _titulo, uint256 _precio) public {
        require(_precio > 0, "El precio debe ser mayor a cero");

        servicios[contadorServicios] = Servicio({
            prestador: payable(msg.sender),
            titulo: _titulo,
            precio: _precio,
            activo: true
        });

        contadorServicios++;
    }

    function contratarServicio(uint256 _idServicio) public payable {
        Servicio storage serv = servicios[_idServicio];

        require(serv.activo, "Este servicio ya no esta activo");
        require(msg.value == serv.precio, "Debes enviar el precio exacto");
        require(msg.sender != serv.prestador, "No puedes contratar tu propio servicio");

        serv.prestador.transfer(msg.value);
        serv.activo = false;
    }
}