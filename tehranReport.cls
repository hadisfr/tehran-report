\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tehranReport}

\LoadClass{report}
\RequirePackage{kvoptions}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
% \RequirePackage{xepersian}

\DeclareStringOption[XBNiloofar]{persianFont}
\DeclareStringOption[Times]{latinFont}
\DeclareStringOption[logo.png]{logo}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessKeyvalOptions*

\makeatletter


\AtBeginDocument{
    \settextfont{\tehranReport@persianFont}
    \setlatintextfont{\tehranReport@latinFont}
    \let\thetitle\@title
    \let\theauthor\@author
    % \let\theuniversity\@title

    \pagestyle{fancy}
    \fancyhf{}
    \chead{\thecourse\quad{\bfseries \thetitle}\dotfill\thepage}
}

\newcommand{\maketitlepage}{
    \begin{titlepage}%
        \let\footnotesize\small
        \let\footnoterule\relax
        \let \footnote \thanks
        \null\vfil
        \vskip 60\p@
        \begin{center}%
            {\rule{0.6\textwidth}{0.5pt}\par}
            {\includegraphics[height = 7em]{\tehranReport@logo} \par}%
            {\Large \bfseries \theuniversity \par}%
            {\large \thecollege \par}%
            {\rule{0.6\textwidth}{0.5pt}\par}
            \vskip 6em%
            {\Huge \bfseries \@title \par}%
            % \vskip 1.5em%
            {\rule{0.8\textwidth}{1pt}\par}
            {\Large \thecourse \par}%
            \vskip 3em%
            % \lineskip .75em%
            {\LARGE \@author \par}%
            \vskip 0.5em%
            {\large دانشجوی کارشناسی مهندسی کامپیوتر~-~نرم‌افزار \par}%
            \vskip 0.5em%
            {\normalsize \thestudentnumber \par}%
            \vskip 1.5em%
            {\large \bfseries استاد راهنما \par}%
            \vskip 0.5em%
            {\large \thesupervisor \par}%
            \vskip 3em%
            {\@date \par}%
        \end{center}\par
        \@thanks
        \vfil\null
        \newpage
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    \global\let\and\relax
}
\renewcommand{\maketitle}{\maketitlepage}
\newcommand{\university}[1]{\def\theuniversity{#1}}
\newcommand{\college}[1]{\def\thecollege{#1}}
\newcommand{\studentNumber}[1]{\def\thestudentnumber{#1}}
\newcommand{\authorPosition}[1]{\def\theauthorposition{#1}}
\newcommand{\course}[1]{\def\thecourse{#1}}
\newcommand{\supervisor}[1]{\def\thesupervisor{#1}}

\makeatother
