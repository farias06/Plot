#!/usr/bin/gnuplot

set terminal png font "helvetica"
set output 'speed_google_graph.png'

set title "Seep with google "
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

plot '/var/run/speed.log'     using 1:3 t 'Used' with lines

