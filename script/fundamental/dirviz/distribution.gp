set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/distribution.svg"

set multiplot layout 1,3
unset key

set print $RAND
do for [i = 1:100] { print rand(0)*10 }
unset print

set style line 1 lt 1 lc rgb '#243400'

set style line 11 lc rgb '#808080' lt 1
set border 3 front ls 11
set tics nomirror out 0.75

set xrange [-1:11]
set yrange [0:]
set format x ''
set format y ''
set xtics 2
set ytics 5

# call histogram function
binwidth = 1
binstart = 0
load 'hist.fct'
set title 'Histogram'
plot $RAND @hist ls 1

set xrange [0:10]
set ytics 0.05
set title 'Density Plot'
plot $RAND u 1:(1/100.) s kdens bandwidth 0.5 with filledcurves y=0 ls 1

set ytics 0.2
set title 'Cumulative Density'
plot $RAND u 1:(1/100.) s cumul ls 1