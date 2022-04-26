set terminal qt size 1000,540 font ',20' # for the test for `load` command
set title 'Simple Plot'
set size ratio 2.7/5
set tics nomirror
set key box reverse Left left
set xrange [-0.10:2.10]
set yrange [-0.5:8.5]
set xtics 0,0.25,2
set ytics 0,2,8
set format x '%.2f'
set xlabel 'x label'
set ylabel 'y label'
set samples 1500
f(x) = (x < 0 || x > 2 ? 1/0 : x)
f2(x) = f(x)**2
f3(x) = f(x)**3
plot f(x) t 'linear' lw 2.2, f2(x) t 'quadratic' lw 2.2, f3(x) t 'cubic' lw 2.2