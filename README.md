# 🧪 Automatización de pruebas con Reqres.in

Este proyecto implementa una **automatización de pruebas de servicios REST** utilizando la página [Reqres.in](https://reqres.in).  
Se desarrollaron casos de prueba para las siguientes peticiones:

- ✅ Listar usuarios
- ✅ Crear usuario
- ✅ Modificar usuario
- ✅ Eliminar usuario

La automatización está construida con **Gradle 8.10** y **OpenJDK 21**.

---

## ⚙️ Requisitos previos

Antes de ejecutar el proyecto asegúrate de tener instalado en tu máquina:

- [Java OpenJDK 21](https://jdk.java.net/21/)
- [Gradle 8.10](https://gradle.org/releases/)
- Un IDE como **IntelliJ IDEA** o **Eclipse** (opcional)

Verifica las versiones instaladas con los siguientes comandos:

```bash
java -version
gradle -v

📥 Clonar el repositorio

Clona este proyecto en tu máquina local:

git clone https://github.com/dimabe2019/Reto-SQA---Automatizacion-a-nivel-de-servicios.git

📦 Descarga de dependencias

Gradle gestionará automáticamente las dependencias definidas en build.gradle.
Para descargarlas, ejecuta:

gradle clean build

Esto instalará todas las librerías necesarias para la ejecución de pruebas.

📖 Estructura del proyecto

📂 reqres-automation
 ┣ 📂 src
 ┃ ┣ 📂 test
 ┃ ┃ ┣ 📂 java        # Clases de pruebas automatizadas
 ┃ ┃ ┗ 📂 resources   # Archivos JSON, features, etc.
 ┣ 📜 build.gradle    # Configuración de dependencias
 ┣ 📜 settings.gradle # Configuración del proyecto
 ┗ 📜 README.md       # Documentación del proyecto

🚀 Funcionalidad

La automatización valida el correcto funcionamiento de la API de Reqres con pruebas que aseguran:

Que se puedan listar usuarios correctamente.
Que un nuevo usuario pueda ser creado exitosamente.
Que un usuario existente pueda ser modificado.
Que un usuario pueda ser eliminado de forma exitosa.

✍️ Autor: Diego Martinez
🔹 Rol: QA Automation Engineer