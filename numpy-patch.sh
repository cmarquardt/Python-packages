#! /usr/bin/env bash
#
# Patch an installed version of numpy
# -----------------------------------
#
# C. Marquardt, Darmstadt
#
# 07 May 2014
#
# Notes: The following patches are applied:
#  - recarray-setfield patch (see ...)

# 1. recarray-setfield patch
# --------------------------

patch -d `brew --prefix`/lib/python2.7/site-packages/numpy/core << EOF
*** numpy.orig/numpy/core/records.py   2012-09-04 23:31:31.000000000 +0200
--- numpy/numpy/core/records.py        2012-12-02 23:20:00.757234770 +0100
***************
*** 453,459 ****
              res = fielddict[attr][:2]
          except (TypeError, KeyError):
              raise AttributeError("record array has no attribute %s" % attr)
!         return self.setfield(val, *res)
  
      def __getitem__(self, indx):
          obj = ndarray.__getitem__(self, indx)
--- 453,459 ----
              res = fielddict[attr][:2]
          except (TypeError, KeyError):
              raise AttributeError("record array has no attribute %s" % attr)
!         return ndarray.__setitem__(self, attr, val)
  
      def __getitem__(self, indx):
          obj = ndarray.__getitem__(self, indx)
EOF

# 2 Fix permissions
# -----------------

chmod u+w `brew --prefix`/lib/python2.7/site-packages/numpy/core/records.py