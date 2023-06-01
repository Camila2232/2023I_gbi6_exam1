echo "Ejercicio N°3"

echo "Conteo de articulos"

output_file="elegans.txt"

articulos_pubmed=$(grep -c "PUBMED" ./data/miRNA.dat)

estudios_nature_elegans=$(grep -ci "Nature.*elegans" ./data/miRNA.dat)

mirna_139bp=$(grep -c "139 BP" ./data/miRNA.dat)

echo "Articulo con la palabra PUBMED: $articulos_pubmed" > "$output_file"
echo "Estudios de micro RNA en la revista Nature que mencionan C.elegans: $estudios_nature_elegans" >> "$output_file"
echo "Micro RNA estudiados con longitud 139 pares de bases: $mirna_139bp" >> "$output_file"

cat elegans.txt


