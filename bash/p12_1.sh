python3 puntuacion.py datos.csv > textos.csv # arreglar puntuacion                                                                                                                                                           

# extraer una respuesta y los puntos para los de elisa solamente                                                                                                                                                             
# para la pregunta sobre el significado del nombre de la unidad                                                                                                                                                              
# de aprendizaje al INICIO, MITAD y FINAL del semestre                                                                                                                                                                       

awk -F ',' '{ if ($22 == "elisa") {print $9","$63","$64}}' textos.csv > tmp
grep -v "^$" tmp > tmp2 # quitar líneas en blanco                                                                                                                                                                            

# sustituir campos vacios                                                                                                                                                                                                    
sed 's/,,/,NA1ra,/g' tmp2 | sed 's/^,/SIN_DESCR,/g' | sed 's/,$/,NA2da/g' > signif_ini.txt

awk -F ',' '{ if ($22 == "elisa") {print $28","$63","$64}}' textos.csv > tmp
grep -v "^$" tmp > tmp2 # quitar líneas en blanco                                                                                                                                                                            

# sustituir campos vacios                                                                                                                                                                                                    
sed 's/,,/,NA1ra,/g' tmp2 | sed 's/^,/SIN_DESCR,/g' | sed 's/,$/,NA2da/g' > signif_mcu.txt

awk -F ',' '{ if ($22 == "elisa") {print $46","$63","$64}}' textos.csv > tmp
grep -v "^$" tmp > tmp2 # quitar líneas en blanco                                                                                                                                                                            

# sustituir campos vacios                                                                                                                                                                                                    
sed 's/,,/,NA1ra,/g' tmp2 | sed 's/^,/SIN_DESCR,/g' | sed 's/,$/,NA2da/g' > signif_ord.txt

head -n 10 signif_ini.txt
