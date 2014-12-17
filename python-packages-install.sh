#! /usr/bin/env bash

# Installing Python packages
# ==========================
#
# C. Marquardt, Darmstadt
#
# 07 May 2014
#
# Notes:
#  - nose is not installed centrally as it needs to be
#    placed into virtual environments, so it's part of
#    the postmkvirtualenv hook
#  - same for iPython
#  - iPython requires (for its notebook functionality)
#    pyzmq and tornado which can be installed centrally,
#    so I made them part of this general install script.

# 1. Shell variables
# ------------------

EGENIX_URL=https://downloads.egenix.com/python/index/ucs2

# 2. Update pip and setuptools
# ----------------------------

pip install --upgrade pip
pip install --upgrade setuptools

# 3. Development tools
# --------------------

pip install six
pip install stevedore
pip install virtualenv
pip install virtualenv-clone
pip install virtualenvwrapper

pip install cython
pip install Zconfig

pip install -i $EGENIX_URL egenix-mx-base

# 4. Documentation tools
# ----------------------

pip install Sphinx
pip install Cheetah

# 5. Internet
# -----------

#export PYCURL_SSL_LIBRARY=openssl
pip install pycurl
#unset PYCURL_SSL_LIBRARY

pip install ftputil
pip install urlgrabber

# 6. Databases
# ------------

pip install SQLAlchemy
pip install Alembic
pip install sqlitebck

# 7. Support for iPython
# ----------------------

pip install --install-option="--zmq=bundled" pyzmq
pip install tornado

# 8. NetCDF4
# ----------

export USE_NCCONFIG=1
pip install netCDF4
unset USE_NCCONFIG
