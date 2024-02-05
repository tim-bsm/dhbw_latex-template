# LaTeX Template für die DHBW

## Was sind die clean Skripte?
Die clean Skripte werden dafür verwendet, um (unnötige) Files aus Unterordnern zu löschen. Die Files sind unnötig, wenn man die Vorlage weitergeben will bzw. wenn man fertig mit schreiben ist. Sie werden automatisch beim Builden erstellt und beschleunigen dieses für den nächsten Build. Wenn man diese also löscht, wird der nächste Build deutlich länger dauern.  
Allerdings ist es manchmal hilfreich diese Dateien zu löschen, da beim Builden irgendetwas schiefgeht. Hierfür müssen einfach die Skripte (abhängig vom jeweiligen Betriebssystem) ausgeführt werden.

### Windows
Zuerst in das Verzeichnis des LaTeX Ordners dieser Vorlage wechseln und dann die ```bat_clean.bat``` Datei im Terminal wie folgt aufrufen:
````
# Zum Wechseln in das Verzeichnis
cd /d <Dateipfad>

# Dann dort folgendes Ausführen
bat_clean.bat
````

### Linux / MacOS / _Generell_ Unix
Zuerst in das Verzeichnis des LaTeX Ordners dieser Vorlage wechseln und dann die ```sh_clean.sh``` Datei im Terminal wie folgt aufrufen:
````
# Zum Wechseln in das Verzeichnis
cd <Dateipfad>

# Dann dort folgendes Ausführen
sh sh_clean.sh
````

&nbsp;
## Mögliche Fehler
- Wenn das Flag "formelgroeverz" in der settings.tex auf True gesetzt ist, muss zwangsweise irgendwo mindestens ein Eintrag aus diesem Verzeichnis in den Chaptern verwendet werden, da sonst ein Fehler auftritt und das PDF nicht (richtig) erstellt werden kann.  
Selbiges gilt für das Akbürzungsverzeichnis mit dem Flag "abkverz".

&nbsp;
## Hilfreiche Links
- https://mathjiajia.github.io/vscode-and-latex/
- https://de.wikipedia.org/wiki/Liste_mathematischer_Symbole