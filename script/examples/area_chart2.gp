set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/ch1/img/area_chart2.png"
unset key
set style fill solid 0.4 noborder
set style function filledcurves y=0
set xrange [0:3]
plot sin(x) lc rgb "forest-green"