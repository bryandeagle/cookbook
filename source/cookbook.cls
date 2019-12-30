\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cookbook}

\usepackage[T1]{fontenc}
\usepackage{bookman}
\usepackage{xfrac}
\usepackage{graphicx}

% Format book class differently
\LoadClass{book}
\pagestyle{empty}
\raggedbottom
\setlength\parindent{0pt}
\setlength\parskip{2ex plus 0.5ex}
\setcounter{secnumdepth}{2}

% Set margins and page size
\setlength{\paperheight}{8.27in}
\setlength{\paperwidth}{5.85in}
\RequirePackage{geometry}
\DeclareOption{portrait}{\geometry{portrait, top=0.5in, bottom=0.5in, left=0.5in, right=0.5in}}
\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}
\ExecuteOptions{portrait}
\ProcessOptions

% Recipe with double rule
\newcommand{\rechead}
    {\centering\normalfont\Large\sffamily\bfseries}
\renewcommand{\subsubsection}
    {\@startsection{subsubsection}{3}{\z@}%
    {-5ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\rechead}}
\newcommand{\recipe}[1]{\pagebreak\subsubsection{#1}%
    \hrule height0.75pt width\hsize\vspace*{1\p@}%
    \hrule height0.25pt width\hsize\vspace*{6\p@}}

% Horizontal rule with crossed spoon and fork
\def\vhrulefill{\leavevmode\leaders\hrule height 0.7ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt}
\newcommand{\cookrule}{\vhrulefill \ \includegraphics[width=12pt]{rule.pdf} \vhrulefill}

% Ingredients environment
\newenvironment{ingredients}%
    {\begin{description}{\rightmargin 1em\leftmargin 1em}\raggedright\begin{itshape}}%
    {\end{itshape}\end{description}\vspace*{-\baselineskip}\leavevmode\cookrule}


% Definitions for Pandoc
\providecommand{\tightlist}{%
  \setlength{\itemsep}{6pt}\setlength{\parskip}{0pt}}
\newcommand{\hypertarget}[2]{#2}
\renewcommand{\label}[1]{}
\renewcommand{\section}{\recipe}
\renewenvironment{itemize}{\begin{ingredients}}{\end{ingredients}}