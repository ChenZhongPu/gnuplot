set terminal svg size 800,300 font 'Verdana,20'
set out "../../src/fundamental/img/accent_color.svg"

set multiplot layout 2,1
unset key
unset border
unset xtics
unset ytics


set style fill solid
set xrange [0.5:7.5]

set title 'Grays with accents'
$data << EOD
0x999999 # gray60
0xb3b3b3 # gray70
0xcccccc # gray80
0xe5e5e5 # gray90
0xC95C4F
0x83A121
0x6B8AD5
EOD

plot $data u ($0 + 1):(0):(0.4):(0.4):1 w boxxy lc rgb variable

set title 'ColorBrewer Accent'
$data1 << EOD
0x7FC97F
0xBEAED4
0xFDC086
0xFFFF99
0x386CB0
0xF0027F
0xBF5B17
EOD

plot $data1 u ($0 + 1):(0):(0.4):(0.4):1 w boxxy lc rgb variable