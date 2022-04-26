unset key
set yrange [0:0.6]
set ytics 0,0.1,0.6
set xrange [-1:4]
set style fill solid 0.5
set boxwidth 0.8
plot "../../data/strings.dat" using 2:xticlabels(1) with boxes