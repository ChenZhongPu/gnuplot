set terminal svg size 1000,600 enhanced font 'Verdana,20'
set out "pre.svg"
set size ratio -1
unset key
unset border
set tics nomirror
unset ytics
set datafile separator ","

set palette defined ( 0 'magenta', 2 'red', 4 'yellow', 6 'green', 8 'cyan', 10 'blue')
set cbrange [0 : 10]
set cblabel "precipitation"

set xrange [0:13]
set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, \
"Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)
set label 1 'city 1' at 0.5,0 right
set label 2 'city 2' at 0.5,1 right
set label 3 'city 3' at 0.5,2 right

set style fill solid
plot '../../data/city.csv' u ($0 + 1):(0):(0.45):(0.45):3 w boxxyerrorbars lc palette, \
'../../data/city2.csv' u ($0 + 1):(1):(0.45):(0.45):3 w boxxyerrorbars lc palette, \
'../../data/city3.csv' u ($0 + 1):(2):(0.45):(0.45):3 w boxxyerrorbars lc palette,