FROM jupyter/scipy-notebook:latest

# Install jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

# install a package into the python2 environment
RUN conda install -n python2 metpy siphon cartopy netcdf4 xarray

# install a package into the default (python 3.x) environment
RUN conda install -n python3 metpy siphon cartopy netcdf4 xarray

USER jovyan
