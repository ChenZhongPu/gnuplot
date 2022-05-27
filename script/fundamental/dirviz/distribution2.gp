set terminal svg size 900,300 font 'Verdana,20'
set out "../../../src/fundamental/img/distribution2.svg"

set datafile separator ","
set multiplot layout 1,3
unset key
set format x ''
set format y ''
set ytics nomirror out 0.75
set border 2
unset xtics

set title 'Boxplot'
plot '../../../data/iris.data' u (1):2:(0.5):5 with boxplot

set linetype  9 lc "#60bbaa44" ps 0.5 pt 7
set linetype 10 lc "#6033bbbb" ps 0.5 pt 7
set linetype 11 lc "#60d54292" ps 0.4 pt 7


iris = "Iris-setosa Iris-versicolor Iris-virginica"
f(y,n,i) = (n eq word(iris, i))? y : (1/0)

J = 0.1
set title 'Strip Charts'
plot for [i=1:3] '../../../data/iris.data' u  (i + J*invnorm(rand(0))):(f($2, stringcolumn(5),i)) lt (8+i)


set ytics 20
set title 'Overlapping Density'
plot for [i=1:3] '../../../data/iris.data' u (f($2, stringcolumn(5),i)):(1) smooth kdensity bandwidth 0.1 with filledcurves above y lt (8+i)