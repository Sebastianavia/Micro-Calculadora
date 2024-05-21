# Micro-division

Este código es una aplicación web simple que utiliza Flask, un microframework de Python, para crear un microservicio que realiza la operación de división. Aquí hay un desglose de lo que hace cada parte del código:

## Importaciones:

- Flask es utilizado para crear la aplicación web.
- jsonify es utilizado para crear respuestas JSON fácilmente.
- request se utiliza para acceder a los datos de la solicitud.
- ORS se utiliza para permitir las solicitudes de recursos cruzados (Cross-Origin Resource Sharing).

### Inicialización de la Aplicación:

1, Se crea una instancia de Flask llamada app.
2. Se habilita CORS en la aplicación para permitir solicitudes desde cualquier origen.
3. Ruta /api/division:

Define una ruta en /api/division que solo acepta solicitudes POST.
Extrae dos números (n1 y n2) del cuerpo de la solicitud JSON.
Realiza la operación de división y maneja el caso en que el divisor es cero devolviendo un error.
Devuelve el resultado de la división como una cadena.
Ejecución de la Aplicación:

La aplicación se configura para ejecutarse en host='0.0.0.0' y port='6060'.


---

### Tambie cuenta con un Dockerfile

- Explicación del Dockerfile
- FROM python:3.6: Esta línea especifica que la imagen base será Python 3.6.
- EXPOSE 6060: Esto indica que el contenedor expondrá el puerto 6060, el puerto en el que la aplicación Flask estará escuchando.
- WORKDIR /app: Esto establece el directorio de trabajo dentro del contenedor en /app.
- COPY requirements.txt /app: Esto copia el archivo requirements.txt desde el sistema de archivos del host al directorio de trabajo del contenedor.
- RUN pip install -r requirements.txt: Esto instala las dependencias de Python listadas en requirements.txt.
- COPY division.py /app: Esto copia el archivo division.py (tu aplicación Flask) al directorio de trabajo del contenedor.
- CMD python division.py: Esta línea define el comando por defecto que se ejecutará cuando se inicie el contenedor, que en este caso es ejecutar el archivo division.- py con Python.

