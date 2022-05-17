set terminal svg size 1000,1000 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/aesthetics.svg"

set multiplot layout 2,3
unset key

set title 'position'
unset xtics
unset ytics
set border 3
set xlabel 'x'
set ylabel 'y'
plot [0:2][0:2] 5

unset xlabel
unset ylabel
set title 'shape'
unset border
$data << EOD
0 1 2 3 4
EOD
set style line 1 pt 7 ps 2 lc "#808080"
set style line 2 pt 9 ps 2 lc "#808080"
set style line 3 pt 20 ps 2 lc "#808080"
set style line 4 pt 28 ps 2 lc "#808080"
set xrange [-1:1]
set yrange [-1:5]
plot $data using 1:2 with points ls 1, \
$data using 1:3 with points ls 2, \
$data using 1:4 with points ls 3, \
$data using 1:5 with points ls 4

set title 'size'
$data << EOD
0 1 2 3 4
EOD
set style line 1 pt 7 ps 1 lc "#808080"
set style line 2 pt 7 ps 2 lc "#808080"
set style line 3 pt 7 ps 3 lc "#808080"
set style line 4 pt 7 ps 4 lc "#808080"
set xrange [-1:1]
set yrange [-1:5]
plot $data using 1:2 w points ls 1, $data using 1:3 w points ls 2, \
$data using 1:4 w points ls 3, $data using 1:5 w points ls 4

set title 'color'
$color << EOD 
2 0x889900
2 0x009900
2 0xff9900
2 0xdf3dc0
EOD
set style fill solid 0.9
set yrange [0:2]
set xrange [-1:4]
set boxwidth 0.8
plot $color u 0:1:2 with boxes lc rgb var

set title 'line width'
plot [0:3][0:4] 1 with lines lw 1 lc -1, 2 with lines lw 2 lc -1, 3 with lines lw 4 lc -1, 4 with lines lw 8 lc -1

set title 'line type'
plot [0:3][0:4] 1 with lines dt 1 lw 3 lc -1, 2 with lines dt 2 lw 3 lc -1, 3 with lines dt 3 lw 3 lc -1, 4 with lines dt 4 lw 3 lc -1