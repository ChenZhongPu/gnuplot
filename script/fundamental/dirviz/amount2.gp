set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/amount2.svg"

set multiplot layout 1,3
unset key

$data << EOD
group1 1.5 2.2 1.2
group2 2 2.5 0.5
group3 3 2 1.5
EOD

set style data histogram
set style fill solid border -1
set yrange [0:3.3]
set ytics 0,1,3
set border 2
unset xtics
set ytics out
set ytics nomirror
set format y ""
set title 'Group Bars'
plot $data u 2 lc rgb '#243400', \
"" u 3 lc rgb '#66243400', \
"" u 4 lc rgb '#AA243400'


set lt 1 lc rgb '#243400'
set lt 2 lc rgb '#66243400'
set lt 3 lc rgb '#AA243400'

set style histogram columnstacked
set boxwidth 0.6 absolute
set yrange [0:*]
set ytic 1
set title 'Stack Bars'
plot $data u 2, \
"" u 3, \
"" u 4

set palette maxcolors 4
set palette defined ( 0 '#E41A1C',\
    	    	      1 '#377EB8',\
		      2 '#4DAF4A',\
		      3 '#984EA3')

set cbrange [0:3]
set title 'Heatmap'
unset colorbox
unset tics
unset border
set xrange [-0.5:3.5]
set yrange [-0.5:3.5]
set style fill solid 1.0 border rgb "white"
set size ratio -1       # make the boxes squares
plot for [i=1:3] $data u (i):0:(0.5):(0.5):i+1 w boxxy fc palette lw 2