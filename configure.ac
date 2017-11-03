# configure.ac for Python-packages
# ================================

# 1. Initialisation
# -----------------

AC_INIT(Python-packages, 1.5, christian@marquardt.sc)
AC_CONFIG_SRCDIR(python-packages-update.sh)

AM_INIT_AUTOMAKE(foreign)

AC_CANONICAL_HOST

# 2. Check for programs
# ---------------------

AC_PATH_PROG(SHELL, bash)
if test -z "$SHELL"; then
   AC_MSG_ERROR([bash not found])
fi

AC_PATH_PROG(PYTHON, python)
if test -z "$PYTHON"; then
   AC_MSG_ERROR([Python not found])
fi

# 3. Finish
# ---------

AC_CONFIG_FILES(Makefile)

AC_OUTPUT
