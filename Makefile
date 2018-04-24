.PHONY: install clean

BOSH_COMPLETION_INSTALL_PATH := "/usr/local/etc/bosh.completion.bash"

install:
	if [ ! -d "/usr/local" ]; then \
	  @echo "/usr/local not exists. aborting..."; \
	  exit 1; \
	fi
	mkdir -p /usr/local/etc
	# locate file
	cp bosh.completion.bash /usr/local/etc

clean:
	if [ -f $(BOSH_COMPLETION_INSTALL_PATH) ]; then \
	  rm -f $(BOSH_COMPLETION_INSTALL_PATH); \
	fi
	@echo "Clean finished";
