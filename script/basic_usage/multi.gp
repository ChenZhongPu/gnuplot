set multiplot layout 1,3 title "Multiplot layout 1, 3" font ",14"
set xtics rotate
set bmargin 5
#
set title "Plot 1"
unset key
plot sin(x)/x
#
set title "Plot 2"
unset key
plot '../../data/silver.dat' using 1:2
#
set title "Plot 3"
set style histogram columns
set style fill solid
set key autotitle column
set boxwidth 0.8
set format y "    "
set tics scale 0
plot '../../data/immigration.dat' using 2 with histograms , \
     '' using  7 with histograms , \
     '' using  8 with histograms , \
     '' using 11 with histograms 
#
unset multiplot