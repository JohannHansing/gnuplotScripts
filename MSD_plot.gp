##### MSD Plot for Scientific Specialization Presentation
set autoscale; unset log; unset label; set ytic auto; set xtic auto
set ylabel 'MSD'
#set ylabel '$ \langle \Delta \tilde{r}^2(t^*) \rangle $'
set xlabel '$t^*$'
set xrange [0:200]
#set yrange [0.0:1.3]
set ytics 10
set logscale x


# TICS
set mxtics             # activate minor xtics
set mytics             # activate minor ytics
set xtics scale 1.1, 0.6 
set ytics scale 1.1, 0.6


set border linewidth 1.5

set style data linespoints
set pointintervalbox 1

set style line 1 lw 2 pi -1 ps 1.5
set tmargin at screen 0.98
set terminal epslatex color solid size 5.4, 3.1 font " " 13 lw 1.5
set output '/Users/jh/Documents/workspace-cpp/gnuplot/tmp/tmp_output.tex'
set key top left width -14
plot \
'/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u-5/InstantValues/squaredisp.dat' w yerrorbars ti '$k = 0.1 \,b\,,\;U_0 = -5 \,k_B T$', \
# '/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u-1/InstantValues/squaredisp.dat' w yerrorbars ti '$U_0 = -1 \,k_B T$', \
# '/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u5/InstantValues/squaredisp.dat' w yerrorbars ti '$U_0 = 5 \, k_B T$'
 
set output "/Users/jh/Documents/reports-talk-etc/talks/ScientificSpecialization/plots/MSD_Plot_for_Presentation.tex"
replot

#################### 2nd Plot MSD/t

set output "/Users/jh/Documents/reports-talk-etc/talks/ScientificSpecialization/plots/D_Plot_for_Presentation.tex"

set ylabel 'MSD $\; / \; t^*$'
#set ylabel '$\langle \Delta \tilde{r}^2(t^*) \rangle \: / \: t^*$'
#set yrange [:9]
set nologscale x
set key top right width -5
set ytics 0.1

plot \
'/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u-5/InstantValues/squaredisp.dat' u 1:($2/$1):($3/$1) w yerrorbars ti '$k = 0.1 b\,,\;U_0 = -5 \,k_B T$', \
# '/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u-1/InstantValues/squaredisp.dat' u 1:($2/$1):($3/$1) w yerrorbars ti '$U_0 = -1 \,k_B T$', \
# '/Users/jh/Documents/workspace-cpp/SingleParticleSimulation/sim_data/noreset/dt0.0005/t200/d0/b10/k1.000/u5/InstantValues/squaredisp.dat' u 1:($2/$1):($3/$1) w yerrorbars ti '$U_0 = 5 \, k_B T$'
