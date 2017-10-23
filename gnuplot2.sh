echo > gnuplot.in 
for FILE in *; do
    echo "set xlabel \"Label\"" >> gnuplot.in
    echo "set ylabel \"Label2\"" >> gnuplot.in
    echo "set term png" >> gnuplot.in
    echo "set output \"${FILE}.png\" >> gnuplot.in
    echo "plot \"${FILE}\" using 1:2:3:4 with errorbars title \"Graph title\"" >> gnuplot.in
done
gnuplot gnuplot.in
