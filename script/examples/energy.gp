set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/ch1/img/energy.png"
set style data histogram
set style fill solid border -1
plot "../../data/energy" u 2 title "Fossil", \
"" u 3 title "Hydro", \
"" u 4 title "Nuclear", \
"" u 5:xtic(1) title "Other renewable"