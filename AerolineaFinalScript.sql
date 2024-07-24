-- Insertando datos a AerolineaFinal
use AerolineaFinal;
# Primero los que no tiene llave foranea #
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`administradores`
-- -----------------------------------------------------
insert into administradores values (1,'Fabricio','Becerra',201912638,'Pass123');
insert into administradores values(2,'Fabricio ','Becerra','201912638','Pass123');
insert into administradores values(3,'Edilson ','Galindo ','202112482','Pass123');
insert into administradores values(4,'Nicolas ','Villena ','202110343','Pass123');
insert into administradores values(5,'Admin ','Admin ','1','1');
select * from administradores;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`compañia`
-- -----------------------------------------------------
insert into compañia values(1,'AeroPeru','Av.La Marina 2000 Tienda 236-A 2do piso',2138200,'aeroperu@gmail.com');
select * from compañia;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`origen`
-- -----------------------------------------------------
insert into  origen values(1,'Aeropuerto de Chachapoyas','Chachapoyas',' AMAZONAS');
insert into  origen values(2,'Aeropuerto Comandante Germán Arias Graziani','Huaraz','ÁNCASH');
insert into  origen values(3,'Aeropuerto de Andahuaylas','Andahuaylas',' APURIMAC');
insert into  origen values(4,'Aeropuerto Internacional Rodríguez Ballón','Arequipa',' AREQUIPA');
insert into  origen values(5,'Aeropuerto Coronel Alfredo Mendivil Duarte','Ayacucho',' AYACUCHO');
insert into  origen values(6,'Aeropuerto General Armando Revoredo Iglesias','Cajamarca',' CAJAMARCA');
insert into  origen values(7,'Aeropuerto Internacional Jorge Chávez','Callao',' CALLAO');
insert into  origen values(8,'Aeropuerto Internacional Alejandro Velasco','Cusco',' CUZCO');
insert into  origen values(9,'Aeropuerto Alf. FAP David Figueroa Fernandini','Huánuco',' HUANUCO');
insert into  origen values(10,'Aeropuerto Capitán FAP Renán Elias Olivera','Ica',' ICA');
insert into  origen values(11,'Aeropuerto Capitán FAP Renán Elias Olivera','Jauja',' JUNIN');
insert into  origen values(12,'Aeropuerto Capitán Carlos Martínez  Pinillos','Trujillo',' LA LIBERTAD');
insert into  origen values(13,'Aeropuerto Capitán José A. Quiñones','Chiclayo',' LAMBAYEQUE');
insert into  origen values(14,'Aeropuerto  Coronel Francisco Secada Vignetta','Iquitos',' LORETO');
insert into  origen values(15,'Aeropuerto Internacional de Puerto Maldonado','Puerto Maldonado',' MADRE DE DIOS');
insert into  origen values(16,'Aeropuerto de Ilo','Ilo',' MOQUEGUA');
insert into  origen values(17,'Aeropuerto Capitán Guillermo Concha Iberico','Piura',' PIURA');
insert into  origen values(18,'Aeropuerto Internacional Inca Manco Cápac','Juliaca',' PUNO');
insert into  origen values(19,'Aeropuerto Cadete Guillermo Castillo Paredes','Tarapoto','SAN MARTIN');
insert into  origen values(20,'Aeropuerto Coronel Carlos Ciriani Santa Rosa','Tacna','TACNA');
insert into  origen values(21,'Aeropuerto Capitán FAP Pedro Canga Rodríguez','Tumbes','TUMBES');
insert into  origen values(22,'Aeropuerto Capitán FAP David Abensur Rengifo','Pucallpa','UCAYALI');
select * from origen;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`destino`
-- -----------------------------------------------------
insert into  destino values(1,'Aeropuerto de Chachapoyas','Chachapoyas',' AMAZONAS');
insert into  destino values(2,'Aeropuerto Comandante Germán Arias Graziani','Huaraz','ÁNCASH');
insert into  destino values(3,'Aeropuerto de Andahuaylas','Andahuaylas',' APURIMAC');
insert into  destino values(4,'Aeropuerto Internacional Rodríguez Ballón','Arequipa',' AREQUIPA');
insert into  destino values(5,'Aeropuerto Coronel Alfredo Mendivil Duarte','Ayacucho',' AYACUCHO');
insert into  destino values(6,'Aeropuerto General Armando Revoredo Iglesias','Cajamarca',' CAJAMARCA');
insert into  destino values(7,'Aeropuerto Internacional Jorge Chávez','Callao',' CALLAO');
insert into  destino values(8,'Aeropuerto Internacional Alejandro Velasco','Cusco',' CUZCO');
insert into  destino values(9,'Aeropuerto Alf. FAP David Figueroa Fernandini','Huánuco',' HUANUCO');
insert into  destino values(10,'Aeropuerto Capitán FAP Renán Elias Olivera','Ica',' ICA');
insert into  destino values(11,'Aeropuerto Capitán FAP Renán Elias Olivera','Jauja',' JUNIN');
insert into  destino values(12,'Aeropuerto Capitán Carlos Martínez  Pinillos','Trujillo',' LA LIBERTAD');
insert into  destino values(13,'Aeropuerto Capitán José A. Quiñones','Chiclayo',' LAMBAYEQUE');
insert into  destino values(14,'Aeropuerto  Coronel Francisco Secada Vignetta','Iquitos',' LORETO');
insert into  destino values(15,'Aeropuerto Internacional de Puerto Maldonado','Puerto Maldonado',' MADRE DE DIOS');
insert into  destino values(16,'Aeropuerto de Ilo','Ilo',' MOQUEGUA');
insert into  destino values(17,'Aeropuerto Capitán Guillermo Concha Iberico','Piura',' PIURA');
insert into  destino values(18,'Aeropuerto Internacional Inca Manco Cápac','Juliaca',' PUNO');
insert into  destino values(19,'Aeropuerto Cadete Guillermo Castillo Paredes','Tarapoto','SAN MARTIN');
insert into  destino values(20,'Aeropuerto Coronel Carlos Ciriani Santa Rosa','Tacna','TACNA');
insert into  destino values(21,'Aeropuerto Capitán FAP Pedro Canga Rodríguez','Tumbes','TUMBES');
insert into  destino values(22,'Aeropuerto Capitán FAP David Abensur Rengifo','Pucallpa','UCAYALI');
select * from destino;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`clientes`
-- -----------------------------------------------------
insert into  clientes values(1,'Fabricio','Becerra',20,'986747247','fabricio@gmail.com');
insert into  clientes values(2,'Alexander','Azaña',20,'999888777','alexander@gmail.com');
insert into  clientes values(3,'Daniel','Lopez',20,'999888777','daniel@gmail.com');
select * from clientes;
describe clientes;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`trabajadores`
-- -----------------------------------------------------
insert into  trabajadores values(1,'Daniel','Sanchez',50,'987435612','daniel@gmail.com','piloto');
insert into  trabajadores values(2,'Daniela','Ortiz',23,'987655603','daniela@gmail.com','piloto');
insert into trabajadores  values (3,'Clemmie', 'Merrifield',55,'907383058', 'cmerrifield0@princeton.edu','piloto');
insert into trabajadores  values (4,'Udall', 'Sentinella',55, '959198305', 'usentinella1@addtoany.com','piloto');
insert into trabajadores  values (5,'Ansell', 'Sponton', 55,'999281385', 'asponton2@barnesandnoble.com','piloto');
insert into trabajadores values (6,'Bathsheba', 'Duffell',55,'915152430', 'bduffell3@canalblog.com','piloto');
insert into trabajadores  values (7,'Aron', 'Tallon','919764646',55, 'atallon4@canalblog.com','piloto');
insert into trabajadores  values (8,'Graham', 'Terry','928796967',55, 'gterry5@smh.com.au','piloto');
describe trabajadores;
select * from trabajadores;
#Ahora con Foreign Key#
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`itinerario`
-- -----------------------------------------------------
insert into  itinerario values(1,'10:00:00',20220201,1,2);
insert into  itinerario values(2,'20:00:00',20220201,2,1);
select * from itinerario;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`vuelo`
-- -----------------------------------------------------
insert into  vuelo values(1,'99','001',1,1);
insert into  vuelo values(2,'99','002',1,2);
select * from vuelo;
-- -----------------------------------------------------
-- Table `AerolineaFinal`.`pasaje`
-- -----------------------------------------------------
insert into  pasaje values(1,'Clase Economica','8A',999,1,'Fabricio',1,'001',1,'Daniel');
insert into  pasaje values(2,'Clase Ejecutiva','5A',999,2,'Alexander',2,'002',2,'Daniela');
insert into  pasaje values(3,'Primera Clase','7A',999,3,'Daniel',1,'001',1,'Daniel');
select * from pasaje;
-- -----------------------------------------------------
-- Tablas Transaccionales
-- -----------------------------------------------------
INSERT INTO `categoria` VALUES (1,'Clase Economica'),(2,'Clase Ejecutiva'),(3,'Primera Clase');
select * from categoria;

