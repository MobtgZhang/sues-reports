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
\RequirePackage{cite}
% 设置首行缩进
\RequirePackage{indentfirst}
% 设置目录当中的格式
%-----------------------------------------

% 设置插入的表格
\RequirePackage{tabularx,array}
%% -------------------------------*************----------

%定义上述标签的默认值
\def\experiment@value@teacherName{教师名字}
\def\experiment@value@classNumber{M123456789}
\def\experiment@value@studentName{张~三}
\def\experiment@value@professional{专~业}
\def\experiment@value@experimentReport{实验XXX：计算机基础实验报告}


%定义用户填写上述标签对应值的命令,需要用户在主文档自行调用
\newcommand\teacherName[1]{\def\experiment@value@teacherName{#1}}
\newcommand\classNumber[1]{\def\experiment@value@classNumber{#1}}
\newcommand\studentName[1]{\def\experiment@value@studentName{#1}}
\newcommand\professional[1]{\def\experiment@value@professional{#1}}
\newcommand\experimentReport[1]{\def\experiment@value@experimentReport{#1}}

%% 自定义论文的封面
\newcommand{\makecover}{
	\thispagestyle{empty}
  	\begin{center}
		\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}% horizontal line and its thickness
		% 在figures文件中放入校徽文件
		\includegraphics[width=0.4\linewidth]{logo-sues-mark.jpg}
		\quad\\[0.5cm]
		
		% 学院信息
		\textbf{\huge 电子电气工程学院}\\[1cm]
		
		% 文件信息
		\textsc{\Large 计算机基础实验报告}\\[0.2cm]
		
		\HRule \\[0.8cm]
		
		% 大标题
		{\Huge\bfseries\experiment@value@experimentReport}\\[0.7cm]
		\HRule \\[2cm]

		\hspace*{3em}
		
		
		\begin{table}[hbp]
			\Large
			\centering
			\begin{tabular}{p{4cm}<{\centering}p{6cm}<{\centering}}
				\kaishu{姓\quad\quad 名 } & \experiment@value@studentName\\
				\cmidrule{2-2}
				\kaishu{学\quad\quad 号 } & \experiment@value@classNumber\\
				\cmidrule{2-2}
				\kaishu{专\quad\quad 业 } & \experiment@value@professional\\
				\cmidrule{2-2}      
				\kaishu{指导教师} & \experiment@value@teacherName\\
				\cmidrule{2-2}   
			\end{tabular}
		\end{table}


		\hspace*{5em}

		\songti													
		{\Large \today}\\[2cm]

		\vfill 
  	\end{center}
  	\newpage
}


\setmainfont{Times New Roman}
% 设置页眉页脚
\pagestyle{fancy}
\fancyfoot{}
\fancyhead[C]{\kaishu 实验一：编码器的设计及应用实验}

%% 设置页面页边距
\RequirePackage[a4paper,top=3cm,bottom=2cm,left=2cm,right=2cm,marginparwidth=1.75cm]{geometry}

%% 常用的包
\RequirePackage{amsmath}
\RequirePackage{graphicx}
%\RequirePackage{float}  %设置图片浮动位置的宏包
%\RequirePackage{subfigure}  %插入多图时用子图显示的宏包
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}
% 设置引用格式
\RequirePackage{url}
\hypersetup{
    hidelinks,
    citecolor=black
}
\renewcommand\refname{参考文献}
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

