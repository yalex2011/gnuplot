#!/usr/bin/env python3
import glob
commands=open("gnuplot_in", 'w')
print("""set xlabel "Label"
set ylabel "Label2"
set term png""", file=commands)

for datafile in glob.iglob("Your_file_glob_pattern"):
    # Here, you can tweak the output png file name.
    print('set output "{output}.png"'.format( output=datafile ), file=commands )
    print('plot "{file_name}" using 1:2:3:4 with errorbars title "Graph title"'.format( file_name = datafile ), file=commands)

commands.close()
