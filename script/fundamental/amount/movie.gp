set terminal svg size 900,600 font 'Verdana,16'
set out "../../../src/fundamental/img/movie.svg"

unset key
set border 1
set tics scale 0
set tics nomirror
set grid ytics
set yrange [0:70]
set ytics 20
set style fill solid 0.8 noborder
set boxwidth 0.8
set ylabel 'weekend gross (million USD)'
plot '../../../data/movie.txt' u (($3)/10**6):xticlabels(2) with boxes fc rgb '#56B4E9'