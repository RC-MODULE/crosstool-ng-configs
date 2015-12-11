menuconfig:
	cp config_softfp .config
	ct-ng menuconfig
	cp .config config_softfp
	$(MAKE) config_hardfp

config_hardfp: config_softfp
	./tohardfp.sh config_softfp > $@

