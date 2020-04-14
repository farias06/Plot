#!/usr/bin/gnuplot

set terminal png font "helvetica"
set output 'speed_X_graph.png'

set title "Seep with softplayer.com "
set timestamp "Last updated: %m/%d/%Y, %H:%M" top

set style line 2 lc rgb '#0ce90b' lt 1 lw 1.5 # --- green
set style line 3 lc rgb '#09e0b3' lt 1 lw 1.5 #      .
set style line 4 lc rgb '#065fd8' lt 1 lw 1.5 #      .
set style line 5 lc rgb '#4e04cf' lt 1 lw 1.5 #      .
set style line 6 lc rgb '#c702a9' lt 1 lw 1.5 #      .
set style line 7 lc rgb '#bf000a' lt 1 lw 1.5 # --- red

set multiplot layout 1,2

set xlabel "Date (%d)"
set timefmt "%Y/%m/%d %H:%M"
set xdata time
set format x "%d"

set ylabel "Kbit/s"
set yrange [ 0 : ]

set key left
set grid
set datafile separator "\t"

plot '/var/run/speed.log'     using 1:2 t 'Used' with lines ls 2
plot '/var/run/speed.log'     using 1:3 t 'Used' with lines ls 7
