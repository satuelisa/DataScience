echo INI
grep tipoE signif_ini.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
echo MCU
grep tipoE signif_mcu.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
echo ORD
grep tipoE signif_ord.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
