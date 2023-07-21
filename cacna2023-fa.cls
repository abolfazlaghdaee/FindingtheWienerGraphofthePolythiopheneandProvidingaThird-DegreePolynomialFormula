%% This is a template for the 52th Annual Iranian Mathematics Conference to be
%% held at Shahid Bahonar University.
%%
%% Acknowledgements: In this file, some parts and ideas from the templates for
%% the 50th AIMC and the 10 Seminar on Linear algebra and its Applications
%% has been used.

\ProvidesClass{aimc52-fa}[A template for the 52th Annual Iranian
Mathematics Conference, Shahid Bahonar University of Kerman]

\newif\if@english
\@englishtrue
\DeclareOption{Persian}{
	\@englishfalse
}
\ProcessOptions\relax


\if@english
\LoadClass[a4paper,11pt,twoside]{amsproc}%
\else
\LoadClass[a4paper,11pt,twoside]{amsart}%
\fi

\RequirePackage{graphicx} %
\RequirePackage[all]{xy} %
\RequirePackage{amsmath,amssymb, amsthm, amsfonts, amscd, mathtools, cite, subfig}
\RequirePackage{euscript}%
\RequirePackage{epsfig} %
\RequirePackage{fancyhdr} %
\RequirePackage{color,xcolor}%
\definecolor{Blue}{rgb}{0,0,1}
\definecolor{Red}{rgb}{1,0,0}
\RequirePackage{ifxetex}%
\RequirePackage[nomarginpar,width=150mm,height=220mm,top=40mm,
headsep=5mm,footskip=11.29mm, headheight=24mm]{geometry}
\RequirePackage{eso-pic}%
\RequirePackage{epstopdf}
\RequirePackage{float}
%\RequirePackage{TikZ}
\evensidemargin=0.5\evensidemargin \addtolength{\evensidemargin}{0.5\oddsidemargin}
\oddsidemargin=\evensidemargin
\ifxetex
\usepackage[xetex, bookmarksnumbered, plainpages, colorlinks,linkcolor=blue,citecolor=magenta,anchorcolor=red
,pdfpagetransition={Wipe}]{hyperref}
\hypersetup{pdftitle={AIMC52}}

\else
\usepackage[bookmarksnumbered, plainpages, colorlinks,linkcolor=blue,citecolor=magenta,anchorcolor=red
,pdfpagetransition={Wipe}]{hyperref}
\hypersetup{pdftitle={AIMC52}}%
\fi

\makeatletter
\def\section{\@startsection{section}{1}%
	\z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
	{\large\bfseries\hspace*{0pt}}}
\makeatother

\newcommand{\KeyWords}[1]{
	\if@english
	\else
	{\small
		
		\par\noindent\textbf{واژه‌های کلیدی:} #1.\par
		
		\ignorespaces
	}
	\fi
}%

\newcommand{\Subject}[1]{
	\if@english
	\else
	\small	
	
	\par\noindent\textbf{طبقه‌بندی موضوعی [2010]:}
	\lr{#1}.%				
	\fi
}%


\fancypagestyle{body}{
	\fancyhead{} \fancyhead[CO]{\shorttitle} \fancyhead[CE]{\shortauthors}
	\cfoot{$\thepage$}
}
\pagestyle{body}
\if@english

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{Theorem}
\newtheorem{lemma}[definition]{Lemma}
\newtheorem{proposition}[definition]{Proposition}
\newtheorem{corollary}[definition]{Corollary}
\theoremstyle{definition}
\newtheorem{example}[definition]{Example}
\newtheorem{remark}[definition]{Remark}
\newtheorem{algorithm}[definition]{Algoritm}
\newtheorem{note}[definition]{Note}
\newtheorem{notation}[definition]{Notation}
\newtheorem*{solution}{Solution}
\newtheorem*{question}{ًQuestion}


\else %%at Persian

\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\newtheorem{remark}[definition]{ملاحظه}
\newtheorem{algorithm}[definition]{الگوریتم}
\newtheorem{note}[definition]{توجه}
\newtheorem{notation}[definition]{نماد}
\newtheorem*{solution}{حل}
\newtheorem*{question}{سؤال}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{alphafootnotes}
{\par\edef\savedfootnotenumber{\number\value{footnote}}
	\renewcommand{\thefootnote}{\fnsymbol{footnote}}
	\setcounter{footnote}{0}}
{\par\setcounter{footnote}{\savedfootnotenumber}}


\graphicspath{{images/}}

\allowdisplaybreaks

\fancyhead{}
\fancyhead[LE,RO]{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\thispagestyle{plain}
%% End of file `aimc52.cls'.
