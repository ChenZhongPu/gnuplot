set terminal svg size 800,600 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/tx.svg"

unset key
set ytics
set tics nomirror
set ytics scale 0
unset xtics
set grid
set noborder
set logscale y
set format y "10^{%L}"

set datafile separator ","
stats '../../data/tx.csv' u 2 nooutput
set xlabel 'Texas counties, from most to least populous'
set ylabel 'population number / median'
set arrow 1 from 0,1 to 500,1 nohead
plot '../../data/tx.csv' u ($2/STATS_mean) with points pt 7 ps 0.3