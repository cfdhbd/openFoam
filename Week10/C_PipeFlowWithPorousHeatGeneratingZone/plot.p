# Gnuplot script file for plotting post processing data
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "T conc over time"
set xlabel "Time (s)"
set ylabel "T (K)"
plot    "postProcessing/probes/0/T" using 1:2 title 'Y_CO2 at z = 0.1', \
        "postProcessing/probes/0/T" using 1:3 title 'Y_CO2 at z = 0.2', \
        "postProcessing/probes/0/T" using 1:4 title 'Y_CO2 at z = 0.3', \
        "postProcessing/probes/0/T" using 1:5 title 'Y_CO2 at z = 0.4', \
        "postProcessing/probes/0/T" using 1:6 title 'Y_CO2 at z = 0.45', \
        "postProcessing/probes/0/T" using 1:7 title 'Y_CO2 at z = 0.48'
pause -1
