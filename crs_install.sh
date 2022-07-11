echo $CONDA_PREFIX
cd Release
gsl_include=$CONDA_PREFIX/include/
gsl_lib=$CONDA_PREFIX/lib/
make clean
make all gsl_include=$gsl_include gsl_lib=$gsl_lib
