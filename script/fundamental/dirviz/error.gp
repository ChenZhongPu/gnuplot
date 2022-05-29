set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/error.svg"

set multiplot layout 1,3
unset key

$data << EOD
1 1 0.2
2 4 0.2
3 3 0.3
EOD

set xrange [0.5:4]
set yrange [0:5]
unset ytics
set border 1
set format x ''
set format y ''
set xtics 1
set xtics scale 0.5
set xtics out
set xtics nomirror
set title 'Error Bars'
plot $data with xerrorbars pt 7 ps 0.5 lc rgb '#6293d2' 



set boxwidth 0.8
set border 2
set xrange [0:4]
set ytics 1
set ytics scale 0.5
set ytics out 
set ytics nomirror
unset xtics
set title 'Error Bars'
set style fill solid 0.5 noborder
plot $data with boxerrorbars fc rgb '#6293d2'

$data1 << EOD
1 1 0.2 0.3
2 4 0.2 0.3
3 3 0.3 0.3
EOD

set border 3
set xtics 1
set xtics scale 0.5
set xtics out
set xtics nomirror
set title '2D Error Bars'
plot $data1 with xyerrorbars pt 7 ps 0.5 lc rgb '#6293d2' 