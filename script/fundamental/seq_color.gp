set terminal svg size 900,300 font 'Verdana,20'
set out "../../src/fundamental/img/seq_color.svg"

set multiplot layout 2,1
unset key
unset border
unset xtics
unset ytics


set style fill solid
set xrange [0.5:7.5]

set title 'ColorBrewer Blues'
$data << EOD
0x084594
0x2171B5
0x4292C6
0x6BAED6
0x9ECAE1
0xC6DBEF
0xDEEBF7
EOD

plot $data u ($0 + 1):(0):(0.4):(0.4):1 w boxxy lc rgb variable

set title 'Viridis'
$data1 << EOD
0x440154
0x472c7a
0x3b518b
0x21908d
0x27ad81
0xaadc32
0xfde725
EOD

plot $data1 u ($0 + 1):(0):(0.4):(0.4):1 w boxxy lc rgb variable