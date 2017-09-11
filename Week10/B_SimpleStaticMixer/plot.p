# Gnuplot script file for plotting post processing data
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "CO2 conc over time"
set xlabel "Time (s)"
set ylabel "CO2 mass fraction"
plot    "postProcessing/probes/0/CO2" using 1:2 title 'Y_CO2 at z = 0.126', \
        "postProcessing/probes/0/CO2" using 1:3 title 'Y_CO2 at z = 0.176', \
        "postProcessing/probes/0/CO2" using 1:4 title 'Y_CO2 at z = 0.226', \
        "postProcessing/probes/0/CO2" using 1:5 title 'Y_CO2 at z = 0.276', \
        "postProcessing/probes/0/CO2" using 1:6 title 'Y_CO2 at z = 0.326', \
        "postProcessing/probes/0/CO2" using 1:7 title 'Y_CO2 at z = 0.376', \
        "postProcessing/probes/0/CO2" using 1:8 title 'Y_CO2 at z = 0.426', \
        "postProcessing/probes/0/CO2" using 1:9 title 'Y_CO2 at z = 0.476'
pause -1
