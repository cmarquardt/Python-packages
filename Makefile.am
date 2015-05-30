# Makefile.am for Python-packages
# ===============================

# 1. Useful things
# ----------------

SUFFIXES = .sh

# 2. Scripts to be installed
# --------------------------

bin_SCRIPTS = numpy-patch python-packages-update

# 3. Files to be cleaned
# ----------------------

CLEANFILES = $(bin_SCRIPTS)

# 4. Files to be distributed
# --------------------------

EXTRA_DIST = numpy-patch.sh python-packages-install.sh python-packages-update.sh

# 5. Install R packages
# ---------------------

install-packages:
	$(SHELL) python-packages-install.sh

# 6. Build update script
# ----------------------

numpy-patch:
	cp numpy-patch.sh $@
	chmod a+x $@

python-packages-update:
	cp python-packages-update.sh $@
	chmod a+x $@
