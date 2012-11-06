% -----------------------------------------------------------------------
% pi1.cls
% Based on pi1-muster.tex and defs.tex used before 2003 for
% PI 1 in Bremen.
% Adapted by Thomas Röfer and Ulrich Hannemann

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uni}
\LoadClass[11pt,a4paper,twoside]{article}
\usepackage{ngerman}
\usepackage[latin1]{inputenc}
\usepackage{graphicx}
\usepackage{moreverb}
\usepackage{fancyhdr}

% -----------------------------------------------------------------------
% Page layout

% enlarge page
\setlength{\textwidth}{16cm}
\setlength{\topmargin}{-1cm}
\setlength{\evensidemargin}{0cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\textheight}{24cm}

% skip between paragraphs
\setlength{\parskip}{1ex}
% ... and no indentation at start of a new paragraph
\setlength{\parindent}{0ex}

\newcommand{\thissemester}{WS 2012/13}
\newcommand{\thistitle}{Bioinspirierte Codierung und Datenkompression}

\pagestyle{fancy}
\thispagestyle{empty}

% -----------------------------------------------------------------------
% Main macros
%
% here the title is defined.
% Parameters:
% #1: Number of the current home assignment 
% #2: Date the assignment is due
% #3: Name of tutor 
% #4: Number of the tutorial
% #5: Name of the first group member
% #6: Name of the second group member
% #7: Name of the third  group member

\renewcommand{\maketitle}[7]
          {\@maketitle{#1}{#2}{#3}{#4}{#5}{#6}{#7}{"Ubungsblatt}}
\renewcommand\thesection{Aufgabe \arabic{section}}
\newcommand\skipsection{\stepcounter{section}}

% -----------------------------------------------------------------------
% Misc macros

\newcommand{\grenzop}[3]{\mathop{#1}\limits^{#2}_{#3}}
\newcommand{\langrechtspfeil}[2]{\grenzop{\longrightarrow}{#1}{#2}}
\newcommand{\bob}[0]{\hspace*{\fill}$\Box$}

% -----------------------------------------------------------------------

\renewcommand{\@maketitle}[8]
{
    \begin{tabular}[t]{lr}
      \begin{tabular}[t]{l}
        \begin{tabular}[t]{l@{\hskip 10mm}l}
            \thistitle & \thissemester \hspace{4ex} \\
            Tutor: {#3}  &  Gruppe: {#4} \\
        \end{tabular} \vspace{5mm} \\
        {\Huge\sf {#8} {#1} } \\[1.5ex]
        {\Large Aufgabenl\"osung} \\[1ex]
        {\Large Abgabe: {#2}} \\[1ex]
      \end{tabular}
      &
      \begin{tabular}[t]{l}
          {#5}\\
          {#6}\\
          {#7}\\
      \end{tabular} \\[2ex]
    \end{tabular}\\
    \rule{\linewidth}{1pt}

% -----------------------------------------------------------------------
% Create headings (Thanks to Elmar Loos)

    \fancyhead{} %clear all fields
    \fancyhead[LO,RE]{PI 1, \thissemester}
    \fancyhead[RO,LE]{Tutor: {#3}, Gruppe: {#5} et. al.}
    \fancyfoot{} %clear all fields
    \fancyfoot[RO,LE]{\thepage}
}

\endinput
