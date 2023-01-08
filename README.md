# Individuales M9
### TRABAJO 1
Tabla Publicaciones  - - Tabla Etiquetas

* Finalizar DER con los campos necesarios
* Generar modelos, migracion y tablas en un proyecto rails
* asociar los modelos entre publicaciones y etiquetas
* Generar el CRUD para publicaciones y etiquetas utilizando formularios anidados

### TRABAJO 2
Tabla Publicaciones
Tabla Etiquetas
Tabla Usuarios

* Finalizar DER con los campos necesarios
* Generar el modelo, migracion y asociación para la tabla usuarios utilizando la gema devise
* Generar una ruta anidada, don de ingresando al perfil del usuario se puedan ver las publicaciones relacionadas

### TRABAJO 3
Tabla Publicaciones
Tabla Etiquetas
Tabla Usuarios
Tabla Tableros

* Finalizar DER con los campos y tabla restantes
* Generar los modelos, migraciones y asociasiones de las tablas nuevas para reflejar el esquema de la base de datos
* Definir una relacion has_many through: y otra relacion has_and_belongs_to_many
* Probar el CRUD de tableros
* Probar el CRUD de publicaciones con el cambio de relacion con etiquetas

### TRABAJO 4
* Implementar ACtiveStorage en el proyecto Rails
* Configurar ACtiveStorage para almacenar archivos en S3
* Definir una vista root para la aplicacion donde se puedan ver las publicaciones con sus respectivas fotos siguiendo una plantilla definida
* Probar la creación y actualizacion de pulbicaciones para cargar fotografias a las publicaciones nuevas o existentes


### TRABAJO 5
Ver tabla 
 Como 				Quiero							Para
 Administrador	Gestionar etiquetas				Evitar que los usuarios creen etiquetas repetidas o elimienen algunas muy utilizadas
 FotografoN1	Gestionar mis publicaciones		Que esten categorizadas y publicadas con la mejor descripcion posible
 FotografoN2	Gestionar tableros de interes	Guardar fotografias de otras personas de interes y sirvan de inspiracion
 
* Finalizar los criterios de aceptacion para cadad una de las historias de usuarios tomando en cuenta la motivacion principal de la aplicacion: compartir la pasion de fotografia de comidas
* Generar al menos un caso de prueb para cada criterio de aceptacion generado anteriormente
* Implementar los casos de pruebas utilizando MiniTest en el proyecto de rails
* 