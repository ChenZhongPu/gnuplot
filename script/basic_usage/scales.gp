set multiplot layout 1,2
unset key
set tics nomirror
f(x) = 10**x
unset logscale y
plot '../../data/artists_data.dat' using (f($2)) with lines
set logscale y
set format y "10^{%L}"
plot '../../data/artists_data.dat' using (f($2)) with lines