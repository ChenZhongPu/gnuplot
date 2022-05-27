set terminal svg size 600,300 font 'Verdana,20'
set out "../../../src/fundamental/img/xy2.svg"

set multiplot layout 1,2

unset key
set border 3
set tics scale 0.5
set tics nomirror out
set format x ''
set format y ''

$data << EOD
1 1
1.5 1.5
2 3
2.5 2.1
3 3.5
EOD
set title 'Line Graph'
plot $data with linespoints pt 7 lc '#243400'

nsample = 20
set print $data
do for [i=1:nsample] {
    x = i * rand(0)
    do for [i=1:10] {
        y = x + 3 * invnorm(rand(0))
        print sprintf("%.1f %.1f", x, y)
    }
    
}
set title 'Smooth Line Graph'
plot $data with points pt 7 ps 0.5 lc rgb '#66243400', "" smooth csplines lw 2