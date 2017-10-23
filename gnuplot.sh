for FILE in *; do
    gnuplot <<- EOF
        set xlabel "Label"
        set ylabel "Label2"
        set title "Graph title"   
        set term png
        set output "${FILE}.png"
        plot "${FILE}" using 1:2:3:4 with errorbars
EOF
done
