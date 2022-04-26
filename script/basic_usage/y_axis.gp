f1(x) = 500 * x
f2(x) = cos(2 * pi * x)
set xrange [0:5]
set samples 1200
plot f2(x) w lines axis x1y1 lw 2 t 'Sine(left)', f1(x) w lines axis x1y2 lw 2 t 'Staight(right)'