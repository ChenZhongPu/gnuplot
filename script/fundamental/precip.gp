set terminal svg size 1000,600 enhanced font 'Verdana,24'
set out "../../src/fundamental/img/precip.svg"
set grid
set border 3
set tics nomirror 
set datafile separator ","
set xdata time
set timefmt "%m"
set xtics format "%b"
unset mxtics
set xlabel 'month'
set ylabel 'precipitation (in.)'
plot '../../data/city.csv' u 2:3 smooth sbezier lw 3 t 'city 1', \
'../../data/city2.csv' u 2:3 smooth sbezier lw 3 t 'city 2', \
'../../data/city3.csv' u 2:3 smooth sbezier lw 3 t 'city 3', 