mv ini.csv ini.raw
mv mc.csv mc.raw
mv ord.csv ord.raw
python3 puntuacion.py ini.raw > ini.csv
python3 puntuacion.py mc.raw > mc.csv
python3 puntuacion.py ord.raw > ord.csv
awk -F "," '{print NF}' ini.csv | sort | uniq -c
awk -F "," '{print NF}' mc.csv | sort | uniq -c
awk -F "," '{print NF}' ord.csv | sort | uniq -c
