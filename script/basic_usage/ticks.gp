set multiplot layout 2,1
unset key

set title 'Automatic ticks'
plot '../../data/artists_data.dat' using 2 with lines

set title 'Manual ticks'
set ytics -1.5,1.5,1.5
set xtics ("zero" 0, "30" 30, "sixty" 60, "90" 90)
plot '../../data/artists_data.dat' using 2 with lines