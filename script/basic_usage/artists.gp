unset key
# set style line 1 dt 2 lw 4 lc rgbcolor 'blue'
set style line 1 dt 2 lw 4 lc 30
set style line 2 dt 4 lw 2 lc rgbcolor 'orange'
plot '../../data/artists_data.dat' using 1 smooth cumulative ls 1, '' using 2 smooth cumulative ls 2