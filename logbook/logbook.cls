\def\filename{logbook.cls}
\def\fileversion{v. 0.9.0}
\def\filedate{15 February 2013}
\def\contributors{S. V. Paulauskas}

\typeout{\filename}
\typeout{\fileversion}
\typeout{Created by S. V. Paulauskas}
\typeout{\filedate}
\typeout{This class uses some of the macros from the Thesis & Dissertation 
  Template for The University of Tennessee at Knoxville, written by Tony Saad}

\ProvidesClass{logbook}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ExecuteOptions{12pt}% execute default options
\ProcessOptions%
\LoadClass{report}

\def\@title{My Title}
\def\@author{My Name}

%---------- LOAD PACKAGES ----------
\usepackage{amsmath,amsthm,amssymb}
\usepackage{amsfonts}
\usepackage{appendix}
\usepackage{caption}
\usepackage{comment}
\usepackage{color}
\usepackage{enumerate}
\usepackage[top=1in,bottom=1in,left=1in,right=1in,vcentering]{geometry}
\usepackage{float}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{listings}
\usepackage{relsize} 
\usepackage{booktabs}
\usepackage{mathrsfs}
\usepackage{multirow}
\usepackage{subcaption}
\usepackage{soul}
\usepackage{url}
\usepackage{wrapfig}
\usepackage[plainpages=false,breaklinks=true,pdfpagelabels=true,pagebackref]{hyperref}

\hypersetup{
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
  citecolor=blue,         % color of links to bibliography
  filecolor=magenta,      % color of file links
  urlcolor=magenta,       % color of external links
  unicode = true
}

\lstset{
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  %morecomment=[1]{//},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{magenta},    % comment style
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  float=htbp,
  frame=trbl,                      % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  morekeywords={sqrt}, % if you want to add more keywords to the set
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=-4pt,                  % how far the line-numbers are from the code
  numberstyle=\color{gray},        % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  morestring=[b]'',
  morestring=[d]',
  morestring=[d]`,
  morestring=[b]``,
  stringstyle=\color{red},         % string literal style
  tabsize=4,                       % sets default tabsize to 4 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
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
  \label{sec:#1}
}

%---------- MACRO TO INSERT A NOTE ---------
\newcommand {\note}[1] {
  \vspace{\baselineskip}
  \noindent\textbf{#1}
}
