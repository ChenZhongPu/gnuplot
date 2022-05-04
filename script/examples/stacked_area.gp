set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/ch1/img/stacked_area.png"
$data << EOD
500 330 180
550 340 200
560 310 260
607 360 300
520 350 288
550 380 260
EOD
unset key
set style fill transparent solid 0.5 noborder
plot $data u 1 with filledcurves y=0, \
$data u 2 with filledcurves y=0, \
$data u 3 with filledcurves y=0