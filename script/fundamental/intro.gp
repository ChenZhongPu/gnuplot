set terminal pngcairo transparent size 800,800 enhanced font 'Verdana,16'
set output '../../src/fundamental/img/intro.png'
$data << EOD
A 3
B 5
C 4
EOD
unset key
set border 3
set tics out nomirror
set style fill solid 0.9
set yrange [0:5]
set ylabel 'Value'
set boxwidth 0.8
plot $data u 2:xtic(1) with boxes fc '#56B4E9'