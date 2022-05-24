set terminal svg size 1200,800 font 'Verdana,20'
set out "../../src/fundamental/img/sports.svg"

set datafile separator ","
set key out

set style line 11 lc rgb '#808080' lt 1
set border 3 ls 11
set tics nomirror
set grid
set xrange [160:220]
set ytic 5
set style line 1 lc rgb '#808080' pt 9
set style line 2 lc rgb '#808080' pt 20
set style line 3 lc rgb '#BD3828' pt 7
set style line 4 lc rgb '#808080' pt 11

set xlabel 'Height'
set ylabel 'BMI'

bmi(height, weight) = weight / ((height / 100)**2)

plot '../../data/usa2018m.csv' every ::1 \
u 6:(stringcolumn(14) eq "Swimming"? bmi($6, $7):1/0) w points ls 1 t 'Swimming', \
'' every ::1 u 6:(stringcolumn(14) eq "Football"? bmi($6, $7):1/0) w points ls 2 t 'Football', \
'' every ::1 u 6:(stringcolumn(14) eq "Basketball"? bmi($6, $7):1/0) w points ls 4 t 'Basketball', \
'' every ::1 u 6:(stringcolumn(14) eq "Boxing"? bmi($6, $7):1/0) w points ls 3 t 'Boxing'