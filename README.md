![Banner](https://github.com/glitched-nx/atmo_blue/raw/master/img/banner_readme.png)

<p align="center">
  <img src="https://img.shields.io/github/license/Atmosphere-NX/Atmosphere?style=plastc&labelColor=%23abc4ff&color=%230d3ce6" alt="GitHub License">
</p>
<div align="center" style="font-size: 2em;">
    <img src="https://img.shields.io/github/v/release/THZoria/NX_Firmware?style=for-the-badge&label=Aktuelle%20Systemversion&labelColor=123ede&color=b3b9e8" alt="Aktuelle Systemversion" />
    <img src="https://img.shields.io/github/downloads/glitched-nx/atmo_blue/total?&style=for-the-badge&label=ATMO DOWNLOADS&labelColor=123ede&color=b3b9e8" alt="ATMO BLUE" />
    <img src="https://img.shields.io/github/v/release/glitched-nx/atmo_blue?style=for-the-badge&label=ATMO BLUE&labelColor=123ede&color=b3b9e8" alt="ATMO BLUE" />
 </p>
</div>

***Specials:***
- ***embedded Sig`s***
- ***removed ACID signature check***: Homebrews can be used without patches
- ***added new splash Logo***

**Daybreak Quick MOD**:
  * Firmware upgrade and downgrade completed in three steps only
  * Both drivers FAT and FAT32) are installed as default
  * The "Factory Reset" option has been removed

---

[**Hekate**](https://github.com/CTCaer/hekate/releases/latest) bootloader is required to boot *atmosphere blue*!

Download the latest `atmo_blue.zip` from below and unzip it to the root directory of the SD card. Navigate to `/bootloader` and open `hekate_ipl.ini` with a text editor. **Delete** the line `kip1patch=nosigchk` from both the atmosphere sysMMC and emuMMC boot-config entries. After making the changes, save the config file.

### atmosphère (emuMMC)

```ini
[atmo blue (emuMMC)]
fss0=atmosphere/package3
emummcforce=1
kip1patch=nosigchk  <-- Delete this line
```

### atmosphère (sysMMC)

```ini
[atmo blue (sysMMC)]
fss0=atmosphere/package3
emummc_force_disable=1
kip1patch=nosigchk  <-- Delete this line
```

---

### Fork Licensing

* This project, ***atmo blue***, is a fork of Atmosphère and is also licensed under GPLv2. The modifications made in this fork are subject to the same license terms.

---

### [Original Atmosphère](https://github.com/Atmosphere-NX/Atmosphere) Licensing

This software is licensed under the terms of the GPLv2, with exemptions for specific projects noted below.

You can find a copy of the license in the [LICENSE file](LICENSE).

Exemptions:

* [Nintendo](https://github.com/Nintendo) is exempt from GPLv2 licensing and may (at its option) instead license any source code authored for the Atmosphère project under the Zero-Clause BSD license.

### Credits

Atmosphère is currently being developed and maintained by **SciresM**, **TuxSH**, **hexkyz**, and **fincs** in no particular order, we credit the following for their invaluable contributions:

* **switchbrew** for the [libnx](https://github.com/switchbrew/libnx) project and the extensive [documentation, research and tool development](http://switchbrew.org) pertaining to the Nintendo Switch.
* **devkitPro** for the [devkitA64](https://devkitpro.org/) toolchain and libnx support.
* **ReSwitched Team** for additional [documentation, research and tool development](https://reswitched.github.io/) pertaining to the Nintendo Switch.
* **ChaN** for the [FatFs](http://elm-chan.org/fsw/ff/00index_e.html) module.
* **Marcus Geelnard** for the [bcl-1.2.0](https://sourceforge.net/projects/bcl/files/bcl/bcl-1.2.0) library.
* **naehrwert** and **st4rk** for the original [hekate](https://github.com/nwert/hekate) project and its hwinit code base.
* **CTCaer** for the continued [hekate](https://github.com/CTCaer/hekate) project's fork and the [minerva_tc](https://github.com/CTCaer/minerva_tc) project.
* **m4xw** for development of the [emuMMC](https://github.com/m4xw/emummc) project.
* **Riley** for suggesting "Atmosphere" as a Horizon OS reimplementation+customization project name.
* **hedgeberg** for research and hardware testing.
* **lioncash** for code cleanup and general improvements.
* **jaames** for designing and providing Atmosphère's graphical resources.
* Everyone who submitted entries for Atmosphère's [splash design contest](https://github.com/Atmosphere-NX/Atmosphere-splashes).
* **All those who actively contribute to the Atmosphère repository.**