INSERT INTO `producto` VALUES (1,'Clase Economica','AeroPeru',999,1000,1),(2,'Clase Ejecutiva','AeroPeru',999,1000,2),(3,'Primera Clase','AeroPeru',999,1000,3);
select * from producto;

 select * from boleta;
 select * from producto_has_boleta;

-- -----------------------------------------------------
-- Modulo Vista General
-- -----------------------------------------------------
SELECT 
    clientes.nombreCliente,
    pasaje.asientoPasaje,
    pasaje.clasePasaje,
    vuelo.numeroVuelo,
    itinerario.fechaItirenario,
    itinerario.horaItirenario,
    origen.ciudadOrigen,
    origen.nombreAeropuertoOrigen,
    destino.ciudadDestino,
    destino.nombreAeropuertoDestino,
    trabajadores.nombrePersonal,
    trabajadores.cargo
FROM
    pasaje
        INNER JOIN
    trabajadores ON pasaje.trabajadores_idPersonal = idPersonal
        INNER JOIN
    clientes ON pasaje.clientes_idCliente = idCLiente
        INNER JOIN
    vuelo ON pasaje.vuelo_idVuelo = idVuelo
        INNER JOIN
    itinerario ON vuelo.itinerario_idItirenario = idItirenario
        INNER JOIN
    origen ON itinerario.origen_idOrigen = idOrigen
        INNER JOIN
    destino ON itinerario.destino_idDestino = idDestino;
    
