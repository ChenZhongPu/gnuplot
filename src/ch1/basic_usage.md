# Basic Usage

This article is adapted from [Basic Usage](https://matplotlib.org/stable/tutorials/introductory/usage.html).

This tutorial covers some basic usage patterns and best practices to help you get started with gnuplot.

Once gnuplot is installed, you can use it in either interactive or batch mode. As for the interactive, it can usually be invoked by issuing the `gnuplot` command at the shell prompt.

Once launched, gnuplot displays a welcome message and then replaces the shell prompt with a `gnuplot>` prompt. Anything entered at this prompt is interpreted as gnuplot commands until you issue an `exit` or `quit` command,

Also, the scripts for plotting can be stored in a plain text file (usually suffixed with `.gp`), and it can be executed by 

```sh
gunplot> load "<file-name>.gp"
```
Note that both single quote and double quote are accepted.

## A simple example
The most important command in gnuplot is `plot`. To draw a line using several points:

```
$data << EOD
1 1
2 4
3 2
4 3
EOD
plot $data with lines
```

![simple_example](img/simple_example.svg)

As you can see, the default *style* of gnuplot is different from that of matplotlib. For example,

- The line is thinner.
- The font of labels on axes is smaller.
- The legend is displayed.
- ...

Only a few extra commands are required to custom those styles. For example, `unset key` means "*do not display the legend*".

## Parts of a Figure
Here are the components of a gnuplot Figure.

![Anatomy of a figure](img/anatomy.svg)

## Types of inputs to plotting functions
Plotting command (`plot`) expects a file or a mathematical function as the input. For example, the `plot sin(x)` is able to output a figure of *sin* whose default range of *x* is from -10 to 10. In practice, the input data is usually stored in a file.

To plot the scatter figure as shown [here](https://matplotlib.org/stable/tutorials/introductory/usage.html#types-of-inputs-to-plotting-functions), we can prepare the data containing coordinates, colors and sizes (stored in `data/scatter.dat`):

```
# a(x) c(color) d(size) b(y)
0	49	134.685132	-2.961981
1	20	131.086051	4.801881
2	44	51.744207	-6.497267
3	20	1.665814	-11.207766
```

And the following code (`script/scatter.gp`) can output the similar plot:

```
unset key
set xlabel 'entry a'
set ylabel 'entry b'
set xrange [-5:55]

plot '../data/scatter.dat' using 1:4:($3/30.0):2 \
with points pt 22 ps variable lc variable
```
Note that the size (3rd column) generated is too large for gnuplot, so it is divided by 30.

<img src="img/scatter.svg" width="80%">