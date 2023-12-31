DOXY_EXEC_PATH = /root/ntzcore2/libraries/wallet
DOXYFILE = /root/ntzcore2/libraries/wallet/Doxyfile
DOXYDOCS_PM = /root/ntzcore2/libraries/wallet/doxygen/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = /root/ntzcore2/libraries/wallet/doxygen/perlmod/DoxyStructure.pm
DOXYRULES = /root/ntzcore2/libraries/wallet/doxygen/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"
