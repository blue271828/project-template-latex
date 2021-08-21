# template-latex-project

This project is a template repository for the LaTeX project and requires the Docker runtime environment. This template supports Visual Studio (VS) Code Remote Development, which allows you to create LaTeX drafts using VS Code in an [Overleaf compatible container environment](https://github.com/overleaf/overleaf). There are two ways to build LaTeX files.



## Build LaTeX files on Dev Container

The development container is configured with the LaTeX extension for VS Code. If you save a LaTeX file using VS Code on your environment, the LaTeX file will be automatically built by the extension, and the created file will be output to the same directory.



## Build LaTeX files from local environment

If you want to build LaTeX files from your host directory, you can build with a `make` command as the following example:

```bahs
$ make
This is pdfTeX, Version 3.141592653-2.6-1.40.23 (TeX Live 2021) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./main.tex
LaTeX2e <2021-06-01> patch level 1
L3 programming layer <2021-06-18>
(/usr/local/texlive/2021/texmf-dist/tex/latex/base/article.cls
Document Class: article 2021/02/12 v1.4n Standard LaTeX document class
(/usr/local/texlive/2021/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2021/texmf-dist/tex/latex/base/inputenc.sty)
(/usr/local/texlive/2021/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
No file main.aux.
[1{/usr/local/texlive/2021/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
(./main.aux) )</usr/local/texlive/2021/texmf-dist/fonts/type1/public/amsfonts/c
m/cmbx12.pfb></usr/local/texlive/2021/texmf-dist/fonts/type1/public/amsfonts/cm
/cmr10.pfb></usr/local/texlive/2021/texmf-dist/fonts/type1/public/amsfonts/cm/c
mr12.pfb></usr/local/texlive/2021/texmf-dist/fonts/type1/public/amsfonts/cm/cmr
17.pfb>
Output written on main.pdf (1 page, 38488 bytes).
Transcript written on main.log.
```



