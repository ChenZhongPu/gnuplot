set terminal svg size 1200,800 enhanced font 'Verdana,20'
set out "../../src/fundamental/img/population.svg"
unset key
set noborder
set tics scale 0
set datafile separator ","
set yrange [0:*]
set style fill solid
myBoxWidth = 0.8
set offsets 0,0,0.5-myBoxWidth/2.,0.5

regions = "North Northeast Southeast Centersouth Southwest Northwest"
array colors[6]
colors[1] = 0x1b9e77
colors[2] = 0xd95f02
colors[3] = 0x7570b3
colors[4] = 0xe7298a
colors[5] = 0x66a61e
colors[6] = 0xe6ab02

f(x) = (x eq word(regions, 1))? colors[1]: f1(x)
f1(x) = (x eq word(regions, 2))? colors[2]: f2(x)
f2(x) = (x eq word(regions, 3))? colors[3]: f3(x)
f3(x) = (x eq word(regions, 4))? colors[4]: f4(x)
f4(x) = (x eq word(regions, 5))? colors[5]: colors[6]

set xrange [-18:20]
set xtics -20,10,20

set grid xtics

set label 1 'region' at 12, 25

do for[k=1:words(regions)] {
    set object k rectangle at 12,24-k+1 size 0.8,0.8 fc rgb colors[k]
    set label k+1 word(regions,k) at 13,24-k+1
}

plot '../../data/sort_population' using 2:0:(0):2:($0-myBoxWidth/2.):($0+myBoxWidth/2.):(f(stringcolumn(3))):ytic(1) with boxxyerror lc rgb var