# Makefile.am for Python-packages
# ===============================

# 1. Useful things
# ----------------

SUFFIXES = .sh

# 2. Scripts to be installed
# --------------------------

bin_SCRIPTS = python-packages-update notebook

# 3. Files to be cleaned
# ----------------------

CLEANFILES = $(bin_SCRIPTS)

# 4. Files to be distributed
# --------------------------

EXTRA_DIST = python-packages-install.sh python-packages-update.sh notebook.sh

# 5. Install R packages
# ---------------------

install-packages:
	$(SHELL) python-packages-install.sh

# 6. Build update script
# ----------------------

python-packages-update:
	cp python-packages-update.sh $@
	chmod a+x $@

# 7. Build notebook script
# ------------------------

notebook:
	cp notebook.sh $@
	chmod a+x $@
