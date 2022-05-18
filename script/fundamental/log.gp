set terminal svg size 800,400 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/log.svg"
$data << EOD
1
3.16
10
31.6
100
EOD

set multiplot layout 2,1
unset key
set border 1
set tics nomirror
unset ytics

set title "original data, linear scale"
set yrange [0:1]
set xrange [-0.1:100]
set xtics 0,25,100
set xlabel 'x'
plot $data u 1:(0) w points pt 7 lc "#0072B2"

set title "log-transformed data, linear scale"
set xrange [-0.1:2.0]
set xtics 0.0,0.5,2.0
set xlabel 'log_{10}(x)'
plot $data u (log10($1)):(0) w points pt 7 lc "#0072B2"