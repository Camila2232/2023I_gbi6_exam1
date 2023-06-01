#!/bin/bash

echo "Ejercicio N°1"

echo "Busqueda de todos los tipos de extensiones"

extensiones=("csv" "txt" "tsv" "gz" "png")
conteo=()

for extension in "${extensiones[@]}"; do
    cantidad=$(find ./data/singlecell -type f -name "*.$extension" | wc -l)
    conteo+=("$extension: $cantidad")
done

echo "${conteo[@]}" > extensiones.txt

cat extensiones.txt
