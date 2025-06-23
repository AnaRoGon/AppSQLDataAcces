# Aplicación en Java de Acceso a una Base de Datos SQL

Aplicación de escritorio desarrollada en Java con NetBeans, siguiendo el patrón de diseño MVC y utilizando Hibernate para la persistencia de datos.
El proyecto gestiona una base de datos relacional llamada matriculas, compuesta por las tablas ESTUDIANTE y UNIVERSIDAD.

![06](https://github.com/user-attachments/assets/e4cb1fd0-c68e-4ef3-aa6e-06903a1373d7)

# Funcionalidades principales

# Pantalla principal

Desde esta pantalla nos comunicamos directamente con la base de datos. 
Aquí es posible realizar consultas, añadir, modificar y eliminar estudiantes y universidades.

![00](https://github.com/user-attachments/assets/0aa9d766-b991-4669-ba47-a4a8bfc7556e)

## Formulario para nueva universidad

Al pulsar el botón ‘Añadir Universidad’, aparece el formulario donde se introducen los datos de la universidad a registrar.

![01](https://github.com/user-attachments/assets/c1473928-8a14-4a31-8e3b-d6f3e3998909)

## Formulario para nuevo estudiante

Al pulsar el botón ‘Añadir Estudiante’, se muestra el formulario para registrar un nuevo estudiante.

![02](https://github.com/user-attachments/assets/adf738db-8043-4e08-a485-a8c50e9b7b77)

## Formulario para modificar la matrícula de un alumno

Al pulsar el botón ‘Modificar matrícula’, se abre el formulario donde se puede indicar el nuevo importe para la matrícula del alumno seleccionado por NIF. 

![03](https://github.com/user-attachments/assets/f4feedde-93f1-4ee4-8499-63c4c819a88b)

## Formularios para eliminar datos

### Eliminar Universidad

Requiere indicar el código de la universidad. Si no existe, se notifica con un aviso al usuario.

![04](https://github.com/user-attachments/assets/1bb7c9e2-7b42-4ead-b1e2-40512c52db1a)

### Eliminar estudiante

Se elimina por NIF. Si no existe, se notifica con un aviso al usuario.

![05](https://github.com/user-attachments/assets/626a01bc-3d3e-40a2-b7b4-0f2f02fc3e4f)

# Tecnologías utilizadas

Para el desarrollo de esta aplicación se destaca:

* Java + Swing para la interfaz gráfica.
* Hibernate para el mapeo objeto-relacional.
* MVC (Modelo-Vista-Controlador) como arquitectura del proyecto.
* Validaciones de formularios y control de errores con JOptionPane.
* Consultas HQL sobre los datos de matrícula.
* Control de integridad referencial (no se permite eliminar universidades con estudiantes asociados).
* Prevención de duplicados mediante consultas previas antes del guardado.
* Gestión de sesiones y transacciones seguras con rollback automático en caso de error.

# Instrucciones de uso.

Para ejecutar la app copia el enlace del repositorio en GitHub: <https://github.com/AnaRoGon/AppSQLDataAccess.git>

1. Abre NetBeans y ve al menú:
2. Team -> Git -> Clone.
3. Pega la URL del repositorio y sigue las instrucciones para clonar el proyecto localmente.
4. Una vez clonado, NetBeans detectará el proyecto y podrás abrirlo y ejecutarlo directamente desde el IDE.

Puedes descargas las librerías necesarías para el correcto funcionamiento de la aplicación en el siguiente enlace: <https://drive.google.com/file/d/1TNo6M8GCBgFcmLePNn-_jb6hR9RT614k/view?usp=drive_link>


