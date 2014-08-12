PREFIX ?= /usr/local

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(PREFIX)/bin
	install -m 0755 bin/git-manager   $(PREFIX)/bin
	install -m 0644 bin/git-manager-* $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/git-manager*
