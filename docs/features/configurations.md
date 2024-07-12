# Konfigurationen

Atmosphère bietet eine Vielzahl anpassbarer Konfigurationen, um besser auf die Bedürfnisse der Benutzer einzugehen.

## stratosphere.ini

Dies ist die Konfigurationsdatei, die von fusée zur Konfiguration der Benutzerbereichs-Systemmodule verwendet wird. Diese Datei befindet sich im Ordner `/atmosphere/config/` auf deiner SD-Karte und eine Standardvorlage findest du im Ordner `/atmosphere/config_templates/`.

### Konfiguration des "nogc"-Schutzes

"nogc" ist eine von fusée-secondary bereitgestellte Funktion, die den Game Card-Reader der Nintendo Switch deaktiviert. Ihr Zweck ist es, zu verhindern, dass der Leser aktualisiert wird, wenn die Konsole ohne das Brennen von Sicherungen von einer niedrigeren Firmware-Version aktualisiert wurde. Genauer gesagt, von den Firmware-Versionen 4.0.0 oder 9.0.0, die Updates für die Firmware des Game Card-Readers eingeführt haben. Standardmäßig schützt Atmosphère den Game Card-Reader automatisch, aber du kannst dies nach Belieben ändern.

Um die Funktionalität zu ändern, füge die folgende Zeile in den Abschnitt `stratosphere` ein und ändere den Wert von `X` entsprechend der folgenden Liste:

```ini
[stratosphere]
nogc = X
```

```csharp
1 = nogc erzwingen, sodass Atmosphère den Game Card-Reader immer deaktiviert.
0 = nogc erzwingen, sodass Atmosphère den Game Card-Reader immer aktiviert.
```

## Hinzufügen eines benutzerdefinierten Startbildschirms

Atmosphère bietet einen eigenen Standardsplashscreen, der beim Start angezeigt wird. Dieser kann jedoch nach Belieben ersetzt werden.

Start-Splashscreens müssen eine Auflösung von 1280x720 haben.

Ein Skript zum Einfügen eines benutzerdefinierten Splashscreens in eine Release-Binary befindet sich im Quellbaum (`/utilities/insert_splash_screen.py`).

Um dies zu tun, führe den folgenden Befehl für das Skript aus:
`python insert_splash_screen.py <Pfad zu deinem Splashscreen-Bild> <Pfad zu /atmosphere/package3 auf deiner SD-Karte>`

## emummc.ini

Dies ist die Konfigurationsdatei für die [emummc](../components/emummc.md)-Komponente. Diese Datei befindet sich im Ordner `/emuMMC/` auf deiner SD-Karte.

