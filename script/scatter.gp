unset key
set size ratio 0.5
set xlabel 'entry a'
set ylabel 'entry b'
set xrange [-5:55]

plot '../data/scatter.dat' using 1:4:($3/30.0):2 \
with points pt 7 ps variable lc variable