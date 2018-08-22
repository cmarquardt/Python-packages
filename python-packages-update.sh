#! /usr/bin/env bash

# Updating Python packages
# ========================
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
#    so I made them part of this general update script.

# 1. Shell variables
# ------------------

ARGS="--upgrade --upgrade-strategy only-if-needed"
PREFIX=`brew --prefix`

# 2. Command line arguments
# -------------------------

while getopts "fh" Option
do
  case $Option in
    f ) ARGS="--upgrade --upgrade-strategy only-if-needed --force-reinstall" ;;
    h ) echo "Usage: `basename $0` [-f]" ; exit ;;
    * ) echo "Unknown option...";;   # Default.
  esac
done

shift $(($OPTIND - 1))

# 3. Update pip and setuptools
# ----------------------------

python -m ensurepip --upgrade

# 4. Development tools
# --------------------

pip install ${ARGS} six
pip install ${ARGS} stevedore
pip install ${ARGS} pbr

pip install ${ARGS} virtualenv
pip install ${ARGS} virtualenv-clone
pip install ${ARGS} virtualenvwrapper

pip install ${ARGS} cython
pip install ${ARGS} Zconfig

pip install ${ARGS} pytest
pip install ${ARGS} pytest-cov
pip install ${ARGS} pytest-html
pip install ${ARGS} pytest-mock
pip install ${ARGS} pytest-runner
pip install ${ARGS} pytest-xdist

pip install ${ARGS} tox

pip install ${ARGS} egenix-mx-base
pip install ${ARGS} python-dateutil

pip install ${ARGS} cookiecutter

pip install ${ARGS} line_profiler
pip install ${ARGS} git+https://github.com/mgaitan/fortran_magic

# 5. Documentation tools
# ----------------------

pip install ${ARGS} Sphinx
pip install ${ARGS} Cheetah

# 6. Internet
# -----------

pip install ${ARGS} pycurl
pip install ${ARGS} ftputil
pip install ${ARGS} urlgrabber

# 7. Databases
# ------------

pip install ${ARGS} SQLAlchemy
pip install ${ARGS} Alembic
pip install ${ARGS} sqlitebck

if [ "x$ORACLE_HOME" != "x" ]; then
    FORCE_RPATH=yes pip install ${ARGS} --no-binary :all: cx_Oracle
fi

# 8. Numerical and graphics libraries
# -----------------------------------

pip install ${ARGS} scipy
pip install ${ARGS} pandas
CPPFLAGS="-I${PREFIX}/include" LDFLAGS="-L${PREFIX}/lib" pip install ${ARGS} pyfftw

pip install ${ARGS} pillow
pip install ${ARGS} matplotlib
pip install ${ARGS} cartopy
pip install ${ARGS} seaborn
pip install ${ARGS} ggplot

GEOS_DIR=`brew --prefix geos` pip install ${ARGS} https://github.com/matplotlib/basemap/archive/v1.1.0.tar.gz

# 9. HDF5, NetCDF4
# ----------------

pip install ${ARGS} h5py
pip install ${ARGS} netCDF4

# 10. iPython
# -----------

pip install ${ARGS} --install-option="--zmq=bundled" pyzmq
pip install ${ARGS} tornado
pip install ${ARGS} jsonschema
pip install ${ARGS} ptyprocess
pip install ${ARGS} terminado
pip install ${ARGS} jupyter[all]
