set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/amount.svg"

set multiplot layout 1,3
unset key

$data << EOD
2.5
1.5
0.5
EOD

set xrange [-0.5:3.5]
set yrange [0:3.3]
set ytics 0,1,3
set border 2
unset xtics
set ytics out
set ytics nomirror
set format y ""
set style fill solid 0.5
set boxwidth 0.8
set title 'Bars'
plot $data using 1 with boxes fc rgb '#243400'


unset ytics
set yrange [0:*]
set border 1
set xrange [0:3.3]
set xtics 0,1,3
set xtics out
set xtics nomirror
set format x ""
myBoxWidth = 0.8
set offsets 0,0,0.5-myBoxWidth/2.,0.5
plot $data using 1:0:(0):1:($0-myBoxWidth/2.):($0+myBoxWidth/2.) \
with boxxyerror lc rgb '#243400' 


$data1 << EOD
0.5 1
1.5 2
2.5 3
EOD
set title 'Dots'
plot $data1 using 1:2 with points pt 7 lc rgb '#66243400' 