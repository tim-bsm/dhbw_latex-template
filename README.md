# LaTeX Template for the DHBW
## Development Environment
To use this template optimally, it is best to use [MS Visual Studio Code](https://code.visualstudio.com) in combination with [JabRef](https://www.jabref.org).

### Visual Studio Code
**Packages:**  
- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)
- [LTeX – LanguageTool grammar/spell checking](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex)

**Settings:**  
The following settings should be added to the settings.json of VSC for better usability.  
On Windows, press CTRL+SHIFT+P and on Mac CMD+SHIFT+P in VSC, type "settings" and select "Preferences: Open User Settings (JSON)". Then insert the following:

```json
// LaTeX Settings
"ltex.language": "de-DE", // Choose your own language: "en-US", "de-DE", ...
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
    }
],
"latex-workshop.latex.recipes": [
    {
        "name": "latexmk",
        "tools": [
            "latexmk"
        ]
    }
],
// Fix citation warnings in editor when using biber (wavy lines).
"latex-workshop.intellisense.citation.backend": "biblatex",
// Set bibliography indentation to two spaces (default).
"latex-workshop.bibtex-format.tab": "2 spaces",
// Build PDF every time a file is saved.
"latex-workshop.latex.autoBuild.run": "onSave",
// Sync PDF with cursor position after compiling.
"latex-workshop.synctex.afterBuild.enabled": true,
// Automatically choose first recipe (latexmk) on next build.
"latex-workshop.latex.recipe.default": "first",

// VS Code Settings
"editor.wordWrap": "on",
```

### JabRef
**[Browser Extension:](https://docs.jabref.org/collect/jabref-browser-extension)**  
For me, both the Python and JSON files were not present. I had to install them manually. The JSON is explained in the link above, the path for the Python file is also mentioned, but the file itself is not linked. You can find it [here](https://github.com/JabRef/jabref/) by searching for "jabrefHost" and downloading the appropriate file.

**Template:**  
The template ```bibliographie.bib``` in ```/config``` already includes additional settings from JabRef, which can be adopted as is. Just start JabRef and use the explorer to select the file. Please do not create a new library.

&nbsp;
## What are the clean scripts?
The clean scripts are used to delete (unnecessary) files from subfolders. The files are unnecessary if you want to share the template or if you are done writing. They are automatically created during the build process and speed up the next build. If you delete them, the next build will take significantly longer.  
However, it is sometimes helpful to delete these files if something goes wrong during the build. Just run the correct script (depending on your operating system).

### Windows
First, navigate to the directory of the LaTeX folder of this template and then run the ```bat_clean.bat``` file in the terminal as follows:
```bash
# To change to the directory
cd /d <file path>

# Then execute the following
bat_clean.bat
```

### Linux / MacOS / _Generally_ Unix
First, navigate to the directory of the LaTeX folder of this template and then run the ```sh_clean.sh``` file in the terminal as follows:
```bash
# To change to the directory
cd <file path>

# Then execute the following
sh sh_clean.sh
```

&nbsp;
## Miscellaneous
Code, formulas, images and tables do not need to be written in the external files under ```/content/additionals```. They can still be used normally.

&nbsp;
## Possible Errors

### Flag 'symbolstrue' or 'acronymstrue' set
If the flag `symbolstrue` is set in ```/content/user_settings.tex```, at least one entry from the symbols file must be used in the chapters, otherwise an error will occur and the PDF will not be created correctly.  
The same applies to the acronyms file with the flag `acronymstrue`.

&nbsp;
## Helpful Links
- https://mathjiajia.github.io/vscode-and-latex/
- https://de.wikipedia.org/wiki/Liste_mathematischer_Symbole
