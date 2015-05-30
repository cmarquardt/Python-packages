#! /usr/bin/env bash

# Updating Python packages
# ========================
#
# C. Marquardt, Darmstadt
#
# 30 May 2015
#
# Notes:
#  - nose is not installed centrally as it needs to be
#    placed into virtual environments, so it's part of
#    the postmkvirtualenv hook;
#  - same used to be true for iPython; it's nowk installed
#    on an experimental basis;
#  - numpy, scipy, matplotlib, matplotlib-basemap and
#    pillow are installed via homebrew;
#  - iPython requires (for its notebook functionality)
#    pyzmq and tornado which can be installed centrally,
#    so I made them part of this general update script.

# 1. Shell variables
# ------------------

EGENIX_URL=https://downloads.egenix.com/python/index/ucs2

ARGS="--upgrade"

# 2. Command line arguments
# -------------------------

while getopts "fh" Option
do
  case $Option in
    f ) ARGS="--upgrade --force-reinstall" ;;
    h ) echo "Usage: `basename $0` [-f]" ; exit ;;
    * ) echo "Unknown option...";;   # Default.
  esac
done

shift $(($OPTIND - 1))

# 3. Update pip and setuptools
# ----------------------------

python -m ensurepip ${ARGS}

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

#pip install ${ARGS} nose

pip install ${ARGS} -i $EGENIX_URL egenix-mx-base

pip install ${ARGS} python-dateutil

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

# 8. iPython
# ----------

pip install ${ARGS} --install-option="--zmq=bundled" pyzmq
pip install ${ARGS} tornado
pip install ${ARGS} jsonschema
pip install ${ARGS} ptyprocess
pip install ${ARGS} terminado
pip install ${ARGS} ipython

# 9. NetCDF4
# ----------

pip install ${ARGS} netCDF4

# 10. Graphics
# ------------

#pip install ${ARGS} Pillow
