# gnuplot

This assumes your files are all in the current directory. The above is a bash script that will generate your graphs. Personally, I usually write a gnuplot command file (call it, say, gnuplot_in), using a script of some form, with the above commands for each file and plot it using gnuplot < gnuplot_in.

To give you an example, in python:
where Your_file_glob_pattern is something that describes the naming of your datafiles, be it * or *dat. Instead of the glob module, you can use os as well of course. Whatever generates a list of file names, really.
