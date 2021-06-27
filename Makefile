CC     ?= cc
CFLAGS ?= -O2
PREFIX ?= /usr/local
EXTRA_CFLAGS = -std=c99 -Wall -I. -D_GNU_SOURCE=1

.PHONY: clean

all:
	$(CC) $(CFLAGS) -lfts $(EXTRA_CFLAGS) -o grep *.c

clean:
	rm -f grep

install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m755 grep     $(DESTDIR)$(PREFIX)/bin/grep
	install -m755 zgrep.sh $(DESTDIR)$(PREFIX)/bin/zgrep

	install -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m644 grep.1 $(DESTDIR)$(PREFIX)/share/man/man1/grep.1
	install -m644 zgrep.1 $(DESTDIR)$(PREFIX)/share/man/man1/zgrep.1

	cd ${DESTDIR}${PREFIX}/bin && ( \
		ln -sf grep  egrep     ;\
		ln -sf grep  fgrep     ;\
		ln -sf grep  rgrep     ;\
		ln -sf zgrep zfgrep    ;\
		ln -sf zgrep zegrep    ;\
		ln -sf zgrep bzgrep    ;\
		ln -sf zgrep bzegrep   ;\
		ln -sf zgrep bzfgrep   ;\
		ln -sf zgrep lzgrep    ;\
		ln -sf zgrep lzegrep   ;\
		ln -sf zgrep lzfgrep   ;\
		ln -sf zgrep xzgrep    ;\
		ln -sf zgrep xzegrep   ;\
		ln -sf zgrep xzfgrep   ;\
		ln -sf zgrep zstdgrep  ;\
		ln -sf zgrep zstdegrep ;\
		ln -sf zgrep zstdfgrep ;\
	)

	cd ${DESTDIR}${PREFIX}/share/man/man1 && ( \
		ln -sf grep.1 egrep.1      ;\
		ln -sf grep.1 fgrep.1      ;\
		ln -sf grep.1 rgrep.1      ;\
		ln -sf zgrep.1 zfgrep.1    ;\
		ln -sf zgrep.1 zegrep.1    ;\
		ln -sf zgrep.1 bzgrep.1    ;\
		ln -sf zgrep.1 bzegrep.1   ;\
		ln -sf zgrep.1 bzfgrep.1   ;\
		ln -sf zgrep.1 lzgrep.1    ;\
		ln -sf zgrep.1 lzegrep.1   ;\
		ln -sf zgrep.1 lzfgrep.1   ;\
		ln -sf zgrep.1 xzgrep.1    ;\
		ln -sf zgrep.1 xzegrep.1   ;\
		ln -sf zgrep.1 xzfgrep.1   ;\
		ln -sf zgrep.1 zstdgrep.1  ;\
		ln -sf zgrep.1 zstdegrep.1 ;\
		ln -sf zgrep.1 zstdfgrep.1 ;\
	)
