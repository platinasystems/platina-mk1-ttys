platina-mk1-ttys:

bindeb-pkg:
	debuild -i -us -uc -b --lintian-opts --profile debian

clean:
	rm -f *.build *.buildinfo *.changes *.deb debian/debhelper-build-stamp debian/files \
	debian/*.debhelper debian/*.log debian/*.substvars
	rm -rf debian/platina-mk1-ttys

.PHONY: bindeb-pkg clean platina-mk1-ttys
