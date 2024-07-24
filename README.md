![Banner](img/banner_readme.png?raw=true)

<p align="center">
  <img src="https://img.shields.io/github/license/Atmosphere-NX/Atmosphere?style=for-the-badge&labelColor=%230626b3&color=%230d3ce6" alt="GitHub License">
  <img src="https://img.shields.io/github/downloads/glitched-nx/atmosphere_blue/latest/total?style=for-the-badge&logoSize=auto&labelColor=%230626b3&color=%230d3ce6" alt="Downloads">
</p>

<h3 align="center"><a href="https://github.com/glitched-nx/atmosphere_blue/releases/latest">atmosphère blue</a></h3>

<p align="center">Eine modifizierte Version des originalen <a href="https://github.com/Atmosphere-NX/Atmosphere">Atmosphère</a></p>

* **Integrierte Sigpatches**: Ermöglichen die Ausführung unsignierter Software.
* **Entfernte ACID-Signaturprüfung**: Homebrews können nun ohne zusätzliche Patches verwendet werden.
* **Deaktiviertes Atmosphère NX System Logging**: Schont die SD-Karte vor übermäßigem Verschleiß.
* **Daybreak Quick**: Eine optimierte, deutschsprachige Version von Daybreak:
  * Up- und Downgrading der Firmware auf drei Schritten abgeschlossen.
  * Installation beider Treiber (exFAT und FAT32) erfolgt automatisch.
  * Die "Factory Reset"-Option wurde entfernt.

Die meisten Codeänderungen für die oben genannten Modifikationen stammen aus [Kefirosphere](https://github.com/rashevskyv/Kefirosphere), einem weiteren Fork von Atmosphère. Der Entwickler [**rashevskyv**](https://github.com/rashevskyv) hat in Kefirosphere die Sig-Patches integriert und mit Hilfe von DuckBill (DBI) unter anderem die ACID-Signaturprüfung in Atmosphère deaktiviert.

Für ***atmosphère blue*** habe ich zunächst einen sauberen Fork des originalen Atmosphère erstellt und Kefirosphere als zweiten Branch hinzugefügt. Mithilfe von **Git Graph** in **VS Code** habe ich die relevanten Commits und Codeschnipsel schrittweise per **Cherry Pick** in übernommen. Dabei habe ich zahlreiche Konflikte manuell im Editor gelöst.

---

### Fork Licensing

This project, atmosphère blue, is a fork of Atmosphere and is also licensed under GPLv2. The modifications made in this fork are subject to the same license terms.

### Fork Credits

* **rashevskyv** and the [Kefirosphere](https://github.com/rashevskyv/Kefirosphere) project for providing some of the code modifications used in atmosphère blue.

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
