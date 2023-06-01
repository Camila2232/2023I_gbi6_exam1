echo "Ejercicio N°2"

echo "Conteo de filas y columnas"

output_file="denint.csv"
echo "Archivo,Filas,Columnas" > "$output_file"

data_folder="./data/denvint"

for csv_file in "$data_folder"/*.csv;do
    filename=$(basename "$csv_file" .csv)
    num_rows=$(awk 'END{print NR}' "$csv_file")
    num_columns=$(awk -F',' 'NR==1{print NF}' "$csv_file")

    echo "$filename,$num_rows,$num_columns" >> "$output_file"
done

cat denint.csv
