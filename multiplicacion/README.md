# Micro-multiplicacion


### Importaciones:

- Flask para crear la aplicación web.
- jsonify para formatear las respuestas JSON.
- request para acceder a los datos de la solicitud.
- CORS para permitir solicitudes de recursos cruzados (Cross-Origin Resource Sharing).



### Inicialización de la Aplicación:

1. Se crea una instancia de Flask llamada app.
2. Se habilita CORS en la aplicación para permitir solicitudes desde cualquier origen.
Ruta /api/multiplicacion:

Define una ruta en /api/multiplicacion que solo acepta solicitudes POST.
Extrae dos números (n1 y n2) del cuerpo de la solicitud JSON.
Realiza la operación de multiplicación y devuelve el resultado como una cadena.
Ejecución de la Aplicación:

La aplicación se configura para ejecutarse en host='0.0.0.0' y port='5050'.
### Dockerfile
Este Dockerfile se utiliza para crear una imagen Docker del microservicio de multiplicación:

FROM python:3.6: Utiliza Python 3.6 como imagen base.
EXPOSE 5050: Indica que el contenedor expondrá el puerto 5050, donde la aplicación Flask estará escuchando.
WORKDIR /app: Establece el directorio de trabajo dentro del contenedor en /app.
COPY requirements.txt /app: Copia el archivo requirements.txt al directorio de trabajo del contenedor.
RUN pip install -r requirements.txt: Instala las dependencias de Python listadas en requirements.txt.
COPY multiplicacion.py /app: Copia el archivo multiplicacion.py al directorio de trabajo del contenedor.
CMD python multiplicacion.py: Define el comando por defecto para ejecutar el archivo multiplicacion.py.