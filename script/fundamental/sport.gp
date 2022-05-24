set terminal svg size 1200,800 font 'Verdana,24'
set out "../../src/fundamental/img/sports.svg"

set datafile separator ","
set key out

set style line 11 lc rgb '#808080' lt 1
set border 3 ls 11
set tics nomirror
set grid
set xrange [160:220]
set ytic 5
set style line 1 lc rgb '#80808080' pt 9 # triangle
set style line 2 lc rgb '#808080' pt 8 # triangle border

set style line 3 lc rgb '#80808080' pt 20 # sqaure
set style line 4 lc rgb '#808080' pt 19 # sqaure border

set style line 5 lc rgb '#80808080' pt 11 # triangle 2
set style line 6 lc rgb '#808080' pt 10 # triangle 2 border

set style line 7 lc rgb '#60BD3828' pt 7 # circle
set style line 8 lc rgb '#BD3828' pt 6 # circle border

set pointsize 1.2

set xlabel 'Height'
set ylabel 'BMI'

bmi(height, weight) = weight / ((height / 100)**2)

sports = "Baseball Football Basketball Boxing"
plot for [i=1:words(sports)] '../../data/usa2018m.csv' every ::1 \
u 6:(stringcolumn(14) eq word(sports, i)? bmi($6, $7):1/0) w points ls i*2-1 t word(sports, i), \
for [i=1:words(sports)] '' every ::1 u 6:(stringcolumn(14) eq word(sports, i)? bmi($6, $7):1/0) w points ls i*2 notitle