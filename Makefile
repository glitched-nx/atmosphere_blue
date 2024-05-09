ATMOSPHERE_BUILD_CONFIGS :=
all: nx_release
clean: clean-nx_release

THIS_MAKEFILE     := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIRECTORY := $(abspath $(dir $(THIS_MAKEFILE)))

define ATMOSPHERE_ADD_TARGET

ATMOSPHERE_BUILD_CONFIGS += $(strip $1)

$(strip $1):
	@echo "Building $(strip $1)"
	@$$(MAKE) -f $(CURRENT_DIRECTORY)/atmosphere.mk ATMOSPHERE_MAKEFILE_TARGET="$(strip $1)" ATMOSPHERE_BUILD_NAME="$(strip $2)" ATMOSPHERE_BOARD="$(strip $3)" ATMOSPHERE_CPU="$(strip $4)" $(strip $5)

clean-$(strip $1):
	@echo "Cleaning $(strip $1)"
	@$$(MAKE) -f $(CURRENT_DIRECTORY)/atmosphere.mk clean ATMOSPHERE_MAKEFILE_TARGET="$(strip $1)" ATMOSPHERE_BUILD_NAME="$(strip $2)" ATMOSPHERE_BOARD="$(strip $3)" ATMOSPHERE_CPU="$(strip $4)" $(strip $5)

endef

define ATMOSPHERE_ADD_TARGETS

$(eval $(call ATMOSPHERE_ADD_TARGET, $(strip $1)_release, release, $(strip $2), $(strip $3), \
    ATMOSPHERE_BUILD_SETTINGS="$(strip $4)" \
))

$(eval $(call ATMOSPHERE_ADD_TARGET, $(strip $1)_debug, debug, $(strip $2), $(strip $3), \
    ATMOSPHERE_BUILD_SETTINGS="$(strip $4) -DAMS_BUILD_FOR_DEBUGGING" ATMOSPHERE_BUILD_FOR_DEBUGGING=1 \
))

$(eval $(call ATMOSPHERE_ADD_TARGET, $(strip $1)_audit, audit, $(strip $2), $(strip $3), \
    ATMOSPHERE_BUILD_SETTINGS="$(strip $4) -DAMS_BUILD_FOR_AUDITING" ATMOSPHERE_BUILD_FOR_DEBUGGING=1 ATMOSPHERE_BUILD_FOR_AUDITING=1 \
))

endef

$(eval $(call ATMOSPHERE_ADD_TARGETS, nx, nx-hac-001, arm-cortex-a57,))

clean-all: $(foreach config,$(ATMOSPHERE_BUILD_CONFIGS),clean-$(config))

clean-logo:
	python3 $(CURDIR)/stratosphere/boot/source/bmp_to_array.py
	make -C $(CURDIR)/stratosphere/boot clean -j12

kefir:
	cd libraries/libstratosphere && $(MAKE) -j12 clean && cd ../../stratosphere/ams_mitm && $(MAKE) -j12 clean && cd ../.. && $(MAKE) -j12

clear:
	$(MAKE) clean -j12
	$(MAKE) -j12

8gb:
	git checkout 8gb
	git merge master --no-edit
	$(MAKE) -C fusee -j12
	cp fusee/out/nintendo_nx_arm_armv4t/release/package3 /mnt/f/git/dev/_kefir/8gb/package3
	git checkout master

oc:
	git checkout oc
	git -C stratosphere/loader diff --quiet master || git -C stratosphere/loader pull origin master
	$(MAKE) -C stratosphere/loader -j12
	cp stratosphere/loader/out/nintendo_nx_arm64_armv8a/release/loader.kip /mnt/f/git/dev/_kefir/kefir/config/uberhand/packages/oc/atmosphere/kips/kefir.kip
	git checkout master

build_kefir:
	$(MAKE) clean-logo 
	$(MAKE) 8gb
	$(MAKE) oc
	$(MAKE) nx_release -j12

.PHONY: all clean clean-all kefir-version $(foreach config,$(ATMOSPHERE_BUILD_CONFIGS), $(config) clean-$(config))
