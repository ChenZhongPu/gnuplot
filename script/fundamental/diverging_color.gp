set terminal svg size 900,300 font 'Verdana,20'
set out "../../src/fundamental/img/div_color.svg"

set multiplot layout 3,1
unset key
unset border
unset xtics
unset ytics


set style fill solid
set xrange [0.5:7.5]

set title 'CARTO Earth'
$data << EOD
0xA16928
0xbd925a
0xd6bd8d
0xedeac2
0xb5c8b8
0x79a7ac
0x2887a1
EOD
plot $data u ($0+1):(0):(0.4):(0.4):1 w boxxy lc rgb variable

set title 'ColorBrewer PiYG'
$data1 << EOD
0xC51B7D
0xDE77AE
0xFDE0EF
0xE6F5D0
0xB8E186
0x7FBC41
0x4D9221
EOD
plot $data1 u ($0+1):(0):(0.4):(0.4):1 w boxxy lc rgb variable

set title 'Blue Red'
$data2 << EOD
0x1984c5
0x63bff0
0xa7d5ed
0xe2e2e2
0xe1a692
0xde6e56
0xc23728
EOD
plot $data2 u ($0+1):(0):(0.4):(0.4):1 w boxxy lc rgb variable