# associate column numbers to header fields on the CSV file
head -n 1 datos.csv | tr , '\n' | grep -v "^$" | nl -v 2
