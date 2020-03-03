# Python Utilities

This package installs two helper scripts - init.d-style launchers for Jupyter 
Notebook and Jupyter Lab.

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
