set terminal svg size 1200,300 enhanced font 'Verdana,22'
set out "../../src/fundamental/img/precip2.svg"

$Data << EOD
# location  Jan   Feb   Mar   Apr   May   Jun   Jul   Aug   Sep   Oct   Nov   Dec
Atlantis    1.50  1.57  1.85  2.15  1.87  1.05  1.70  1.65  1.97  1.71  1.53  1.15
Mordor      4.44  4.71  4.74  3.50  3.43  4.98  4.29  4.55  3.93  3.34  3.74  4.88
Wonderland  8.55  9.59  5.65  0.13  9.33  4.70  8.94  7.74  4.49  6.26  0.96  1.20
EOD

unset border
set xlabel 'month'
set xrange [0.5:12.5]

# set yrange [:] reverse
set ytics

set palette rgbformula -7,2,-7
set cbrange [0:10]
set cblabel "precipitation"

MonthName(n) = strftime("%b",24*3600*28*n)      # get the month name from 1..12
set key noautotitle
set style fill solid 1.0 border rgb "white"
set size ratio -1       # make the boxes squares

plot for [i=1:12] $Data u (i):0:(0.5):(0.5):i+1:  \
        xtic(MonthName(i)):ytic(1) w boxxy fc palette lw 2