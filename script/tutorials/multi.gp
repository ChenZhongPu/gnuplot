set multiplot layout 2,1
unset key
set linetype 1 lc "black" lw 2
set linetype 2 lc rgb '#E41A1C' dt 2 lw 2 # red
f(x) = exp(-x) * cos(2*pi*x)
plot '../../data/t1.dat' using 1:(f($1)) with points pt 7 ps 1.5 lc 'blue', f(x) with lines ls 1

g(x) = cos(2*pi*x)
plot [0:5][] g(x) with lines ls 2