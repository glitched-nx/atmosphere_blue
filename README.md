![Banner](img/banner_readme.png?raw=true)

<p align="center">
  <img src="https://img.shields.io/github/license/Atmosphere-NX/Atmosphere?style=for-the-badge&labelColor=%230626b3&color=%230d3ce6" alt="GitHub License">
  <img src="https://img.shields.io/github/downloads/glitched-nx/atmosphere_blue/latest/total?style=for-the-badge&logoSize=auto&labelColor=%230626b3&color=%230d3ce6" alt="Downloads">
</p>

<h3 align="center"><a href="https://github.com/glitched-nx/atmosphere_blue">atmosphère blue</a></h3>

<p align="center">Eine modifizierte Version des originalen <a href="https://github.com/Atmosphere-NX/Atmosphere">Atmosphère</a></p>

* **Integrierte Sigpatches** [🔗](#codeabschnitte)
* ACID-Signaturprüfung entfernt, um Homebrews ohne Patches verwenden zu können. [🔗](#codeabschnitte)
* Das Atmosphère NX System Logging wurde entfernt, um die SD-Karte vor übermäßigem Verschleiß zu schonen. [🔗](#codeabschnitte)
* [***Daybreak Quick***]()  Eine modifizierte deutschsprachige Version von Daybreak, die ein Up-/Downgrading der Firmware in nur drei Schritten ermöglicht.
  * Die ursprüngliche Option, zwischen exFat- und Fat32-Treibern oder beiden zu wählen, wurde hier intern auf die Installation beider Treiber gesetzt und wird somit übersprungen.
  * Die Option "Factory Reset" wird hier ebenfalls übersprungen.

Die entsprechenden Codeabschnitte für die oben genannten Modifikationen stammen größtenteils aus [Kefirosphere](https://github.com/rashevskyv/Kefirosphere), das ebenfalls ein Fork von Atmosphère ist. Der Entwickler [**rashevskyv**](https://github.com/rashevskyv) hat in seinem Kefirosphere mit der Hilfe von DuckBill (DBI) unter anderem die Kip-Patches in Atmosphère eingebettet.

Für ***atmosphère blue*** erstellte ich ebenfalls einen sauberen Fork des originalen Atmosphère und holte die entsprechenden Commits mit Hilfe von **Git Graph** mittels **Cherry Picks** nach und nach in meinen Fork und beseitigte dabei viele Konflikte manuell mit dem Editor von VS Code. Es war eine sehr mühsame Arbeit, die sich gelohnt hat.

Nach mehreren Tests habe ich ***atmosphère blue*** in der ersten Version nun erfolgreich fertiggestellt.



---

## Licensing

This software is licensed under the terms of the GPLv2, with exemptions for specific projects noted below.

You can find a copy of the license in the [LICENSE file](LICENSE).

Exemptions:

* [Nintendo](https://github.com/Nintendo) is exempt from GPLv2 licensing and may (at its option) instead license any source code authored for the Atmosphère project under the Zero-Clause BSD license.

## Credits

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

---
