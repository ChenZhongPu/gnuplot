set terminal svg size 1000,400 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/scales.svg"

set multiplot layout 3,1
unset key
unset border

set grid
$data << EOD
1   1
2   1
3   1
4   1
EOD

set label 1 'position' at 0.9,1 right
unset ytics
set xtics 1,1,4
plot [0.5:4.5][0.5:1.5] $data u 1:2 with lines lc '#808080', $data u 1:2 with points pt 7 lc rgb 'blue'

# http://www.gnuplotting.org/tag/points/
unset xtics
unset label
set style line 1 lc rgb 'black' pt 5   # square
set style line 2 lc rgb 'black' pt 7   # circle
set style line 3 lc rgb 'black' pt 9   # triangle
set style line 4 lc rgb 'black' pt 28
set label 2 'shape' at 0.9,1 right
plot [0.5:4.5][0.5:1.5] "<echo '1 1'"   with points ls 1, \
     "<echo '2 1'"   with points ls 2, \
     "<echo '3 1'"   with points ls 3, \
     "<echo '4 1'"   with points ls 4 

unset label
set style line 1 lc '#889900' pt 5   # square
set style line 2 lc '#009900' pt 5   # circle
set style line 3 lc '#ff9900' pt 5   # triangle
set style line 4 lc '#df3dc0' pt 5
set label 3 'color' at 0.9,1 right
plot [0.5:4.5][0.5:1.5] "<echo '1 1'"   with points ls 1, \
     "<echo '2 1'"   with points ls 2, \
     "<echo '3 1'"   with points ls 3, \
     "<echo '4 1'"   with points ls 4