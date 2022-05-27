set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/xy.svg"

set multiplot layout 1,3
unset key
set border 3
set tics nomirror out

nsample = 20
set print $data
do for [i=1:nsample] {
    x = i * rand(0)
    y = x + 3 * rand(0)
    print sprintf("%.1f %.1f", x, y)
}
set format x ''
set format y ''
set tics 5
set tics scale 0.5
set title 'Scatterplot'
plot $data with points pt 7 ps 0.5 lc rgb '#66243400'

set print $data2
do for [i=1:nsample] {
    x = i * rand(0)
    y = x + 3 * rand(0)
    z = rand(0) + 0.2
    print sprintf("%.1f %.1f %.1f", x, y, z)
}
set title 'Bubble Chart'
plot $data2 u 1:2:3 with points pt 7 ps var lc rgb '#66243400' 

set print $data3
do for [i=1:nsample] {
    x = i * rand(0)
    y = x + 1 * invnorm(rand(0))
    print sprintf("%.1f %.1f", x, y)
}

set title 'Paired scatterplot'
plot x lc rgb '#243400', $data3 with points pt 7 ps 0.5 lc rgb '#66243400'