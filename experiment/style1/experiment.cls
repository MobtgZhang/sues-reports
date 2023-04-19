%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{experiment}[2022/11/11 v3.0 update  https://github.com/mobtgzhang/sues-reports]
%使用xelex进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{experiment}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

% 初始化latex代码
\newif\if@suesppt@bwprint\@suesppt@bwprintfalse
\newif\if@suesppt@preface\@suesppt@prefacetrue

\DeclareOption{colorprint}{\@suesppt@bwprintfalse}
\DeclareOption{bwprint}{\@suesppt@bwprinttrue}
\DeclareOption{withoutpreface}{\@suesppt@prefacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
 
\ExecuteOptions{colorprint}
\ProcessOptions\relax

\LoadClass[UTF8,a4paper,cs4size,zihao=-4,linespread=1.625,space=auto,oneside]{article}
%% 语言与编码格式
\RequirePackage{ctex}
\RequirePackage{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{subfig}
\RequirePackage{fancyhdr}
\RequirePackage{booktabs}
\RequirePackage{listings}

%% 设置页面页边距
\RequirePackage[a4paper,top=3cm,bottom=2cm,left=2cm,right=2cm,marginparwidth=1.75cm]{geometry}

%% 常用的包
\RequirePackage{amsmath}
\RequirePackage{graphicx}
%\RequirePackage{float}  %设置图片浮动位置的宏包
%\RequirePackage{subfigure}  %插入多图时用子图显示的宏包
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}
\RequirePackage{caption}
%\RequirePackage{subcaption}
%\RequirePackage{subfigure}
\RequirePackage{sectsty}
\RequirePackage{apacite}
\RequirePackage{float}
\RequirePackage{titling} 
\RequirePackage{blindtext}
\RequirePackage[square,sort,comma,numbers]{natbib}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{enumerate}
\RequirePackage{fontspec}



\lstset{
	framerule=4pt,
	frameround=tfft,
	%	frame=trbl,
	frame=t,
	emphstyle={\small\ttfamily\bfseries\color{orange}},
	numbers=left,
	numberstyle= \small\it\color{black},
	basicstyle = \small\ttfamily,,
	keywordstyle    = \bfseries\color{red!40!black},
	identifierstyle = \bfseries\color{black},
	stringstyle     = \bfseries\color{green!40!black},
	commentstyle    = \ttfamily\color{yellow!30!black},
	breaklines      =   true,
	columns			=	fullflexible,
	basewidth       =   .6em,
	backgroundcolor=\color{gray!10},
	tabsize=2,
	showspaces=false,
	showstringspaces=false,
	%	frame=shadowbox, %设置阴影
	rulesepcolor=\color{gray}, %框架阴影颜色设置
}

