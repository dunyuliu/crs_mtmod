#!/bin/bash
# Script to make a grid to use as input in CRS.
# Grid formt: lon lat dep Mmin Mmax
# Note that this format does not allow to use a finer mesh at run time. See ../doc/inputformats.readme for more information.

#Set ranges and resolution:
lat0=34;
lat1=36.5;
dlat=0.05;
lon0=-119;
lon1=-116;
dlon=0.05;
dep0=5;
dep1=25;
ddep=10;
Mmin=3;
Mmax=10;
rm -r grid.dat
for dep in $(seq $dep0 $ddep $dep1); do 
  for lon in $(seq $lon0 $dlon $lon1); do
    for lat in $(seq $lat0 $dlat $lat1); do
	 echo $lon $lat $dep $Mmin $Mmax >> grid.dat
     done
  done
done

