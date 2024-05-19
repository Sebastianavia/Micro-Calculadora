#!/bin/bash

# Define la lista de carpetas
carpetas=("interfaz" "suma" "resta" "division" "multiplicacion")

# Itera sobre las carpetas
for carpeta in "${carpetas[@]}"; do
    # Navega a la carpeta
    cd "$carpeta" || exit
    echo "Desinstalando el release '$carpeta'..."
    # Desinstala el release de Helm
    helm uninstall "$carpeta"
    # Regresa al directorio anterior
    cd ..
done

echo "Todos los releases han sido desinstalados correctamente."
