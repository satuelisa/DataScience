echo INI
grep " no " signif_ini.txt | wc -l
grep " no " signif_ini.txt 
grep " no " signif_ini.txt | awk -F ',' '{print $4}' | sort | uniq -c
echo MCU
grep " no " signif_mcu.txt 
grep " no " signif_mcu.txt | wc -l
grep " no " signif_mcu.txt | awk -F ',' '{print $4}' | sort | uniq -c
echo ORD
grep " no " signif_ord.txt | wc -l
grep " no " signif_ord.txt 
grep " no " signif_ord.txt | awk -F ',' '{print $4}' | sort | uniq -c
