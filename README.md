# README para las pruebas de la API PetStore con Karate

## Descripción del Proyecto

Este proyecto realiza pruebas automatizadas sobre la API de la "PetStore" utilizando Karate, un marco de pruebas para servicios REST. El objetivo es verificar que las operaciones CRUD (Crear, Leer, Actualizar y Eliminar) funcionen correctamente para los usuarios de la API.

## Requisitos

Para ejecutar este proyecto en tu máquina local, asegúrate de tener lo siguiente instalado:

- **Java 8 o superior**
- **Maven** (Para la gestión de dependencias y ejecución de pruebas)
- **IntelliJ IDEA** (Recomendado como entorno de desarrollo)
- **Git** (Para clonar el repositorio)

## Instalación

1. Clona este repositorio a tu máquina local:
   git clone https://github.com/jrdc023/PetStoreTests.git

2. Navega al directorio del proyecto:
   cd PetStoreTests

3. Asegúrate de que Maven esté instalado. Puedes verificarlo con el siguiente comando:
   mvn -v

4. Si es la primera vez que ejecutas el proyecto, descarga las dependencias con Maven:
   mvn clean install

# Ejecución de las Pruebas

## Desde IntelliJ IDEA:
1. Abre el proyecto en IntelliJ IDEA.

2. Navega a la clase de prueba PetStoreTest.java.

3. Haz clic derecho sobre la clase PetStoreTest y selecciona Run 'PetStoreTest'.

Esto ejecutará el archivo petstore.feature que contiene los escenarios de prueba para crear, buscar, actualizar y eliminar un usuario en la API.

## Desde la Línea de Comandos:
1. Si prefieres ejecutar las pruebas desde la terminal, puedes usar Maven con el siguiente comando:
    mvn test
## Estructura del Proyecto
    * src/test/java/com/petstore/tests/PetStoreTest.java: Clase que ejecuta las pruebas de Karate utilizando JUnit 5.
    * src/test/resources/com/petstore/tests/petstore.feature: Archivo Gherkin que define los escenarios de prueba para la API PetStore.
    * pom.xml: Archivo de configuración de Maven que incluye las dependencias necesarias para ejecutar las pruebas.
    * target/: Carpeta generada automáticamente por Maven que contiene los resultados de las pruebas y otros archivos generados.
    * README.txt: Este archivo, con instrucciones y detalles del proyecto.

## Resultados de las Pruebas
Los resultados de las pruebas se guardan en el directorio target/karate-reports. Puedes abrir el archivo index.html en un navegador para ver un informe detallado de las pruebas.

Al momento que ejecutas las pruebas este te genera un link automáticamente con el cual podrás acceder al reporte realizado pro karate
