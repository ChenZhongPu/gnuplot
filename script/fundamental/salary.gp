set terminal svg size 800,600 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/china-salary.svg"

unset key
set border 0
unset tics

set style line 1 lc rgb '#999999' lt 1 lw 0 # --- grey 
set style line 2 lc rgb '#ffffff' lt 1 lw 0.5 # --- white

stats '../../data/china.txt' u 1 prefix "M" nooutput

set palette defined (1 '#C6DBEF',\
		      2 '#9ECAE1',\
		      3 '#6BAED6',\
		      4 '#4292C6',\
		      5 '#2171B5',\
		      6 '#084594' )

SALA = ''
stats '../../data/salary.txt' u 2:(SALA = SALA.sprintf(' %i',$2)) prefix 'S' nooutput

set cbrange [S_min_x:S_max_x]
set cblabel ""

f(idx) = word(SALA, idx + 1) + 0

set style fill solid
set xrange [M_min:M_max]
plot for [idx=0:32] '../../data/china.txt' i idx u 1:2:(f(idx)) w filledcurves lc palette lw 0, '' u 1:2 w lines ls 2