-- -----------------------------------------------------
-- Modulo Itinerario
-- -----------------------------------------------------
    select itinerario.idItirenario,itinerario.horaItirenario,itinerario.fechaItirenario,origen_idOrigen,origen.ciudadOrigen,origen.nombreAeropuertoOrigen,destino_idDestino,destino.ciudadDestino,destino.nombreAeropuertoDestino FROM itinerario INNER JOIN origen ON itinerario.origen_idOrigen = idOrigen INNER JOIN destino ON itinerario.destino_idDestino = idDestino where ciudadOrigen =? and ciudadDestino =?;
-- -----------------------------------------------------
-- Pasos para registrar correctamente vuelo en AeroPeru
-- -----------------------------------------------------
select * from clientes;
select * from origen;
insert into  itinerario values(3,'14:40:00',20221129,7,8);select * from itinerario; -- precondicion tener lista de origen y destino 
insert into  vuelo values(3,'124','003',1,3);select * from vuelo; -- precondicion tener lista de itinerario
insert into  pasaje values(5,'Clase Ejecutiva','7C',999,5,'Kevin',3,'003',5,'Ansell'); select * from pasaje; -- precondicion tener lista de cliente lista vuelos lista trabajadores
insert into  pasaje values(6,'Clase Ejecutiva','8C',999,6,'Rubén',3,'003',5,'Ansell'); select * from pasaje; -- precondicion tener lista de cliente lista vuelos lista trabajadores






SELECT vuelo.idVuelo,vuelo.capacidadVuelo,vuelo.numeroVuelo,itinerario.idItirenario,itinerario.fechaItirenario,itinerario.horaItirenario,origen.ciudadOrigen,origen.nombreAeropuertoOrigen,destino.ciudadDestino,destino.nombreAeropuertoDestino FROM vuelo  INNER JOIN itinerario ON vuelo.itinerario_idItirenario = idItirenario INNER JOIN origen ON itinerario.origen_idOrigen = idOrigen INNER JOIN destino ON itinerario.destino_idDestino = idDestino where numeroVuelo = '001';