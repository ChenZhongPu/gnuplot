# More Tutorials
Matplotlib provides both the `pyplot` API and the object-oriented API, but gnuplot only offers *command* style, which is more like the `pyplot` API of Matplotlib. So, generally, this article has no much difference with [Basic Usage](basic_usage.md), and I only show some script to plot these figures shown in [Pyplot tutorial](https://matplotlib.org/stable/tutorials/introductory/pyplot.html). Readers can skip this section if they have already understood [Basic Usage](basic_usage.md) because most of the usages and concepts are repeated.

## Intro to plot

`plot` is the most important command in gnuplot.

```
$y << EOD
1
2
3
4
EOD
set ylabel 'some numbers'
plot $y with lines
```

<img src="img/2line.svg" alt="2-line" width="80%">

You may be wondering why the x-axis ranges from 0-3 and the y-axis from 1-4. If you only provide one column for `plot`, gnuplot assumes it is a sequence of y values, automatically generates the x values (starting from 0) for you.

> 

To plot x versus y, you can write:

```
$data << EOD
1 1
2 4 
3 9
4 16
EOD
plot $data u 1:2 w l
```

<img src="img/2linexy.svg" alt="2-line-xy" width="80%">

Note that we are using the abbreviations:

- `u`: using
- `w`: with
- `l`: lines

### Formatting the style of your plot
It is very flexible to set the color and line type of the plot.

```
$data << EOD
1 1
2 4 
3 9
4 16
EOD
unset key
set xrange [0:6]
set yrange [0:20]
set xtics 0,1,6
set ytics 0,2.5,20
set format y "%.1f"
plot $data u 1:2 w p pt 7 lc 'red' ps 2
```

<img src="img/2pointxy.svg" alt="2-point-xy" width="80%">

Here we specify the `lt` (*linetype*), `pt` (*pointtype*), `lc` (*linecolor*) and `ps` (*pointsize*). And we also set the ranges and tics for X and Y.

The example below illustrates plotting several lines with different format styles:

```
unset key
set xrange [0:5]
set samples 25
set yrange [-1:120]
set ytics 0,25
plot x w l dt 2 lw 3 lc 'red', \
x**2 w p pt 5 ps 1.5 lc 'blue', \
x**3 w p pt 9 ps 2 lc '#008000'
```

<img src="img/2linestyle.svg" alt="2-line-style" width="80%">

## Plotting with keyword strings
Gnuplot does not support such feature, but readers can refer to [Types of inputs to plotting functions](basic_usage.md#types-of-inputs-to-plotting-functions) to learn how to plot the scatter with varying sizes and colors.

<img src="img/2scatter.svg" width="80%" alt="2-scatter">

As we can see, we can specify the column using `$i` for `plot`, and this feature is like *keyword strings* in Matplotlib.

## Plotting with categorical variables

```
set terminal qt size 900,300 font ',10'
set multiplot layout 1,3 title 'Categorical Plotting' font ',14'
unset key
set xrange [-1:3]
set yrange [0:110]
set xtics ('group\\\_a' 0, 'group\\\_b' 1, 'group\\\_c' 2)
set tics nomirror out
$y << EOD
1
10
100
EOD
set style fill solid
set boxwidth 0.8
plot $y with boxes

plot $y with points pt 7 ps 2

plot $y with lines lw 2

unset multiplot
```

<img src="img/2categorical.svg" alt="2-categorical">

Note that the *qt* terminal is in *enhanced text* mode, so we need to add extra `\\\` to display the underscore. Another solution is to set *noenhanced*.