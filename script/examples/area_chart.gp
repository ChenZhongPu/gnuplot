set terminal pngcairo transparent size 1600,1000 enhanced font 'Verdana,20'
set out "../../src/ch1/img/area_chart.png"
$data << EOD
820
932
901
934
1290
1330
1320
EOD
unset key
set style fill solid 0.4 noborder
plot $data with filledcurves y=0 lc rgb "forest-green"