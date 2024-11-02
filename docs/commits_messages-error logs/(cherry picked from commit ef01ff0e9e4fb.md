(cherry picked from commit ef01ff0e9e4fb26a85e56362d213057ac522a32b)

Commit: 550ac69ddf17ec4b0c189547505f68f4e4ecc3a3
Eltern: 2621c64dd1fc2d58e4dc1a2d157b18ed47759046
Autor: rashevskyv <rashevsky.v@gmail.com>
Autor-Datum: Do., 17. Okt. 2024 13:57:09 GMT+0200 (Mitteleuropäische Sommerzeit)
Committer: glitched_nx <xteknox2009@gmail.com>
Committer-Datum: Sa., 19. Okt. 2024 15:02:10 GMT+0200 (Mitteleuropäische Sommerzeit)

Überarbeitung von LoadMeta zur globalen Handhabung von NPDM-Flags

Dieser Commit optimiert die Verarbeitung von NPDM-Debug-Fähigkeiten für alle Anwendungen, um neue HOS-Beschränkungen einzuhalten. Statt einer spezifischen Lösung für HBL wurde die Funktion PreProcessCapability aktualisiert, um sicherzustellen, dass global nur ein Debug-Flag für alle Anwendungen gesetzt wird.

Hauptänderungen:
1. Entfernung der HBL-spezifischen Debug-Flag-Behandlung aus LoadMeta.
2. Zentralisierung der Debug-Flag-Anpassung in PreProcessCapability.
3. Sicherstellung der Kompatibilität mit den neuen HOS-NPDM-Flag-Beschränkungen.

Technische Details:
- Die Funktion FixDebugCapabilityForHbl wurde entfernt, da sie nicht mehr benötigt wird.
- PreProcessCapability übernimmt nun die globale Verwaltung der Debug-Flags für alle Anwendungen.
- Diese
