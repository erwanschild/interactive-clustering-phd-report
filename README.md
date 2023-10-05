# interactive-clustering-phd-report
Erwan SCHILD PHD report on Interactive Clustering methodology.

## Description

_TODO_

## Contribution

### Installation

- `MikTeX`: https://miktex.org/
- `TeXMaker`: https://www.xm1math.net/texmaker/

### Packages LaTeX

- morewrites
- babel-french

### Compilation

Pour configurer `TeXMaker` (`Options` > `Configurer Texmaker` > `Compil rapide` > `utilisateur`) :
```TeXMaker
pdflatex -interaction=nonstopmode -synctex=1 % | biber % | makeindex %.idx | makeglossaries % | pdflatex -interaction=nonstopmode -synctex=1 % | pdflatex -interaction=nonstopmode -synctex=1 % | "C:/Program Files (x86)/Adobe/Acrobat Reader DC/Reader/AcroRd32.exe" %.pdf
```
- _Notes_: `%` représente le nom du fichier sans extension.