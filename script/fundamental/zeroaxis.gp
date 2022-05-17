set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/zeroaxis.png"

unset key
unset border
unset xtics
unset ytics
set zeroaxis lt -1 lw 2
set arrow 1 from 1,0 to 2,0 nofilled size 0.1,45,60 lw 2
set arrow 2 from 0,1 to 0,2 nofilled size 0.1,45,60 lw 2
set label 1 "x" at 1.9,-0.2 font ',40'
set label 2 "y" at -0.2,2 font ',40'
plot [-2:2][-2:2] 5