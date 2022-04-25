set terminal qt size 1000,540
set size ratio 2.7/5
unset key
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set xtics format "%m-%d"
plot "../data/date.dat" u 1:3 w lines lw 1.5