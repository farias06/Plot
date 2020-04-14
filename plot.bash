#!/usr/bin/gnuplot

set terminal png font "helvetica"
set output 'speed_softplayer_graph.png'

set title "Seep with softplayer.com "
set timestamp "Last updated: %m/%d/%Y, %H:%M" top

set xlabel "Date (%d)"
set timefmt "%Y/%m/%d %H:%M"
set xdata time
set format x "%d"

set ylabel "Kbit/s"
set yrange [ 0 : ]

set key left
set grid
set datafile separator "\t"

plot '/var/run/speed.log'     using 1:2 t 'Used' with lines

