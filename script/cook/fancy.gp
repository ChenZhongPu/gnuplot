set terminal svg size 800,400 font 'Verdana, 14' rounded dashed
set output '../../src/cook/img/fancy.svg'

# define axis
# remove border on top and right and set color to gray
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

# color definitions
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green

set xlabel 'x axis label'
set ylabel 'y axis label'

set xrange [0:5]
plot sin(x) ls 1, cos(x) ls 2