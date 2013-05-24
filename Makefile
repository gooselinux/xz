# This makefile is downloading any file listed in the 'sources'
# file in this directory and validating the md5sum of the archive
# against it.

NAME := xz

define find-common-dir
for d in common ../common ../../common ; do if [ -f $$d/Makefile.common ] ; then echo "$$d"; break ; fi ; done
endef
COMMON_DIR := $(shell $(find-common-dir))

include $(COMMON_DIR)/Makefile.common

