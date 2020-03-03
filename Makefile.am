# Makefile.am for Python-packages
# ===============================

# 1. Useful things
# ----------------

SUFFIXES = .sh

# 2. Scripts to be installed
# --------------------------

bin_SCRIPTS = jupyterlab notebook

# 3. Files to be cleaned
# ----------------------

CLEANFILES = $(bin_SCRIPTS)

# 4. Files to be distributed
# --------------------------

EXTRA_DIST = jupyterlab.sh notebook.sh

# 5. Build jupyterlab script
# --------------------------

jupyterlab:
	cp jupyterlab.sh $@
	chmod a+x $@

# 6. Build notebook script
# ------------------------

notebook:
	cp notebook.sh $@
	chmod a+x $@
