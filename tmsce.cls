\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tmsce}[2026/01/20 TMSCE Journal Class]
\LoadClass[11pt,letterpaper]{article}
% Sans-serif font throughout
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
% Ensure minimum font size is 11pt
\renewcommand{\small}{\fontsize{11pt}{13pt}\selectfont}
\renewcommand{\footnotesize}{\fontsize{11pt}{13pt}\selectfont}
\renewcommand{\scriptsize}{\fontsize{11pt}{13pt}\selectfont}
\renewcommand{\tiny}{\fontsize{11pt}{13pt}\selectfont}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage{graphicx}
\usepackage[normalem]{ulem}
\usepackage{xcolor}
\RequirePackage{pgfplots}
\hypersetup{
    colorlinks=true,
    urlcolor=blue,
    linkcolor=blue,
    citecolor=blue
}
\newcommand{\uhref}[2]{\href{__#1__}{\uline{#2}}}
\geometry{left=1in,right=1in,top=1in,bottom=1in,columnsep=24pt}
\AtBeginDocument{\sloppy}
\newcommand{\journalname}{Transactions on Mathematical Sciences and Computational Engineering}
\newcommand{\vol}[1]{\def\@vol{#1}}
\newcommand{\issue}[1]{\def\@issue{#1}}
\newcommand{\yearofpub}[1]{\def\@yearofpub{#1}}
\newcommand{\pagerange}[1]{\def\@pagerange{#1}}
\newcommand{\received}[1]{\def\@received{#1}}
\newcommand{\revised}[1]{\def\@revised{#1}}
\newcommand{\accepted}[1]{\def\@accepted{#1}}
\def\@vol{TBD}
\def\@issue{TBD}
\def\@yearofpub{TBD}
\def\@pagerange{TBD}
\def\@received{}
\def\@revised{}
\def\@accepted{}
\newcommand{\authors}[1]{\def\@tmsceauthors{#1}}
\def\@tmsceauthors{}
\newcommand{\titleimage}[1]{\def\@titleimage{#1}}
\def\@titleimage{}
% ---------- Header/footer ----------
\setlength{\headheight}{14pt}
\addtolength{\topmargin}{-2pt}
\pagestyle{fancy}
\fancyhf{}                 % clear everything
\fancyhead[L]{Cornell Electric Vehicles}
\fancyhead[R]{IGVC 2026}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[C]{\thepage}    % page number centered
\titleformat{\section}{\normalfont\bfseries\large}{\thesection.}{0.6em}{}
\titleformat{\subsection}{\normalfont\bfseries\normalsize}{\thesubsection.}{0.6em}{}
\titlespacing*{\section}{0pt}{6pt}{3pt}
\titlespacing*{\subsection}{0pt}{4pt}{2pt}
\titlespacing*{\subsubsection}{0pt}{4pt}{2pt}
\setlist{itemsep=2pt,topsep=3pt,parsep=0pt,partopsep=0pt}
% ---------- Abstract ----------
\renewenvironment{abstract}{%
  \vspace{0.4em}
  {\large\bfseries 0. Abstract}\par
  \vspace{0.3em}
  \noindent
}{%
  \par\vspace{0.6em}
}
\newcommand{\printkeywords}{}
\newcommand{\printdates}{%
  \noindent\small
  \ifstrempty{\@received}{}{\textbf{Received:} \@received\hspace{1em}}
  \ifstrempty{\@revised}{}{\textbf{Revised:} \@revised\hspace{1em}}
  \ifstrempty{\@accepted}{}{\textbf{Accepted:} \@accepted}
  \par
  \normalsize\vspace{0.6em}
}
\renewcommand{\maketitle}{%
  \thispagestyle{fancy}
  \begin{center}
    {\Large\bfseries \@title\par}
    \vspace{1em}
    \ifstrempty{\@titleimage}{}{%
      \includegraphics[width=0.05\textwidth]{\@titleimage}\par
      \vspace{1em}
    }
    {\normalsize \@tmsceauthors\par}
  \end{center}
  \vspace{0.4em}
  \noindent\rule{\textwidth}{0.4pt}\par
  \vspace{0.8cm}
}
\newcommand{\tmsceendfrontmatter}{%
  \vspace{0.4em}
  \noindent\rule{\textwidth}{0.4pt}\par
  \vspace{0.6em}
}
\setstretch{1.05}