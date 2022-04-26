f(x) = cos(2 * pi * x)
set link x2 via x*180/pi inverse x*pi/180
set x2tics 0,50,300
set xtics nomirror
set xrange [0:5]
set samples 1200
set xlabel 'Angle [°]'
set x2label 'Angle [rad]'
plot f(x) w lines axis x1y1 lw 2