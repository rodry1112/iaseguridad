% Dispositivos de hardware
dispositivo(hardware, computadora).
dispositivo(hardware, telefono).
dispositivo(hardware, televisor).

% Características de seguridad de los dispositivos
caracteristica(computadora, conexion_wifi, 'Si').
caracteristica(computadora, conexion_bluetooth, 'Si').
caracteristica(computadora, firewall, 'Activado').
caracteristica(computadora, antivirus, 'Instalado').

caracteristica(telefono, conexion_wifi, 'Si').
caracteristica(telefono, conexion_bluetooth, 'Si').
caracteristica(telefono, autenticacion_doble_factor, 'Si').
caracteristica(telefono, cifrado, 'Activado').

caracteristica(televisor, conexion_wifi, 'Si').
caracteristica(televisor, conexion_bluetooth, 'No').
caracteristica(televisor, smart_tv, 'Si').
caracteristica(televisor, actualizaciones_automaticas, 'Si').

% reglas :3
% Regla para obtener la lista de dispositivos por tipo
obtener_dispositivos(Tipo, Dispositivos) :-
    findall(Dispositivo, dispositivo(Tipo, Dispositivo), Dispositivos).

% Regla para obtener las características de un dispositivo
obtener_caracteristicas(Dispositivo, Caracteristicas) :-
    findall((Caracteristica, Valor), caracteristica(Dispositivo, Caracteristica, Valor), Caracteristicas).

% Regla para obtener una característica específica de un dispositivo
obtener_caracteristica(Dispositivo, Caracteristica, Valor) :-
    caracteristica(Dispositivo, Caracteristica, Valor).