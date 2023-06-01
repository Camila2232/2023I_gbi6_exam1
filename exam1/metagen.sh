echo "Ejercicio N°5"

echo "Analicis de cantidad de registros"

registros_especie=$(grep -c -P '\t\w+\t\w+\t\w+\t\w+$' ./data/metagen/infants_metagenome.txt)
echo "Registros hasta el nivel de especie: $registros_especie"
grep -E "TATA|GAGA|GATA" ./data/metagen/mygenomemap.sam > gata.txt

cat gata.txt
