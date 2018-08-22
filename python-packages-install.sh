#! /usr/bin/env bash

# Installing Python packages
# ==========================
#
# C. Marquardt, Darmstadt
#
# 11 March 2018
#
# Notes:
#  - numpy and scipy are installed via homebrew;
#  - pandas, pillow, matplotlib, matplotlib-basemap, cartopy,
#    seaborn and ggplot are installed via pip;
#  - the version for matplotlib-basemap is currently hardcoded
#    as the script needs to fetch the released file from github;
#  - iPython requires (for its notebook functionality)
#    pyzmq and tornado which can be installed centrally,
#    so I made them part of this general install script.

# 1. Shell variables
# ------------------

PREFIX=`brew --prefix`

# 2. Update pip and setuptools
# ----------------------------

python -m ensurepip --upgrade

# 3. Development tools
# --------------------

pip install six
pip install stevedore
pip install pbr

pip install virtualenv
pip install virtualenv-clone
pip install virtualenvwrapper

pip install cython
pip install Zconfig

pip install line_profiler
pip install git+https://github.com/mgaitan/fortran_magic

pip install pytest
pip install pytest-cov
pip install pytest-html
pip install pytest-mock
pip install pytest-runner
pip install pytest-xdist

pip install tox

pip install egenix-mx-base
pip install python-dateutil

pip install cookiecutter

# 4. Documentation tools
# ----------------------

pip install Sphinx
pip install Cheetah

# 5. Internet
# -----------

pip install pycurl
pip install ftputil
pip install urlgrabber

# 6. Databases
# ------------

pip install SQLAlchemy
pip install Alembic
pip install sqlitebck

if [ "x$ORACLE_HOME" != "x" ]; then
    FORCE_RPATH=yes pip install --no-binary :all: cx_Oracle
fi

# 7. Numerical and graphics libraries
# -----------------------------------

pip install scipy
pip install pandas
CPPFLAGS="-I${PREFIX}/include" LDFLAGS="-L${PREFIX}/lib" pip install pyfftw

pip install pillow
pip install matplotlib
pip install cartopy
pip install seaborn
pip install ggplot

GEOS_DIR=`brew --prefix geos` pip install https://github.com/matplotlib/basemap/archive/v1.1.0.tar.gz

# 8. HDF5, NetCDF4
# ----------------

pip install h5py
pip install netCDF4

# 9. iPython
# ----------

pip install --install-option="--zmq=bundled" pyzmq
pip install tornado
pip install jsonschema
pip install ptyprocess
pip install terminado
pip install jupyter[all]
