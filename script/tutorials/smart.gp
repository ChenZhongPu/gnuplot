set terminal qt font ',16'
set title "Histogram of IQ"
set xlabel 'Smarts'
set ylabel 'Probability'
set label '{/Symbol m} = 100, {/Symbol s} = 15' at 60,600
unset key
set xrange [40:160]
set grid
set style fill solid 0.75
bin(x,s)  = s*floor(x/s)
binc(x,s) = s*(floor(x/s)+0.5)
set boxwidth 120/50.
stats '../../data/smart.dat' u 1 noout
plot '../../data/smart.dat' using (binc($1,120/50.)):(1./(120/50.*STATS_records)) smooth frequency with boxes fc '#4DAF4A'