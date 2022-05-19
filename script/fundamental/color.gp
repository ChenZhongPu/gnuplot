set terminal svg size 900,300 font 'Verdana,20'
set out "../../src/fundamental/img/color.svg"

set multiplot layout 3,1
unset key
unset border
unset xtics
unset ytics


set style fill solid
set xrange [0.5:7.5]

set title 'Okabe Ito'
$data << EOD
1 0xe69f00 # orange
2 0x56b4e9 # sky blue
3 0x009e73 # bluish green
4 0xf0e442 # yellow
5 0x0072b2 # blue
6 0xd55e00 # vermillion
7 0xcc79a7 # reddish purple
EOD
plot $data u 1:(0):(0.4):(0.4):2 w boxxy lc rgb variable

set title 'ColorBrewer Dark2'
$data1 << EOD
1 0x1b9e77
2 0xd95f02
3 0x7570b3
4 0xe7298a
5 0x66a61e
6 0xe6ab02
7 0xa6761d
EOD
plot $data1 u 1:(0):(0.4):(0.4):2 w boxxy lc rgb variable

set title 'gnuplot'
$data1 << EOD
1
2
3
4
5
6
7
EOD
plot $data1 u 1:(0):(0.4):(0.4):1 w boxxy lc variable