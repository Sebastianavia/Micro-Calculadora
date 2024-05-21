# Aplicación de Microservicios

## Descripción

Esta es una aplicación de microservicios que proporciona operaciones básicas de matemáticas: suma, resta, multiplicación y división. Cada operación es gestionada por un microservicio independiente implementado en Python. Además, hay una interfaz web desarrollada en JavaScript para interactuar con estos microservicios.

La aplicación también incluye configuraciones para desplegarla en un clúster de Kubernetes utilizando Helm. Se ha añadido integración con Jenkins para la automatización del despliegue y un sistema de monitoreo con Prometheus y Grafana.


### Despliegue

Prerrequisitos
Kubernetes
Helm
Jenkins
Docker



### Prerrequisitos

Para desplegar esta aplicación, se necesitan los siguientes componentes:

Un clúster de Kubernetes.
Helm para gestionar los paquetes de Kubernetes.
Jenkins para la automatización del despliegue.
Docker para construir las imágenes de los microservicios.


Despliegue con Helm
Dentro de la carpeta helm/ se encuentran las configuraciones de despliegue para cada microservicio (suma, resta, multiplicación y división). Estas configuraciones permiten instalar y gestionar los microservicios en el clúster de Kubernetes.

Monitoreo
La carpeta helm/monitoring incluye las configuraciones para desplegar Prometheus y Grafana. Prometheus se utiliza para recolectar métricas de los microservicios, mientras que Grafana proporciona un dashboard para visualizar dichas métricas.

Uso
Interfaz
La interfaz web se encuentra en la carpeta interfaz y está desarrollada en JavaScript. La interfaz permite a los usuarios interactuar con los microservicios de suma, resta, multiplicación y división a través de un navegador web.

Microservicios
Cada microservicio está desarrollado en Python y se encuentra en la carpeta correspondiente dentro de services. Cada servicio gestiona una operación matemática específica y puede comunicarse con la interfaz web para procesar las solicitudes de los usuarios.

Monitoreo y Visualización
Una vez desplegados Prometheus y Grafana, se pueden utilizar para monitorear la salud y el rendimiento de los microservicios. Grafana permite configurar dashboards personalizados que muestran métricas recolectadas por Prometheus, proporcionando una visión detallada del comportamiento de la aplicación.