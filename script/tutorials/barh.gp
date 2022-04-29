$data << EOD
"Barton LLC" 109438.50
"Frami, Hills and Schmidt" 103569.59
"Fritsch, Russel and Anderson" 112214.71
"Jerde-Hilpert" 112591.43
"Keeling LLC" 100934.30
"Koepp Ltd" 103660.54
"Kulas Inc" 137351.96
"Trantow-Barrows" 123381.38
"White-Trantow" 135841.99
"Will LLC" 104437.60
EOD

set yrange [0:*]
set style fill solid
unset key
myBoxWidth = 0.8
set offsets 0,0,0.5-myBoxWidth/2.,0.5

plot $data using 2:0:(0):2:($0-myBoxWidth/2.):($0+myBoxWidth/2.):($0+1):ytic(1) \
with boxxyerror lc var