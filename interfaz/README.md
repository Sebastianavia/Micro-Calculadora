# MIcro-interfaz

### Explicación del Código JavaScript
Este código JavaScript es parte de una interfaz de calculadora que realiza operaciones aritméticas (suma, resta, multiplicación y división) a través de llamadas a microservicios.

Funciones de Operación (sumar, restar, multiplicar, dividir):

Cada función captura el primer y segundo número de la pantalla y llama a realizarOperacion para ejecutar la operación correspondiente.
Actualiza la interfaz para mostrar la operación actual y prepara la pantalla para el siguiente número.
obtenerResultado:

Captura el segundo número y realiza la operación marcada.
Actualiza la pantalla con el resultado.
realizarOperacion:

Determina qué operación se debe realizar (suma, resta, multiplicación, división) y llama a la función correspondiente para obtener el resultado desde el microservicio.
modificarDisplay:

Actualiza la pantalla con el resultado de la operación.
Funciones de Fetch (obtenerSuma, obtenerResta, obtenerMultiplicacion, obtenerDivision):

Cada función realiza una solicitud POST al microservicio correspondiente, pasando los dos números como JSON.
Procesa la respuesta y actualiza la pantalla con el resultado.
Maneja errores en caso de fallos en la solicitud.

---

### Explicación del Dockerfile
Este Dockerfile se utiliza para crear una imagen Docker que sirve la interfaz web de la calculadora utilizando Nginx.

FROM nginx:latest:

Utiliza la última versión de Nginx como imagen base.
COPY . /usr/share/nginx/html:

Copia todos los archivos del directorio actual del host al directorio /usr/share/nginx/html en el contenedor, que es el directorio predeterminado de Nginx para servir contenido web.
EXPOSE 80:

Indica que el contenedor expondrá el puerto 80, el puerto estándar para HTTP.
CMD ["nginx", "-g", "daemon off;"]:

Configura Nginx para que se ejecute en primer plano (no como un demonio), lo cual es necesario para que Docker mantenga el contenedor en ejecución.
