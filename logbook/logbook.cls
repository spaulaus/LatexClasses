\def\filename{logbook.cls}
\def\fileversion{v. 0.0.1}
\def\filedate{15 February 2013}
\def\contributors{S. V. Paulauskas}

\typeout{\filename}
\typeout{\fileversion}
\typeout{Created by S. V. Paulauskas}
\typeout{\filedate}
\typeout{This file uses some of the macros from the Thesis & Dissertation Template for The 
University of Tennessee at Knoxville, written by Tony Saad}

\ProvidesClass{logbook}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ExecuteOptions{12pt}% execute default options
\ProcessOptions%
\LoadClass{report}

\def\@title{My Title}
\def\@author{My Name}

%---------- LOAD PACKAGES ----------
\usepackage[plainpages=true,breaklinks=true,pdfpagelabels=true,pagebackref]{hyperref}
\usepackage{amsmath,amsthm,amssymb}
\usepackage{amsfonts}
\usepackage{appendix}
\usepackage{caption}
\usepackage{comment}
\usepackage{color}
\usepackage{enumerate}
\usepackage[top=1in,bottom=1in,left=1in,right=1in,vcentering]{geometry}
\usepackage{float}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{relsize} 
\usepackage{booktabs}
\usepackage{mathrsfs}
\usepackage{multirow}
\usepackage{soul}
\usepackage{subcaption}
\usepackage{url}
\usepackage{wrapfig}

\hypersetup{%
  bookmarksnumbered = true, 
  pdftitle={\@title}, 
  pdfauthor={\@author},
  pdfpagelayout=OneColumn,
  bookmarksopen=False,
  pdfborder=0 0 0,        % make all links invisible, so the pdf looks good when printed	
  pdffitwindow=true,      % window fit to page when opened
  pdfcreator={\@author},  % creator of the document
  pdfnewwindow=true,      % links in new window
  colorlinks=true,        % false: boxed links; true: colored links
  linkcolor=blue,         % color of internal links
  citecolor=magenta,      % color of links to bibliography
  filecolor=magenta,      % color of file links
  urlcolor=cyan,          % color of external links
  unicode = true
}

%---------- SET HYPHENATION ---------
\hyphenpenalty=5000	% reduce hyphenation as much as possible
\tolerance=1000     % goes with the previous command

%---------- Widow/orphan protection ----------
\clubpenalty=10000    % Minimize orphans orphans(eliminate 10000)
\widowpenalty=10000   % Minimize widows
\brokenpenalty=10000  % Do not allow hyphen across pages
% Use cool footnotes
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\raggedbottom

%---------- MACRO FOR SETTING UP THE TITLE PAGE ----------
\newcommand {\settitle}[2] {
  \title{
    \centering
    \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} 
    \rule{\textwidth}{0.4pt}\\[0.5\baselineskip] 
    \Huge \bfseries {#1} \\[0.5\baselineskip] \huge {#2}
    \rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt}
    \rule{\textwidth}{0.4pt}
  }
}

%---------- MACRO TO SET THE AUTHOR ---------
\newcommand {\setauthor}[2] {
  \author{\Huge {#1} \\[0.5\baselineskip] \Large {#2} \\[1.5\baselineskip]}
}

%---------- MACRO TO SET THE STARTING DATE ---------
\newcommand {\setstartdate}[1] {
  \date{Started: {#1} \\[0.5\baselineskip] Last Updated: \today}
}

%---------- MACRO FOR ADDING TO THE TOC ----------
\newcommand {\addToTOC}[1] {
  \cleardoublepage
  \phantomsection
  \addcontentsline{toc}{part}{#1}
}
%---------- MACRO FOR ADDING TO PDF BOOKMARKS ---------
\newcommand {\addToPDFBookmarks}[3] {
  \cleardoublepage
  \phantomsection
  \pdfbookmark[#1]{#2}{#3}
}

%---------- MACRO TO INSERT THE DATE AS A NEW SECTION ---------
\newcommand {\workday}[1] {
  \section{{#1}}
  @\label{sec:#1}
}
