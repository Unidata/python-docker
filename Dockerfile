FROM jupyter/scipy-notebook:latest

# Install jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

# install a package into the python2 environment
RUN conda install -n python2 metpy siphon cartopy netcdf4 xarray ffmpeg

# install a package into the default (python 3.x) environment
RUN conda install metpy siphon cartopy netcdf4 xarray ffmpeg

USER jovyan

# Add in our custom theming
ADD custom/ $HOME/.jupyter/custom/
ADD custom/logo.png /opt/conda/lib/python3.5/site-packages/notebook/static/base/images/logo.png
