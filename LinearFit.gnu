set terminal postscript
set output "regresssion.ps"
#The above commands save your plot as a postscript file named regression.ps
set title "Peak Voltage vs Excited State"
set xlabel "Excited state"
set ylabel "Peak Voltage (V)"
set xrange [0:7]

f(x) = m*x + b
fit f(x) 'FHtestdata.dat' using 1:2 via m,b
#You can set a guess for m and b by plotting your data file first and estimating the slope and intercept, the default is 1 for both
#If your guess is too far off the true value, the fit will not work 
plot "FHtestdata.dat" using 1:2:3 with yerrorbars title 'Peak Voltages', f(x) title 'Model Fit'
#FHtestdata.dat is a file with three columns: the first is your x-axis, the second is the y-axis, and the third is the y-error
