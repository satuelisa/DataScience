echo INI
grep SIN_DESCR signif_ini.txt | awk -F ',' '{print $1" "$4}' | sort | uniq -c
echo MCU
grep SIN_DESCR signif_mcu.txt | awk -F ',' '{print $1" "$4}' | sort | uniq -c
echo ORD
grep SIN_DESCR signif_ord.txt | awk -F ',' '{print $1" "$4}' | sort | uniq -c
