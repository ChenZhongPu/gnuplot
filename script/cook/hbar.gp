set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/cook/img/hbar.png"
$data << EOD
"Barton" 109438.50
"Frami" 103569.59
"Fritsch" 112214.71
"Jerde" 112591.43
"Keeling" 100934.30
"Koepp" 103660.54
"Kulas" 137351.96
"Trantow" 123381.38
"White" 135841.99
"Will" 104437.60
EOD
unset key
set bmargin 4
set tmargin 2
set style fill solid border -1
set boxwidth 0.8
set y2range [0:*]
set y2tics
set xtics offset 0,-0.5 right
set xtics rotate by 90
set y2tics rotate by 90
set y2tics offset 0,-1
plot $data u 2:xtic(1) axes x1y2 with boxes