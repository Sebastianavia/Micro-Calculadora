#!/bin/bash

# Define la lista de carpetas
carpetas=("suma" "resta" "division" "multiplicacion")

# Itera sobre las carpetas
for carpeta in "${carpetas[@]}"; do
    # Navega a la carpeta
    cd "$carpeta" || exit
    echo "Instalando el release '$carpeta'..."
    # Instala el chart de Helm en la carpeta actual
    helm install "$carpeta" .
    # Regresa al directorio anterior
    cd ..
done

echo "Todos los releases han sido instalados correctamente."
