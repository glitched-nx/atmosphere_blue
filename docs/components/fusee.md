# fusée
fusée ist ein benutzerdefinierter Bootloader, der verwendet wird, um die Atmosphère-Umgebung zu starten.

## fusée
fusée ist das erste Stück Code von Atmosphère, das auf der Hardware ausgeführt wird.
Es wird als eigenständiges Payload verteilt, das über RCM gestartet wird, indem die CVE-2018-6242-Schwachstelle ausgenutzt wird.

Dieses Payload ist verantwortlich für die gesamte Hardware-Initialisierung auf niedriger Ebene, die für die Nintendo Switch erforderlich ist, das Einrichten des Kryptosystems, das Mounten/Emulieren des eMMC, das Injizieren/Patchen von Systemmodulen und das Starten der exosphère-Komponente.

---

# fusée
fusée is a custom bootloader used to start the Atmosphère environment.

## fusée
fusée is the first piece of Atmosphère's code that runs on the hardware.
It is distributed as a standalone payload designed to be launched via RCM by abusing the CVE-2018-6242 vulnerability.

This payload is responsible for all the low-level hardware initialization required by the Nintendo Switch, setting up the cryptosystem, mounting/emulating the eMMC, injecting/patching system modules, and launching the exosphère component.
