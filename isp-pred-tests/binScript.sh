#!/bin/sh

set -x # echo on

ispBin=../../isp-predictive-binary/bin/isp
traces=traces
out=output
exec=regression
dimacs=dimacs


make

if [ ! -d "$traces" ]; then
    mkdir traces
fi

if [ ! -d "$out" ]; then
    mkdir output
fi

if [ ! -d "$dimacs" ]; then
    mkdir dimacs
fi

ulimit -S -v 12582912  # mem limit to 12GB 
ulimit -S -t 1200      # time limit to 30 minutes 


$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl1.pred > dl1.b.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl2.pred > dl2.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/dl3.pred > dl3.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/dl4.pred > dl4.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl5.pred > dl5.b.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl6.pred > dl6.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl7.pred > dl7.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl8.pred > dl8.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/dl9.pred > dl9.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 5 -b ./$exec/dtg.pred > dtg.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl1.pred > dl1.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl2.pred > dl2.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/dl3.pred > dl3.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/dl4.pred > dl4.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl5.pred > dl5.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl6.pred > dl6.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl7.pred > dl7.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl8.pred > dl8.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3  ./$exec/dl9.pred > dl9.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 5  ./$exec/dtg.pred > dtg.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 2 -b ./$exec/zeroB-deadlocks.pred > zeroB-deadlocks.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 2 ./$exec/zeroB-deadlocks.pred > zeroB-deadlocks.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/zeroB-misses-dl.pred > zeroB-misses-dl.b.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 3 ./$exec/zeroB-misses-dl.pred > zeroB-misses-dl.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 3 -b ./$exec/different_tags.pred > different_tags.b.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 3 ./$exec/different_tags.pred > different_tags.enc3.out	

$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/heat-errors.pred > heat-errors.b4.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 8 -b ./$exec/heat-errors.pred > heat-errors.b8.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 16 -b ./$exec/heat-errors.pred > heat-errors.b16.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 32 -b ./$exec/heat-errors.pred > heat-errors.b32.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4   ./$exec/heat-errors.pred > heat-errors.4.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/heat-errors.pred > heat-errors.8.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 16 ./$exec/heat-errors.pred > heat-errors.16.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 32  ./$exec/heat-errors.pred > heat-errors.32.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/GE.pred > GE.b4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8 -b ./$exec/GE.pred > GE.b8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 16 -b ./$exec/GE.pred > GE.b16.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 32 -b ./$exec/GE.pred > GE.b32.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/GE.pred > GE.4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/GE.pred > GE.8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 16  ./$exec/GE.pred > GE.16.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 32  ./$exec/GE.pred > GE.32.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/floyd.pred 8 > floyd.b4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8 -b ./$exec/floyd.pred 8 > floyd.b8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 16 -b ./$exec/floyd.pred 8 > floyd.b16.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 32 -b ./$exec/floyd.pred 8 > floyd.b32.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/floyd.pred 8 > floyd.4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/floyd.pred 8 > floyd.8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 16  ./$exec/floyd.pred 8 > floyd.16.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 32  ./$exec/floyd.pred 8 > floyd.32.enc3.out		
# $ispBin -p 8888 -D T --minisat -E 0 -n 2 ./$exec/IMB-MPI1 -iter 1,1,1  -time 0.001  pingping > pingping.2.enc3.out
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/monte.pred 0.5 > monte.b4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/monte.pred 0.5 > monte.b8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 4 -b ./$exec/diffusion2_nd.pred  > diffusion2_nd.b.4.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 4  ./$exec/diffusion2_nd.pred  > diffusion2_nd.4.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 8 -b  ./$exec/diffusion2_nd_8.pred  > diffusion2_nd.b.8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/diffusion2_nd_8.pred  > diffusion2_nd.8.enc3.out		
$ispBin -p 8888 -D T --minisat -E 0 -n 8  ./$exec/integrate_mw.pred  > integrate_mw.8.enc3.out	
$ispBin -p 8888 -D T --minisat -E 0 -n 10  ./$exec/integrate_mw.pred  > integrate_mw.10.enc3.out	


# # $ispBin -p 8888 -D T --minisat -E 0 -n 16 ./$exec/monte.pred 0.5 > monte.b16.enc3.out		
# # $ispBin -p 8888 -D T --minisat -E 0 -n 32 ./$exec/monte.pred 0.5 > monte.b16.enc3.out		

# $ispBin -p 8888 -D T --minisat -E 0 -n 64 -b ./$exec/floyd.pred 8 > floyd.b64.enc3.out		


###############################

# mv *.trace $traces/
# mv *.out $out/
# mv *.dimacs $dimacs/