set term qt font ',16'
f(x) = cos(2*pi*x)
unset key
set xrange [0:5]
set yrange [-2:2]
set samples 1000
set arrow from 2.3,1.3 to 2,1 filled
set label 'local max' at 2.3,1.3 offset 1,0
plot f(x)