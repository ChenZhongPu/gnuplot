set terminal pngcairo transparent size 1000,540 enhanced font 'Verdana,16'
set output '../../src/cook/img/date.png'
unset key
set xdata time
set timefmt "%Y-%m-%d %H:%M:00"
set xtics format "%m-%d"
plot "../../data/date.dat" u 1:3 w lines lw 1.5