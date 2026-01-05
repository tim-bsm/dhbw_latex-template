# LaTeX Template for the DHBW

### To view a short example of the template, please look at [this PDF](document/document.pdf).

&nbsp;

## Legal statement

As already stated under [the license](LICENSE), I do NOT guarantee any correctness of this repository and thus this template. That means, using this template is at your own risk of something being wrong or not as stated in the guidelines of the DHBW.  
That being said, I did develop this template with the [guidelines for the technical commission from october 2021](https://www.dhbw.de/fileadmin/user_upload/Dokumente/Dokumente_fuer_Studierende/191212_Leitlinien_Praxismodule_Studien_Bachelorarbeiten.pdf) in mind.

## Development Environment

To use this template optimally, it is best to use [MS Visual Studio Code](https://code.visualstudio.com) in combination with [JabRef](https://www.jabref.org).  
To check for any new updates, please visit my [repository](https://github.com/tim-bsm/dhbw_latex-template).

### Visual Studio Code

**Packages:**

- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)
- [LTeX+ – grammar/spell checking using LanguageTool](https://marketplace.visualstudio.com/items?itemName=ltex-plus.vscode-ltex-plus)

### JabRef

**[Browser Extension:](https://docs.jabref.org/collect/jabref-browser-extension)**  
For me, both the Python and JSON files were not present. I had to install them manually. The JSON is explained in the link above, the path for the Python file is also mentioned, but the file itself is not linked. You can find it [here](https://github.com/JabRef/jabref/) by searching for "jabrefHost" and downloading the appropriate file.

**Template:**  
The template [`bibliographie.bib`](/content/bibliographie.bib) already includes additional settings from JabRef, which can be adopted as is. Just start JabRef and use the explorer to select the file. Please do not create a new library.

&nbsp;

## What is this template?

### The structure

The project consists of three main folders:

- [`config`](/config/) contains the structure and logic behind this template. Normally you don't have to edit these files. Please be aware that changing things in this directory might brake the template. So please only modify the files if you know what you are doing.
- [`content`](/content) contains the content of the [generated `PDF`-file](/document/document.pdf). This directory is the main directory which will be used to write and design your paper.
  - The [`chapters`](/content/chapters/) folder contains all the chapters you want to write reaching from 1 until 99.
  - [`additionals`](/content/additionals/) contains the content for all the non-chapter files like the abstract. Moreover, in this directory images, code, equations and tables can be defined in their specific files. They can then be used in the chapters with their own commands. For that, please see the example chapters and the comments in the different files.
  - Any files that don't contain written content (like images, code, ...) should go in [`non_tex_files`](/content/non_tex_files/).
  - The [`user_settings.tex`-file](/content/user_settings.tex) is used to set different strings and make small changes to the appearance of the document.
- [`document`](/document/) contains all the build files and lastly [the generated `PDF`](/document/document.pdf).

### How to start?

Generally, I recommend to get a bit used to LaTeX and this template. For getting used to this template, please look at the two chapter examples in the [`chapters`-folder](/content/chapters/). To understand what each command is doing, also look at the [generated `PDF`](/document/document.pdf).

When you are ready to write, I would recommend the following steps every time you write a new paper:

1. Go into the [`user_settings.tex`-file](/content/user_settings.tex) and enter your information.
2. Go to the [`images`-folder](/content/non_tex_files/images/) and replace the two images `company_en.png` and `company_de.png` with the english and german versions of your company's logo. If the english and german version are the same, just use the same image for both files.  
   Moreover, please replace the `signature.jpg` with an image of your own signature.
3. Go to [`images.tex`](/content/additionals/images.tex) and edit the values like it is told in the comments there.
4. Rename the example chapters (e.g. `chapter-01.tex` to `eg_chapter-01.tex`) instead of deleting them. That way you can always come back and check for the syntax of the template / LaTeX.
5. Create your own chapters and start writing.
6. Before finishing the paper, please check the values in [`user_settings.tex`](/content/user_settings.tex) for their correctness and make sure that `\showtodonotestrue` is commented out. Otherwise the ToDo list will be visible on the first page of your [document](/document/document.pdf).

&nbsp;

## What are the clean scripts?

The clean scripts are used to delete (unnecessary) files from subfolders. The files are unnecessary if you want to share the template or if you are done writing. They are automatically created during the build process and speed up the next build. If you delete them, the next build will take significantly longer.  
However, it is sometimes helpful to delete these files if something goes wrong during the build. Just run the correct script (depending on your operating system).

### Windows

First, navigate to the directory of the LaTeX folder of this template and then run the [`bat_clean.bat`-file](/bat_clean.bat) in the terminal as follows:

```bash
# To change to the directory
cd /d <file path>

# Then execute the following
bat_clean.bat
```

### Linux / MacOS / _Generally_ Unix

First, navigate to the directory of the LaTeX folder of this template and then run the [`sh_clean.sh`-file](/sh_clean.sh) in the terminal as follows:

```bash
# To change to the directory
cd <file path>

# Then execute the following
sh sh_clean.sh
```

&nbsp;

## Miscellaneous

Code, formulas, images and tables do not need to be written in the external files in the [`/content/additionals`-folder](/content/additionals/). They can still be used normally.

&nbsp;

## Possible Errors

### `symbolstrue` or `acronymstrue` flag set

If the flag `symbolstrue` is set in the [`user_settings.tex`-file](/content/user_settings.tex), at least one entry from [the symbols file](/content/additionals/symbols.tex) must be used in the chapters, otherwise an error will occur and the PDF will not be created correctly.  
The same applies to [the acronyms file](/content/additionals/acronyms.tex) with the flag `acronymstrue`.

### Found a problem with the template?

If you think you found an issue caused by my template, please visit the [GitHub repository of this project](https://github.com/tim-bsm/dhbw_latex-template) and go to the [issues tab](https://github.com/tim-bsm/dhbw_latex-template/issues) to report your issue.

&nbsp;

## Helpful Links

- https://mathjiajia.github.io/vscode-and-latex/
- https://de.wikipedia.org/wiki/Liste_mathematischer_Symbole
