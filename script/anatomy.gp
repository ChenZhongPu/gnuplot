set terminal qt font ',16'

set title 'Anatomy of a figure'
set xrange [0:4]
set xtics 0,1,4
set mxtics 4
set xlabel 'X axis label'

set yrange [0:4]
set ytics 0,1,4
set mytics 4
set tics nomirror
set ylabel 'Y axis label'

set grid

set arrow 1 from 3.4, 3.2 to 3.4,3.5 empty size 0.1,30,60 lw 1.5 
set label 1 'Key' at 3.4,3.2 center textcolor rgb "#0000FF" offset 0,-0.5

set arrow 2 from 2.8,4.3 to 2.55,4.3 empty size 0.1,30,60 lw 1.5
set label 2 'Title' at 2.8,4.3 textcolor rgb "#0000FF" offset 2,0

set arrow 3 from 2.5,-0.5 to 2.35,-0.5 empty size 0.1,30,60 lw 1.5 
set label 7 'X tick label' at 2.5,-0.5 textcolor rgb "#0000FF" offset 1,0

circle_label = "Grid Line 'Minor tick' 'Majro tick'"
circle_x = '3  1.5 0 0'
circle_y = '3 3 2.5 1'

set style fill border lc 'black'
set for [i=1:words(circle_x)] object i circle at word(circle_x, i),word(circle_y, i) size 0.1

set for [i=1:words(circle_x)] label i+2 word(circle_label,i) at word(circle_x, i),word(circle_y, i) offset 0,-1.5 textcolor rgb "#0000FF" 


y1(x) = 3 + cos(x)
y2(x) = 1 + cos(1 + x/0.75)/2
y3(x) = y2(x) + rand(0) * (y1(x) - y2(x))

plot y1(x) lc rgbcolor 'blue' t 'Blue signal', y2(x) lc rgbcolor 'red' t 'Red signal', y3(x) with points pt 6 lc 24 t ''