
-- Insertar Usuarios
INSERT INTO Usuarios (id, nombre, email, contrasena)
VALUES (1, 'Manolito', 'manolito@correo.com', 'contrasenamanolito')
      ,(2, 'Pepe', 'pepe@correo.com', 'contrasenapepe')
      ,(3, 'Isabel', 'isabel@correo.com', 'contrasenaisabel')
      ,(4, 'Pedro', 'pedro@correo.com', 'contrasenapedro');


-- Insertar Tematicas
INSERT INTO Tematicas (id, nombre, descripcion)
VALUES (1, 'humor negro', 'En esta tematica hay chistes de humor negro')
      ,(2, 'humor amarillo', 'En esta tematica hay chistes de humor amarillo')
      ,(3, 'chistes verdes', 'En esta tematica hay chistes verdes');

-- Insertar chistes en la categoría 1 (Humor negro)
INSERT INTO Chistes (id, contenido, usuario_id)
VALUES 
    (1, '¿Por qué los pájaros no usan Facebook? Porque ya tienen Twitter.', 1),
    (2, '¿Cómo se llama un dinosaurio que está durmiendo? Un dino-sueño.', 2),
    (3, '¿Cuál es el colmo de un electricista? No encontrar su corriente de trabajo.', 3),
    (4, '¿Cómo se despiden los químicos? Ácido un placer.', 4);

-- Insertar chistes en la categoría 2 (Humor amarillo)
INSERT INTO Chistes (id, contenido, usuario_id)
VALUES 
    (5, '¿Qué hace una abeja en el gimnasio? ¡Zum-ba!', 1),
    (6, '¿Cómo se dice pañuelo en japonés? Saka-moko.', 2),
    (7, '¿Qué le dice una iguana a su hermana gemela? Somos iguanitas.', 3),
    (8, '¿Qué le dijo el semáforo al coche? No me mires, me estoy cambiando.', 4);

-- Insertar chistes en la categoría 3 (Chistes verdes)
INSERT INTO Chistes (id, contenido, usuario_id)
VALUES 
    (9, '¿Por qué los vegetales nunca se pelean? Porque siempre son muy verdes.', 1),
    (10, '¿Cuál es el colmo de un jardinero? Tener mala hierba.', 2),
    (11, '¿Qué le dice una planta a otra? ¡Qué bien te ves hoy, estás muy frondosa!', 3),
    (12, '¿Cómo se llama el campeón de buceo japonés? Tokofondo.', 4);

-- Insertar chistes tematicas
INSERT INTO chistes_tematicas (chistes_id, tematica_id)
VALUES (1, 1)
      ,(2, 1)
      ,(3, 1)
      ,(4, 1)
      ,(5, 2)
      ,(6, 2)
      ,(7, 2)
      ,(8, 2)
      ,(9, 3)
      ,(10, 3)
      ,(11, 3)
      ,(12, 3);

-- Consulta 1
SELECT id, contenido
FROM Chistes
WHERE usuario_id = 1;

-- Consulta 2
SELECT A.id, A.contenido
FROM Chistes AS A
INNER JOIN chistes_tematicas AS B ON A.id = B.chistes_id
WHERE B.tematica_id = 1;

-- Consulta 3
SELECT A.id, A.contenido
FROM Chistes AS A
INNER JOIN chistes_tematicas AS B ON A.id = B.chistes_id
WHERE B.tematica_id = 1 AND A.usuario_id = 1;