echo "Ejercicio N°4"

echo "Separacion de columnas"

output_file="pdb.csv"
count_file="pdb_count.csv"

cut -d ',' -f 5,18,21 ./data/mahomes/sites.csv > "$output_file"

cut -d ',' -f 5 ./data/mahomes/sites.csv | sort | uniq -c > "$count_file"
echo "---" >> "Scount_file"

cut -d ',' -f 18 ./data/mahomes/sites.csv | sort | uniq -c > "$count_file"
echo "---" >> "$count_file"

cut -d ',' -f 21 ./data/mahomes/sites.csv | sort | uniq -c > "$count_file"

cat pdb_count.csv
