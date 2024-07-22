![Banner](img/banner_readme.png?raw=true)

![GitHub License](https://img.shields.io/github/license/Atmosphere-NX/Atmosphere?style=for-the-badge&labelColor=%230626b3&color=%230d3ce6) ![DL](https://img.shields.io/github/downloads/glitched-nx/atmosphere_blue/latest/total?style=for-the-badge&logoSize=auto&labelColor=%230626b3&color=%230d3ce6)

### [***atmosphère blue***](https://github.com/glitched-nx/atmosphere_blue) Eine modifizierte Version des originalen [***Atmosphère***](https://github.com/Atmosphere-NX/Atmosphere)

* **Integrierte Sigpatches** [*]()
* ACID-Signaturprüfung entfernt, um Homebrews ohne Patches verwenden zu können. [*]()
* Das Atmosphère NX System Logging wurde entfernt, um die SD-Karte vor übermäßigem Verschleiß zu schonen. [*]()
* [***hbmenu blue***](https://github.com/glitched-nx/hbmenu_blue) Eine modifizierte deutschsprachige Version von [***nx-hbmenu***](https://github.com/switchbrew/nx-hbmenu).
* [***Daybreak Quick***]()  Eine modifizierte deutschsprachige Version von Daybreak, die ein Up-/Downgrading der Firmware in nur drei Schritten ermöglicht.
  * Die ursprüngliche Option, zwischen exFat- und Fat32-Treibern oder beiden zu wählen, wurde hier intern auf die Installation beider Treiber gesetzt und wird somit übersprungen.
  * Die Option "Factory Reset" wird hier ebenfalls übersprungen.

** Die entsprechenden Codeabschnitte für die oben genannten Modifikationen stammen größtenteils aus [Kefirosphere](https://github.com/rashevskyv/Kefirosphere). Ich wollte keinen Fork eines Forks mehr erstellen, weil ich nicht alles übernehmen wollte. Das habe ich zuerst so versucht, aber ich verlor irgendwann den Überblick und hatte erst keine Lust mehr weiterzumachen. Als ich wenig später mitbekommen habe, dass der Entwickler [**rashevskyv**](https://github.com/rashevskyv) ein Repack seines Kefirosphere vorgenommen hat, habe ich noch einmal begonnen. Ich habe einen sauberen Fork des originalen Atmosphère erstellt und die Commits mit **Git Graph** mittels **Cherry Picks** nach und nach herausgepickt und mit dem zuvor erstellten Fork erfolgreich zusammengeführt.

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
