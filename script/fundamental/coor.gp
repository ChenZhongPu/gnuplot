set terminal svg size 981,800 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/coor.svg"

unset key
unset border
set tics scale 0
set xtics -2,1,3
set ytics -2,1,2
set format x ""
set format y ""
set grid
set xrange [-2.2:3.2]
set yrange [-2.2:2.2]
set zeroaxis lt -1 lw 2
set xlabel 'x axis'
set ylabel 'y axis'
$data << EOD
-1 -1
0   0
2   1
EOD
set size ratio -1
set arrow 1 from 0,1 to 2,1 nohead
set arrow 2 from 2,1 to 2,0 nohead
set label 1 "(2,1)" at 2,1 offset 0.5,0.5
set label 2 "x = 2" at 1,1.1
set label 3 "y = 1" at 2.1,0.5
set label 4 "(0,0)" at 0,0 offset 0.5,0.5
set label 5 "(-1,-1)" at -1,-1 offset 0.5,0.5
set arrow 3 from -1,0 to -1,-1 nohead
set arrow 4 from -1,-1 to 0,-1 nohead
set label 6 "x = -1" at -0.5,-1.1
set label 7 "y = -1" at -1.4,-0.5
plot $data with points pt 7 lc "#0072B2"