# DNS.mitm

Ab Version 0.18.0 bietet Atmosphère einen Mechanismus zur Umleitung von DNS-Auflösungsanfragen.

Standardmäßig leitet Atmosphère Auflösungsanfragen für offizielle Telemetrie-Server um und leitet sie an eine Loopback-Adresse weiter.

## Hosts-Dateien

DNS.mitm kann durch die Verwendung eines leicht erweiterten `hosts`-Dateiformats konfiguriert werden, das nur einmal beim Systemstart analysiert wird.

Insbesondere haben Hosts-Dateien, die von DNS.mitm analysiert werden, die folgenden Erweiterungen zum üblichen Format:

+ `*` wird als Platzhalterzeichen behandelt und passt überall dort, wo es in einem Hostnamen vorkommt, auf eine beliebige Sammlung von 0 oder mehr Zeichen.
+ `%` wird als Stellvertreter für den Wert von `nsd!environment_identifier` behandelt. Dies ist auf Produktionsgeräten immer `lp1`.

Wenn mehrere Einträge in einer Host-Datei mit einer Domäne übereinstimmen, wird die zuletzt definierte Übereinstimmung verwendet.

Bitte beachten Sie, dass Homebrew eine erneute Analyse der Hosts-Datei auslösen kann, indem es den Erweiterungs-IPC-Befehl 65000 ("AtmosphereReloadHostsFile") an eine verbundene `sfdnsres`-Sitzung sendet.

### Auswahl der Hosts-Datei

Atmosphère versucht, Hosts aus den folgenden Dateipfaden zu lesen, in der Reihenfolge, und stoppt, sobald ein Dateilesen erfolgreich durchgeführt wurde:

+ (nur emummc) `/atmosphere/hosts/emummc_%04lx.txt`, formatiert mit der ID-Nummer des emummc (siehe `emummc.ini`).
+ (nur emummc) `/atmosphere/hosts/emummc.txt`.
+ (nur sysmmc) `/atmosphere/hosts/sysmmc.txt`.
+ `/atmosphere/hosts/default.txt`

Wenn `/atmosphere/hosts/default.txt` nicht existiert, erstellt Atmosphère diese Datei mit den Standardeinstellungen.

### Atmosphère-Standardeinstellungen

Standardmäßig werden die Standardumleitungen von Atmosphère **zusätzlich zu** den Inhalten der geladenen Hosts-Datei analysiert.

Dies entspricht dem Gedanken, dass die geladene Hosts-Datei die Atmosphère-Standardeinstellungen vorangestellt hat.

Diese Einstellung wird als wünschenswert angesehen, da sie die Telemetrierisiken minimiert, falls ein Benutzer vergisst, eine benutzerdefinierte Hosts-Datei bei einem Systemupdate zu aktualisieren, das die Telemetrie-Server ändert.

Dieses Verhalten kann durch Setzen von `atmosphere!add_defaults_to_dns_hosts = u8!0x0` in `system_settings.ini` deaktiviert werden.

Die aktuellen Standardumleitungen sind:

```
# Nintendo-Telemetrie-Server
127.0.0.1 receive-%.dg.srv.nintendo.net receive-%.er.srv.nintendo.net
```

## Fehlerbehebung

Beim Start (oder bei einer erneuten Analyse der Hosts-Datei) protokolliert DNS.mitm sowohl die ausgewählte Hosts-Datei als auch den Inhalt aller analysierten Umleitungen in `/atmosphere/logs/dns_mitm_startup.log`.

Zusätzlich protokolliert DNS.mitm, wenn der Benutzer `atmosphere!enable_dns_mitm_debug_log = u8!0x1` in `system_settings.ini` setzt, alle Anfragen an GetHostByName/GetAddrInfo in `/atmosphere/logs/dns_mitm_debug.log`. Alle Umleitungen werden notiert, wenn sie auftreten.

## Vollständiges Opt-out von DNS.mitm

Wenn du DNS.mitm vollständig deaktivieren möchtest, kannst du `system_settings.ini` bearbeiten und `atmosphere!enable_dns_mitm = u8!0x0` setzen.
