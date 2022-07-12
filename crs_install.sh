echo $CONDA_PREFIX
cd Release
gsl_include=$CONDA_PREFIX/include/
gsl_lib=$CONDA_PREFIX/lib/
make clean
make all gsl_include=$gsl_include gsl_lib=$gsl_lib

cd ..
cd test
wget http://equake-rc.info/media/srcmod/_fsp_files/s2019RIDGEC02JINx.fsp
source makegrid.sh
cd ..
./Release/run_crs test/input.txt
