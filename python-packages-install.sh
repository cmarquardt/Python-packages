#! /usr/bin/env bash

# Installing Python packages
# ==========================
#
# C. Marquardt, Darmstadt
#
# 30 May 2015
#
# Notes:
#  - nose is not installed centrally as it needs to be
#    placed into virtual environments, so it's part of
#    the postmkvirtualenv hook
#  - same used to be true for iPython; it's nowk installed
#    on an experimental basis;
#  - numpy, scipy, matplotlib, matplotlib-basemap and
#    pillow are installed via homebrew;
#  - iPython requires (for its notebook functionality)
#    pyzmq and tornado which can be installed centrally,
#    so I made them part of this general install script.

# 1. Shell variables
# ------------------

EGENIX_URL=https://downloads.egenix.com/python/index/ucs2

# 2. Update pip and setuptools
# ----------------------------

python -m ensurepip --upgrade #${ARGS}

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

#pip install nose

pip install -i $EGENIX_URL egenix-mx-base

pip install python-dateutil

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

# 7. iPython
# ----------

pip install --install-option="--zmq=bundled" pyzmq
pip install tornado
pip install jsonschema
pip install ptyprocess
pip install terminado
pip install ipython

# 8. NetCDF4
# ----------

pip install netCDF4

# 9. Graphics
# -----------

# pip install Pillow
