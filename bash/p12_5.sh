echo INI
grep tipoD signif_ini.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
echo MCU
grep tipoD signif_mcu.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
echo ORD
grep tipoD signif_ord.txt | grep -v SIN_DESCR | awk -F ',' '{print $1}'
