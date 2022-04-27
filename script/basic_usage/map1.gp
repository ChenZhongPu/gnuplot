unset key
set xrange [0:128]
set yrange [0:128]
set cbrange [-1:1]
set cbtics scale 0
set palette defined (-1 'blue', 0 'white', 1 'red')
set tics nomirror out
plot '../../data/z.txt' matrix with image