\ProvidesClass{Präsentationsvorlage}
\LoadClass[12pt,handout]{beamer}
%Beamereinstellungen
\usetheme{default}
\usepackage{appendixnumberbeamer}
% \usefonttheme{serif}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{bibliography item}{}
\setbeamertemplate{note page}
{ 
\rule{\textwidth}{0.1pt} 
\insertnote 
}
\setbeamertemplate{footline}[frame number]
\setbeamerfont{footnote}{size=\tiny}
\beamertemplatenavigationsymbolsempty
\setbeamercolor{block title alerted}{fg=white, bg=orange}
\setbeamercolor{block body alerted}{bg=orange!25}

\usepackage{lmodern}
\usepackage{booktabs}
\usepackage[scale=2]{ccicons}
\usepackage{multirow}
\usepackage{tabulary}
\usepackage[font=scriptsize]{caption}
\usepackage[main=ngerman]{babel}
\usepackage{graphicx}
\usepackage{pgfplots}
\usepgfplotslibrary{dateplot}
\usepackage{subcaption}
\usepackage{tikz}
\usepackage{circuitikz}
\usetikzlibrary{shapes,backgrounds,intersections}
\usepackage{listings}

% Bibliography
\usepackage[backend=biber, style=authoryear-icomp, maxcitenames=2, maxbibnames=99, uniquelist=false, language=ngerman]{biblatex}
\addbibresource{references.bib}
%Einstellungen Literaturverzeichnis
\DefineBibliographyStrings{ngerman}{
	urlseen = {Letzter Zugriff:},
	urlfrom = {Verfügbar über:},
	andothers = {{et\,al\adddot}}
}
    \renewcommand*{\bibfont}{\scriptsize}
	\DeclareFieldFormat{url}{\bibstring{urlfrom}\addcolon\space\url{#1}}
	\DeclareFieldFormat[article]{citetitle}{#1\midsentence}
	\DeclareFieldFormat[article]{title}{#1\midsentence}
	\renewcommand*{\labelnamepunct}{\addspace}
	\DeclareNameAlias{sortname}{family-given}
	\renewcommand*{\multinamedelim}{\space\addsemicolon\space} 
		%\DefineBibliographyExtras{ngerman}{
		%\DeclareFieldFormat[article]{volume}{#1.\addspace Jg.} %Formatierung des Jahrgangs einer Zeitschrift
		%\DeclareFieldFormat[article]{number}{Nr.\addspace#1}
		%} %Formatierung der Heftnummer
%\AtEveryCite{\tiny}

%Wiederholung des Inhaltsverzeichnisses 
\AtBeginSection[]{
\begin{frame}[plain]
    \tableofcontents[currentsection, hideothersubsections]
\end{frame}
}
