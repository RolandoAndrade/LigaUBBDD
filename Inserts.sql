INSERT INTO roles VALUES
(1,'Administrador', 'Usuario con todos los privilegios en el sistema'),
(2, 'Gerente','Usuario con todos los privilegios sobre una institución deportiva'),
(3, 'Entrenador', 'Usuario que administra un equipo'),
(4, 'Delegado' , 'Representante en cancha que lleva el control de los partidos'),
(5, 'Usuario', 'Usuario por defecto con privilegios mínimos');

INSERT INTO users VALUES
(1, 'Rolando', 'Andrade', '1998-12-10', 'masculino', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045479/accounts/Escudo_UCAB.jpg','rolandoandrade@gamil.com', '123456',1, null);

INSERT INTO universities VALUES
(1, 'Universidad Católica Andrés Bello', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045479/accounts/Escudo_UCAB.jpg'),
(2, 'Universidad Central de Venezuela', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045798/accounts/UCV.png'),
(3, 'Universidad Simón Bolívar', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045746/accounts/usb.jpg'),
(4, 'Universidad Metropolitana', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045573/accounts/customLogo.png'),
(5, 'Universidad Alejandro de Humboldt', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1583846034/accounts/UAH_LOGO_.jpg'),
(6, 'Universidad Moteávila','https://res.cloudinary.com/rolandoandrade/image/upload/v1583846050/accounts/C-_8jcZJ_400x400.jpg'),
(7, 'Universidad Militar Bolivariana de Venezuela','https://res.cloudinary.com/rolandoandrade/image/upload/v1583846250/accounts/402px-UMBV_seal.png'),
(8, 'Universidad Bolivariana de Venezuela', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1583846087/accounts/ubv.jpg'),
(9, 'Universidad Nacional Experimental Fuerzas Armadas','https://res.cloudinary.com/rolandoandrade/image/upload/v1583846101/accounts/7f083170e1f7fc43aefaf1352c1ffd95.jpg');

INSERT INTO teams VALUES
(1, 'Universidad Católica Andrés Bello (M)', 'futbol', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045479/accounts/Escudo_UCAB.jpg','masculino','A',1,1),
(2, 'Universidad Católica Andrés Bello (F)', 'femenino', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045479/accounts/Escudo_UCAB.jpg','femenino','A',1,1),
(3, 'Universidad Central de Venezuela (M)', 'futbol', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045798/accounts/UCV.png','masculino','A',2,1),
(4, 'Universidad Central de Venezuela (F)', 'femenino', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045798/accounts/UCV.png','femenino','A',2,1),
(5, 'Universidad Simón Bolívar (M)', 'futbol', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045746/accounts/usb.jpg','masculino','A',3,1),
(6, 'Universidad Simón Bolívar (F)', 'femenino', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045746/accounts/usb.jpg','femenino','A',3,1),
(7, 'Universidad Metropolitana(M)', 'futbol', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045573/accounts/customLogo.png','masculino','A',4,1),
(8, 'Universidad Metropolitana (F)', 'femenino', 'https://res.cloudinary.com/rolandoandrade/image/upload/v1573045573/accounts/customLogo.png','femenino','A',4,1);