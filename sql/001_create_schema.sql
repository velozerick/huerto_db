CREATE TABLE  cultivo ( 
id SERIAL PRIMARY KEY, 
nombre TEXT NOT NULL,
tipo TEXT NOT NULL,
CHECK (tipo IN('verdura','raiz','fruto','hierba'))
);

CREATE UNIQUE INDEX cultivo_id_nombre_unico
ON cultivo (LOWER(nombre));


