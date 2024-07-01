# LaTeX Template für die DHBW

## Entwicklungsumgebung
Um diese Vorlage optimal nutzen zu können, sollte am besten "MS Visual Studio Code" in Kombination mit JabRef verwendet werden. 

### Visual Studio Code
**Packages:**  
- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)
- [LTeX – LanguageTool grammar/spell checking](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex)

**Einstellungen:**  
Folgende Einstellungen sollten für eine bessere Verwendbarkeit in die settings.json von VSC zwischen den bereits bestehenden geschweiften Klammern eingefügt werden.  
Hierfür auf Windows in VSC STRG+SHIFT+P und auf Mac CMD+SHIFT+P drücken, "settings" eingeben und das Feld mit "Preferences: Open User Settings (JSON)" auswählen. Dort bitte Folgendes einfügen:
``````
// LaTeX Settings
"ltex.language": "de-DE",
"latex-workshop.latex.tools": [
    {
        "name": "latexmk",
        "command": "latexmk",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "-outdir=%OUTDIR%",
            "%DOC%"
        ],
        "env": {}
    },
    {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ],
        "env": {}
    },
    {
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ],
        "env": {}
    },
    {
        "name": "bibtex",
        "command": "bibtex",
        "args": [
            "%DOCFILE%"
        ],
        "env": {}
    }       
],
"latex-workshop.latex.recipes": [
    {
        "name": "latexmk",
        "tools": [
            "latexmk"
        ]
    },
    {
        "name": "pdfLaTeX",
        "tools": [
            "pdflatex"
        ]
    },
    {
        "name": "xelatex",
        "tools": [
            "xelatex"
        ]
    },
    {
        "name": "pdflatex ➞ bibtex ➞ pdflatex`×2",
        "tools": [
            "pdflatex",
            "bibtex",
            "pdflatex",
            "pdflatex"
        ]
    },
    {
        "name": "xelatex ➞ bibtex ➞ xelatex`×2",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    }
        
],
"latex-workshop.intellisense.citation.backend": "biblatex",
"latex-workshop.latex.recipe.default": "first", // set latexmk as default

// VS Code Settings
"editor.wordWrap": "on",
``````

### JabRef
**[Browser Extension:](https://docs.jabref.org/collect/jabref-browser-extension)**  
Bei mir waren sowohl die Python, als auch die JSON Datei nicht vorhanden. Diese musste ich manuell installieren. Die JSON ist im obigen Link erklärt, der Pfad für die Python Datei zwar auch, die Datei selber ist allerdings nicht verlinkt. Man findet diese [hier](https://github.com/JabRef/jabref/), wenn man nach "jabrefHost" sucht und die passende Datei herunterlädt.

**Template:**  
Das Template ```bibliographie.bib``` in ```./settings``` beinhaltet bereits weitere Einstellungen von JabRef, welche einfach so übernommen werden können. Hierfür muss JabRef nur gestartet werden und dann mithilfe des Explorers die Datei ausgewählt werden. Bitte keine neue Library anlegen.

&nbsp;
## Was sind die clean-Skripte?
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
## Sonstiges
Formeln, Bilder und Tabellen müssen nicht in die externen Dateien unter ```/content/additionals/editable``` geschrieben werden. Sie können weiterhin normal verwendet werden.

&nbsp;
## Mögliche Fehler

### Watermark wird kompiliert
Sollte das Problem bestehen, dass die Datei watermark.tex kompiliert wird - nicht document.tex -, dann sollten die folgenden Schritte durchgeführt werden:
1. Das clean-Skript ausführen. Alternativ können auch alle Dateien im watermark Ordner - abgesehen von .tex und .pdf - manuell gelöscht werden.
2. Die config-Datei öffnen
3. In der config-Datei neu kompilieren (rechts oben auf den grünen Pfeil drücken)

### Flag "formelgroeverz" oder "abkverz" gesetzt
Wenn das Flag "formelgroeverz" in der settings.tex auf True gesetzt ist, muss zwangsweise irgendwo mindestens ein Eintrag aus diesem Verzeichnis in den Chaptern verwendet werden, da sonst ein Fehler auftritt und das PDF nicht (richtig) erstellt werden kann.  
Selbiges gilt für das Abkürzungsverzeichnis mit dem Flag "abkverz".

### "empty bibliography"
Wenn als Fehler "empty bibliography" ausgegeben wird, ist es einen Versuch wert, in der settings.tex die Einstellung für das "zitierbackend" auf die jeweilige andere Variante - die im Kommentar darüber genannt wird - zu stellen.

&nbsp;
## Hilfreiche Links
- https://mathjiajia.github.io/vscode-and-latex/
- https://de.wikipedia.org/wiki/Liste_mathematischer_Symbole
