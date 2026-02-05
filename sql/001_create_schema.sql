CREATE TABLE  cultivo ( 
id SERIAL PRIMARY KEY, 
nombre TEXT NOT NULL,
tipo TEXT NOT NULL,
CHECK (tipo IN('verdura','raiz','fruto','hierba'))
);

CREATE UNIQUE INDEX cultivo_id_nombre_unico
ON cultivo (LOWER(nombre));


CREATE TABLE ubicacion(
id SERIAL PRIMARY KEY,
tipo TEXT NOT NULL,
codigo TEXT NOT NULL,
descripcion TEXT,
CHECK (tipo IN('caja','tela','hidro'))
);

CREATE UNIQUE INDEX ubicacion_codigo_unico
ON ubicacion (LOWER(codigo));

 
