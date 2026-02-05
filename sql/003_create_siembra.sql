CREATE TABLE siembra (
id SERIAL PRIMARY KEY,
cultivo_id INTEGER NOT NULL,
ubicacion_id INTEGER NOT NULL,
fecha_siembra DATE NOT NULL,
fecha_cosecha DATE ,
estado TEXT NOT NULL,
CHECK (estado IN ('planeado','sembrado','cosechado')),
FOREIGN KEY (cultivo_id) REFERENCES cultivo(id),
FOREIGN KEY (ubicacion_id) REFERENCES ubicacion(id)
);
