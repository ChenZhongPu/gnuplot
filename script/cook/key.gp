set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20' lw 3
set out "../../src/cook/img/key.png"
set key top left box
set style line 1 lc rgb '#8b1a0e' lw 3 # --- red
set style line 2 lc rgb '#5e9c36' lw 3 dt 3 # --- green
set style line 3 lc rgb '#000000' lw 3 dt 4 # --- black
set xrange [0:1]
plot x ls 1 t 'x', x**2 ls 2 t 'x^2', x**3 ls 3 t 'x^3'