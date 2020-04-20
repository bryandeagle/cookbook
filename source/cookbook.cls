\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cookbook}
\usepackage[T1]{fontenc}
\usepackage{bookman}
\usepackage{xfrac}
\usepackage{graphicx}
\usepackage{multicol}
\usepackage{tikzpagenodes}
\usepackage{background}

% Format book class differently
\LoadClass[oneside]{book}
\pagestyle{empty}
\raggedbottom
\setlength\parindent{0pt}
\setlength\parskip{2ex plus 0.5ex}
\setcounter{secnumdepth}{2}

% Set margins and page size
\setlength{\paperheight}{4in}
\setlength{\paperwidth}{6in}
\RequirePackage{geometry}
\DeclareOption{card}{\geometry{top=0.25in, bottom=0.25in, left=0.25in, right=0.25in}}
\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}
\ExecuteOptions{card}
\ProcessOptions
\setlength{\columnseprule}{0.5pt}
\setlength\columnsep{0.25in}

% Common Symbols
\newcommand{\degree}{$^{\circ}$}

% Corner Decorations
\backgroundsetup{opacity=1, scale=1, angle=0, contents={%
    \begin{tikzpicture}[remember picture, overlay]
        \node[xshift=-0.25in, yshift=-0.25in] at (current page.north east){\includegraphics[width=12pt]{rule.pdf}};
        \node[xshift=0.25in, yshift=-0.25in] at (current page.north west){\includegraphics[width=12pt]{rule.pdf}};
    \end{tikzpicture}}}

% Ingredients Environment
\newenvironment{ingredients}
    {\centerline{\textbf{Ingredients:}}\begin{description}\setlength\itemsep{0pt}\begin{itshape}}
    {\end{itshape}\end{description}\vfill\null\columnbreak}

% Recipe Title
\newcommand{\rectitle}
    {\@startsection{section}{3}{\z@}{-5ex\@plus -1ex \@minus -.2ex}{1.5ex \@plus .2ex}
    {\centering\normalfont\Large\sffamily\bfseries}}

% Recipe Environment
\newenvironment{recipe}[1]
    {\begin{multicols}{2}[\rectitle{#1}]}
    {\end{multicols}\pagebreak}