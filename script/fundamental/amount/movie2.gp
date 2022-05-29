set terminal svg size 900,600 font 'Verdana,16'
set out "../../../src/fundamental/img/movie2.svg"

unset key
set border 2
set tics scale 0
set tics nomirror
set grid xtics
set xrange [0:70]
set yrange [0:*]
set xtics 20
set style fill solid 0.8 noborder
myBoxWidth = 0.8
set offsets 0,0,0.5-myBoxWidth/2.,0.5
set xlabel 'weekend gross (million USD)'
plot '../../../data/movie.txt' using (($3)/10**6):0:(0):(($3)/10**6):($0-myBoxWidth/2.):($0+myBoxWidth/2.):ytic(2) with boxxyerror lc rgb '#56B4E9'