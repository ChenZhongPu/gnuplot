set terminal svg size 1200,800 enhanced font 'Verdana,16'
set output '../../src/cook/img/discrete.svg'
unset key
set grid
f(x) = 0.5**x
array A[10]
do for [i=1:10] {
    A[i] = f(i)
}
set xrange [0:11]
set xtics 1
set ytics 0.1
set style fill solid 0.8
set boxwidth 0.8
plot A using 1:2 with boxes