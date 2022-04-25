set terminal qt font ',20'
set title "Aardvark lengths\n (not really)"
set xlabel 'Length [cm]'
set ylabel 'Probability'
set label '{/Symbol m} = 115, {/Symbol s} = 15, {/Symbol C}' at 80,600
unset key
set xrange [55:175]
set grid
set style fill solid 0.75
plot '../data/normal.dat' using 1 bins=50 with boxes fc '#4070a0'