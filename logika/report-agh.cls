% This file was originaly converted to LaTeX by Writer2LaTeX ver. 1.4
% see http://writer2latex.sourceforge.net for more info
% then heavily modified by me 
% see HELL for more info

%packages to install
%supertabular multirow makecell
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report-agh}[2018/05/19 AGH Report Template]

\LoadClass[fleqn,a4paper]{article}


\RequirePackage[a4paper,left=2cm,right=2cm,top=2cm]{geometry}

%language/localisation packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,polish]{babel}
\let\lll\undefined

%math
\RequirePackage{amsmath}
\RequirePackage{amssymb,amsfonts,textcomp}
\RequirePackage{array}

%link setup
\RequirePackage[pdfusetitle]{hyperref}
\hypersetup{colorlinks=true, linkcolor=blue, citecolor=blue, filecolor=blue, urlcolor=blue, pdfsubject=, pdfkeywords=}

\RequirePackage{color}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{multirow}
\RequirePackage{makecell}


\def \@Authorcount {4}
\newcommand{\@Adepartament}{EAIiIB}
\newcommand{\@subject}{[Przedmiot]}
\newcommand{\@Adirection}{Informatyka}
\newcommand{\@Ayear}{\the\year}
\newcounter{semester}
\setcounter{semester}{1}
\newcommand{\@ASemester}{\Roman{semester}}


\newcommand{\Departament}[1]{\renewcommand{\@Adepartament}{#1}}
\newcommand{\Subject}[1]{\renewcommand{\@subject}{#1}}

\newcommand{\AYear}[1]{\renewcommand{\@Ayear}{#1}}
\newcommand{\ASemester}[1]{\setcounter{semester}{#1}}
\newcommand{\Adirection}[1]{\renewcommand{\@Adirection}{#1}}

\renewcommand{\maketitle}{
\hskip -3cm
\begin{center}
\begin{tabular}{|c|c|c|c|}
\hline
\multirow{8}{2cm}{ \centering \includegraphics[height=2.5cm]{AGH-logo.jpg} }&%logo
\multicolumn{3}{c|}{ \textbf{Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie}}\\
\cline{2-4}

&\multicolumn{3}{c|}{\textbf{\@subject}}\\%Przedmiot
\cline{2-4}

&\emph{Wydział:} \textbf{\@Adepartament}&\emph{Kierunek:} \textbf{\@Adirection}&\emph{Imię i Nazwisko:}\\
\cline{2-3}

&\emph{Rok i Semestr:} &\emph{Data ćwiczenia:}&\multirow{\@Authorcount}{*}{  \textbf{\makecell{
\@author}}}\\
&\textbf{\@Ayear~\@ASemester}&\textbf{\@date}&\\
&&&\\
&&&\\
&&&\\
\cline{2-4}

&\multicolumn{3}{l|}{\makecell{\@title}}\\
\hline
\end{tabular}
\end{center}
}


\ProcessOptions\relax