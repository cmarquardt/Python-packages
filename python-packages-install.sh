#! /usr/bin/env bash

# Installing Python packages
# ==========================
#
# C. Marquardt, Darmstadt
#
# 03 May 2014
#

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

pip install pyparsing
pip install python-dateutil

pip install cython
pip install Zconfig
pip install nose

pip install -i $EGENIX_URL egenix-mx-base

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

# 7. NetCDF4
# ----------

export USE_NCCONFIG=1
pip install netCDF4
unset USE_NCCONFIG
