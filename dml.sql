INSERT INTO duenios (nombre,cedula,telefono,correo) VALUES
("Zonia Valle","1091000000","33322332222","correo111@hotmail.com"),
("Juan Restrepo","1092100000","311112222","correo222@outlook.com"),
("Edgardo Leonel","141412142","333338669","correo333@hotmail.com"),
("Catalina Pinzon","1060100000","31500001010","correoinstitucional@campuslands.com"),
("Samanta Delgado","1020304039","3001000000","correo000@hotmail.com"),
("Luis Fernando Salas", "1088000001", "3201234567", "lfsalas@gmail.com"),
("María Camila Ortiz", "1077000002", "3019876543", "mcamila.ortiz@yahoo.com"),
("Andrés Páez", "1099000003", "3187654321", "andres.paez@gmail.com"),
("Valentina Ríos", "1030303030", "3135556666", "valen.rios@hotmail.com"),
("Carlos Méndez", "1050505050", "3002221111", "cmendez@outlook.com");

INSERT INTO mascotas(nombre, especie, raza, sexo, edad, vacunado, id_duenio) VALUES
("Princesa", "Perro", "Pitbull", "Hembra", 10, 0, 5),
("Pelado", "Gato", "Egipcio", "Macho", 3, 1, 3),
("Manchas", "Vaca", "Frizona", "Hembra", 2, 0, 10),
("Toby", "Perro", "Shih Tzu", "Macho", 6, 1, 6),
("Asce", "Gato", "British Shorthair", "Macho", 3, 1, 7),
("Molly", "Gato", "Criollo", "Hembra", 4, 1, 8),
("Luna", "Perro", "Labrador Retriever", "Hembra", 5, 1, 6),
("Rocky", "Perro", "Bulldog Francés", "Macho", 4, 1, 1),
("Simba", "Gato", "Siamés", "Macho", 2, 1, 3),
("Nala", "Gato", "Maine Coon", "Hembra", 3, 0, 10),
("Toby", "Conejo", "Enano Holandés", "Macho", 1, 0, 9),
("Kira", "Perro", "Golden Retriever", "Hembra", 7, 1, 6),
("Zeus", "Perro", "Pastor Alemán", "Macho", 6, 1, 2),
("Coco", "Gato", "Angora", "Hembra", 2, 1, 10),
("Daisy", "Cerdo", "Mini Pig", "Hembra", 3, 0, 3),
("Thor", "Caballo", "Árabe", "Macho", 8, 1, 6),
("Spike", "Erizo", "Africano", "Macho", 2, 1, 3),
("Lola", "Cobaya", "Abisinia", "Hembra", 1, 0, 8),
("Rango", "Iguana", "Verde", "Macho", 4, 1, 6),
("Paquita", "Loro", "Amazona", "Hembra", 12, 1, 1),
("Flash", "Tortuga terrestre", "Morocho", "Macho", 15, 0, 10);

INSERT INTO servicios (nombre, descripcion, precio_base) VALUES
("Baño completo","Baño completo de la mascota, con corte de uñas y lavado de oidos incluido",130),
("Corte de pelo", "Corte de pelo según raza o preferencia del cliente, incluye peinado básico", 100),
("Limpieza dental", "Limpieza dental básica para prevenir el sarro y el mal aliento", 150),
("Desparasitación", "Aplicación de antiparasitarios internos y externos", 90),
("Consulta veterinaria", "Revisión general del estado de salud de la mascota por un veterinario", 200),
("Vacunación", "Aplicación de vacunas correspondientes al calendario de vacunación", 180),
("Spa para mascotas", "Servicio premium que incluye baño, aromaterapia, masajes y peinado especial", 250);

INSERT INTO visitas (fecha, id_mascota, id_servicio) VALUES
("2025-03-10",1,1),
("2025-06-03",2,2),
("2025-10-01",3,1),
("2025-04-03",4,5),
("2025-02-11",5,7),
("2025-01-14",3,3),
("2025-05-20",11,4),
("2025-11-26",2,6),
("2025-05-10",6,3),
("2025-03-21",8,4),
("2025-12-23",10,6);

INSERT INTO tratamientos (nombre, observaciones, id_visita) VALUES
("Antiparasitario interno", "Se administró una dosis oral de antiparasitario. Se recomienda repetir en 15 días.", 1),
("Vacunación antirrábica", "Vacuna aplicada sin complicaciones. Próxima dosis en un año.", 2),
("Limpieza de oídos", "Se detectó leve infección, se limpió y se recetó tratamiento antibiótico.", 3),
("Control de peso", "Peso dentro del rango normal. Se sugiere mantener la dieta actual.", 4),
("Tratamiento dermatológico", "Aplicación de crema para dermatitis localizada. Revisión en 7 días.", 5);
