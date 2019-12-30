\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cookbook}

\usepackage[T1]{fontenc}
\usepackage{bookman}
\usepackage{xfrac}
\usepackage{graphicx}

% If e.g. \section and \subsection commands are not used
% in the text, the large indentation of the \subsubsection
% items in the Table of Contents may be ugly; in that case,
% you should redefine appropriately \l@subsubsection .
% The book.cls definition is:
% \newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}} ;
% the second parameter (7.0em) is the initial skip, and
% the third (4.1em) is the length for the subsubsection
% number field (if the subsubsections are to be numbered).
% As an example, a redefinition of \l@subsubsection may look
% like:
% \makeatletter
% \renewcommand*\l@subsubsection{\@dottedtocline{3}{3em}{4.1em}}
% \makeatother
%
% A specific command \recipe{...} is defined as an alias
% for a \subsubsection{...} followed by two rules across
% the whole page and by a vertical space.
%
% Another command, \ingredients{...}, is defined to typeset a
% list of ingredients (the \ldots) with the italic font,
% inside a ``quote'' environment and  after an ``ingredient
% header'' \inghead---empty by default, and that can be
% redefined by the user with, e.g., a
% \renewcommand{\inghead}{\textbf{Ingredients (4 persons)}:\ }
% (note the trailing space).
%

\LoadClass{book}

\pagestyle{empty}
\raggedbottom

\setlength\parindent{0pt}
\setlength\parskip{2ex plus 0.5ex}

\setcounter{secnumdepth}{2}

\def\Vhrulefill{\leavevmode\leaders\hrule height 0.7ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt}

\newcommand{\rechead}
    {\centering\normalfont\Large\sffamily\bfseries}

\renewcommand{\subsubsection}
    {\@startsection{subsubsection}{3}{\z@}%
    {-5ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\rechead}}

\newcommand{\recipe}[1]{\pagebreak\subsubsection{#1}%
    \hrule height0.75pt width\hsize\vspace*{1\p@}%
    \hrule height0.25pt width\hsize}

\newcommand{\ingredients}[1]
    {{\list{}{\rightmargin 1em\leftmargin 1em}%
    \item[]\textit{#1}\endlist}%
    \Vhrulefill \ \includegraphics[width=12pt]{rule.pdf} \Vhrulefill%\hrule height0.25pt width\hsize%
    \vskip\parskip}

\newcommand{\directions}[1]{\textbf{Directions}:\ #1}

\def\half{\sfrac{1}{2}\ }
\def\third{\sfrac{1}{3}\ }
\def\quarter{\sfrac{1}{4}\ }
