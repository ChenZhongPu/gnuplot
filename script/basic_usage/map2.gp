unset key
set xrange [0:128]
set yrange [0:128]
set cbtics scale 0
set tics nomirror out
plot '../../data/z.txt' matrix with image, '../../data/cont.dat' with lines lw 1.5