Bitte ziehe das Repository des Projekts [hier](https://github.com/m4xw/emuMMC) für detaillierte Anweisungen und Dokumentation zu Rate.

## exosphere.ini

Dies ist die Konfigurationsdatei, die von exosphère verwendet wird. Diese Datei befindet sich im Stammverzeichnis deiner SD-Karte und eine Standardvorlage findest du im Ordner `/atmosphere/config_templates/`.

### Konfiguration der Debugging-Modi

Standardmäßig signalisiert Atmosphère dem Horizon-Kernel, dass Debugging aktiviert ist, lässt jedoch das Debugging im Benutzermodus deaktiviert, was unerwünschte Nebeneffekte verursachen kann. Wenn du dieses Verhalten ändern möchtest, gehe zum Abschnitt `exosphere` und ändere den Wert von `X` gemäß der folgenden Liste.

```ini
[exosphere]
debugmode = X
debugmode_user = X
```

```csharp
1 = aktivieren
0 = deaktivieren
```

### PRODINFO leeren

Atmosphère bietet eine Möglichkeit für Benutzer, ihre werkseitig installierten Kalibrierungsdaten (bekannt als PRODINFO) in entweder emulierten oder System-eMMC-Umgebungen zu leeren. Detaillierte Informationen dazu findest du in der jeweiligen Vorlagendatei. Die Nutzung dieser Konfiguration wird nicht empfohlen.

## override_config.ini

Diese Datei befindet sich im Ordner `/atmosphere/config/` auf deiner SD-Karte und eine Standardvorlage findest du im Ordner `/atmosphere/config_templates/`.

### Overrides-Format

Overrides werden während des Bootvorgangs aus der Datei `/atmosphere/config/override_config.ini` analysiert.

Standardmäßig ist `override_config.ini` nicht konfiguriert. Es kann verwendet werden, um das Verhalten bestimmter Tasten auszuwählen und sie an Funktionen wie das Starten des Homebrew-Menüs oder das Aktivieren des Cheat-Code-Managers zu binden.

Du kannst die override_key-Einträge in `override_config.ini` mit dieser Liste gültiger Tasten ändern:
| Formeller Name | .ini-Name |
| -------------- | --------- |
| A-Taste        | A         |
| B-Taste        | B         |
| X-Taste        | X         |
| Y-Taste        | Y         |
| Linker Stick   | LS        |
| Rechter Stick  | RS        |
| L-Taste        | L         |
| R-Taste        | R         |
| ZL-Taste       | ZL        |
| ZR-Taste       | ZR        |
| + Taste        | PLUS      |
| - Taste        | MINUS     |
| Linkes D-Pad   | DLEFT     |
| Oberes D-Pad   | DUP       |
| Rechtes D-Pad  | DRIGHT    |
| Unteres D-Pad  | DDOWN     |
| SL-Taste       | SL        |
| SR-Taste       | SR        |

Um das Verhalten der Override-Taste zu invertieren, setze ein Ausrufezeichen vor die Taste, die du verwenden möchtest. Es wird das eigentliche Spiel gestartet, während diese Taste gedrückt gehalten wird, anstatt ins Homebrew-Menü zu gehen. Zum Beispiel wird `override_key=!R` das Spiel nur starten, wenn R gedrückt gehalten wird, ansonsten wird es ins Homebrew-Menü booten. Danach kannst du deine SD-Karte wieder in deine Switch einlegen und wie gewohnt in Atmosphère booten. Du solltest jetzt in der Lage sein, ins Homebrew-Menü zu booten, indem du dein ausgewähltes Programm startest.

## system_settings.ini

Diese Datei befindet sich im Ordner `/atmosphere/config/` auf deiner SD-Karte und eine Standardvorlage findest du im Ordner `/atmosphere/config_templates/`.

### Einstellungen-Format

Atmosphère bietet eine Möglichkeit, die von der Firmware verwendeten Debug-Einstellungen des Systems zu überschreiben. Diese können während des Bootvorgangs aus der Datei `/atmosphere/config/system_settings.ini` analysiert werden. Diese Datei ist eine normale ini-Datei mit einigen spezifischen Interpretationen.

Die Standarddarstellung eines Einstellungsschlüssels hat die Form `name!key`. Dies wird innerhalb von `system_settings.ini` als Abschnitt `name` mit einem Eintrag `key` dargestellt. Zum Beispiel:

```ini
[name]
key = ...
```

Einstellungen können variable Typen haben (Strings, integrale Werte, Byte-Arrays, etc.). Um dies zu berücksichtigen, muss `system_settings.ini` Werte als `type_identifier!value_store`-Paar speichern. Eine Reihe verschiedener Typen wird unterstützt, mit den unten aufgeführten Identifikatoren.
Bitte beachte, dass eine fehlerhafte Wertzeichenfolge beim Booten einen fatalen Fehler verursacht. Ein vollständiges Beispiel für eine benutzerdefinierte Einstellung wird unten gegeben (Einstellung `eupld!upload_enabled = 0`), zur Nachahmung:

```ini
[eupld]
upload_enabled = u8!0x0
```

#### Unterstützte Typen

* Strings
  * Typ-Identifikatoren: `str`, `string`
  * Die Wertzeichenfolge wird direkt als Einstellung verwendet, mit angehängtem Null-Terminierer.
* Integrale Typen
  * Typ-Identifikatoren: `u8`, `u16`, `u32`, `u64`
  * Die Wertzeichenfolge wird über einen Aufruf von `strtoul(value, NULL, 0)` analysiert.
  * Die Bitbreite der Einstellung wird durch den Identifikator bestimmt (8 für 1 Byte, 16 für 2 Bytes und so weiter).
* Rohbytes
  * Typ-Identifikatoren: `hex`, `bytes`
  * Die Wertzeichenfolge wird als Hexadezimalzeichenfolge analysiert.
    * Die Wertzeichenfolge muss eine gerade Länge haben, sonst wird beim Analysieren ein fataler Fehler ausgegeben.

## Inhaltsspezifische Flags

Atmosphère unterstützt die Anpassung des CFW-Verhaltens basierend auf der Anwesenheit von `flags` auf der SD-Karte.

Die folgenden Flags werden auf Programmbasis unterstützt, indem `<flag_name>.flag` im Ordner `/atmosphere/contents/<program_id>/flags/` platziert wird:

* `boot2`, was anzeigt, dass das Programm während des `boot2`-Prozesses gestartet werden soll.

* `redirect_save`, was anzeigt, dass das Programm möchte, dass seine gespeicherten Daten auf die SD-Karte umgeleitet werden.
