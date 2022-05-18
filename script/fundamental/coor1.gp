set terminal svg size 560,420 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/coor1.svg"

set size ratio 5.6/4.2
unset key
set grid
unset border
set tics nomirror 
set datafile separator ","
set xdata time
set timefmt "%m"
set xtics format "%b"
unset mxtics
set xtics "01",3*30*24*60*60,"12"
set tics scale 0
set xlabel 'month'
set ylabel 'precipitation (in.)'
plot '../../data/city.csv' u 2:3 smooth sbezier lw 3