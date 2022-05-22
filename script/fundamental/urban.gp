set terminal svg size 800,600 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/china-urban.svg"

unset key
set border 0
unset xtics
unset ytics

set style line 1 lc rgb '#999999' lt 1 lw 0 # --- grey 
set style line 2 lc rgb '#ffffff' lt 1 lw 0.5 # --- white

stats '../../data/china.txt' u 1 prefix "M" nooutput

set palette defined ( 0 '#1984c5',\
    	    	      1 '#22a7f0',\
		      2 '#63bff0',\
		      3 '#a7d5ed',\
		      4 '#e2e2e2',\
		      5 '#e1a692',\
		      6 '#de6e56',\
			  7 '#e14b31',\
			  8 '#c23728')


URB = ''
stats '../../data/urban.txt' u 2:(URB = URB.sprintf(' %i',$2)) prefix 'U' nooutput

set cbrange [0:100]
set cblabel "Urban population (%)"
set cbtics 0,25,100

f(idx) = word(URB, idx + 1) + 0

set style fill solid
set xrange [M_min:M_max]
plot for [idx=0:32] '../../data/china.txt' i idx u 1:2:(f(idx)) w filledcurves lc palette lw 0, '' u 1:2 w lines ls 2