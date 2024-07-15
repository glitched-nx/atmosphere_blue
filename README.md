![Banner](img/banner.png?raw=true)
=====

#### *atmosphère blue* ist eine Fork des original Atmosphère, einer Custom Firmware 'CFW' für die Nintendo Switch, die sich in ständiger Anpassung an die Original Firmware 'OFW' befindet.

Komponenten
=====

### *atmosphère blue* - Features:

* Eingebettete Sigpatches
* Entfernen der ACID-Signaturprüfung zur Verwendung von Homebrew ohne Patches
* Entfernen des Systemprotokollierens, um das Überladen der Speicherkarte zu verhindern und übermäßigen Gebrauch zu vermeiden

Komponenten
=====

Atmosphère besteht aus mehreren Komponenten, von denen jede eine andere Komponente des Systems ersetzt/modifiziert:

* Fusée: First-stage Loader, verantwortlich für das Laden und Validieren von Stage 2 (benutzerdefiniertes TrustZone) sowie Package2 (Kernel/FIRM-Sysmodule) und deren Patchen nach Bedarf. Dies ersetzt alle Funktionen, die normalerweise im Package1loader/NX Bootloader enthalten sind.
    * Sept: Payload, das verwendet wird, um die Unterstützung für die Laufzeitschlüsselableitung auf 7.0.0 zu ermöglichen.
* Exosphère: Angepasste TrustZone, um einen angepassten Secure Monitor auszuführen.
* Thermosphère: EL2 EmuNAND-Unterstützung, d.h. das Sichern und Verwenden von virtualisierten/umgeleiteten NAND-Images.
* Stratosphère: Benutzerdefinierte Sysmodule, sowohl im Rosalina-Stil zur Erweiterung des Kernels/Anbieten neuer Funktionen als auch im Stil der Loader-Neuimplementierung, um wichtige Systemaktionen einzuhaken.
* Troposphère: Anwendungsbezogene Horizon OS-Patches, die verwendet werden, um wünschenswerte CFW-Funktionen zu implementieren.

Lizenzierung
=====

Diese Software ist unter den Bedingungen der GPLv2 lizenziert, mit Ausnahmen für spezifische Projekte, die unten aufgeführt sind.

Eine Kopie der Lizenz findest du in der [LICENSE-Datei](LICENSE).

Ausnahmen:

* [Nintendo](https://github.com/Nintendo) ist von der GPLv2-Lizenzierung ausgenommen und kann (nach eigener Wahl) den für das Atmosphère-Projekt erstellten Quellcode stattdessen unter der Zero-Clause BSD-Lizenz lizenzieren.

Credits
=====

Atmosphère wird derzeit von __SciresM__, __TuxSH__, __hexkyz__ und __fincs__ entwickelt und gepflegt.<br>
In keiner bestimmten Reihenfolge danken wir den folgenden Personen für ihre unschätzbaren Beiträge:

* __switchbrew__ für das [libnx](https://github.com/switchbrew/libnx)-Projekt und die umfangreiche [Dokumentation, Forschung und Tool-Entwicklung](http://switchbrew.org) bezüglich der Nintendo Switch.
* __devkitPro__ für die [devkitA64](https://devkitpro.org/) Toolchain und libnx-Unterstützung.
* __ReSwitched Team__ für zusätzliche [Dokumentation, Forschung und Tool-Entwicklung](https://reswitched.github.io/) bezüglich der Nintendo Switch.
* __ChaN__ für das [FatFs](http://elm-chan.org/fsw/ff/00index_e.html)-Modul.
* __Marcus Geelnard__ für die [bcl-1.2.0](https://sourceforge.net/projects/bcl/files/bcl/bcl-1.2.0)-Bibliothek.
* __naehrwert__ und __st4rk__ für das ursprüngliche [hekate](https://github.com/nwert/hekate)-Projekt und dessen hwinit-Code-Basis.
* __CTCaer__ für das fortgesetzte [hekate](https://github.com/CTCaer/hekate)-Projekt-Fork und das [minerva_tc](https://github.com/CTCaer/minerva_tc)-Projekt.
* __m4xw__ für die Entwicklung des [emuMMC](https://github.com/m4xw/emummc)-Projekts.
* __Riley__ für den Vorschlag von "Atmosphere" als Projektname für eine Horizon OS-Neuimplementierung+Anpassung.
* __hedgeberg__ für Forschung und Hardwaretests.
* __lioncash__ für Code-Bereinigung und allgemeine Verbesserungen.
* __jaames__ für das Design und die Bereitstellung der grafischen Ressourcen von Atmosphère.
* Allen, die Einträge für den [Splash-Design-Wettbewerb](https://github.com/Atmosphere-NX/Atmosphere-splashes) von Atmosphère eingereicht haben.
* _Allen, die aktiv zum Atmosphère-Repository beitragen._
