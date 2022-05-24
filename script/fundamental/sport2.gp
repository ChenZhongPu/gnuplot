set terminal pngcairo transparent size 1200,800 font 'Verdana,20'
set out "../../src/fundamental/img/sports.png"

# set key out
unset key
set style line 11 lc rgb '#808080' lt 1
set border 3 ls 11
set tics nomirror
set grid
# set xrange [160:220]
# set ytic 5
set style line 1 lc rgb '#80808080' pt 9 ps 3
set style line 2 lc rgb '#80808080' pt 20 ps 3
set style line 3 lc rgb '#D0BD3828' pt 7 ps 3
# set style line 4 lc rgb '#808080' pt 11

# set xlabel 'Height'
# set ylabel 'BMI'
set yrange [4:9]
$data << EOD
5   5.1
5.3 6.8
6   6
EOD

$data2 << EOD
5 5
7 7
8 6
EOD

$data3 << EOD
5.5 7
6 6
7 7.1
EOD

# bmi(height, weight) = weight / ((height / 100)**2)

plot $data u 1:2 w points ls 1, $data2 u 1:2 w points ls 2, \
$data3 u 1:2 w points ls 3