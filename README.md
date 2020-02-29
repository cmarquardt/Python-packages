# Python Utilities

This package installs two helper scripts - init.d-style launchers for Jupyter 
Notebook and Jupyter Lab.

In addition, it provides a convenient way (for me!) to install a set of default
modules for both Python 2.17 and Python 3 (yes, I still work with the legacy 
Python 2...). They can be installed from 

## Launchers

The launcher scripts allow to start and stop Jupyter Notebook and Jupyter Lab 
servers; they will both run on port 9999 (and, therefore, cannot be run 
simultaneously). The syntax is

    notebook start|status|stop

for Jupyter Notebooks, and 

    jupyterlab start|status|stop

for Jupyter Lab.


## Installation

The installation of the launcher scripts proceeds as usual with

    ./configure --prefix=<whereever>
    make
    make install

## Installation of Python Modules

A second make target,

    make install-packages

will install a hard-coded list of python packages; for details, see the
list of packages to be installed in the files requirements-2.7.txt and 
requirements-3.7.txt, respectively.

Note that the versions of the Python 2.7 modules are frozen; in addition, virtual
environment support and tools supporting pip are only available or Python 3.
