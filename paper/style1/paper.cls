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
% 设置页边距
\RequirePackage[top=30mm,bottom=30mm,left=20mm,right=20mm]{geometry}
% 设置中文
\RequirePackage{ctex}
\RequirePackage{xeCJK}
\RequirePackage{comment}
% 设置首行缩进格式
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
% 设置图片
\RequirePackage{graphicx}
% 这里可以设置插入图片的路径
\graphicspath{{fig/}}
\RequirePackage{wrapfig}
\RequirePackage{subfigure}
\RequirePackage{array}  
% 设置标题目录
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage[titletoc]{appendix}
% 设置文档引用论文格式
\RequirePackage{cite}
%\RequirePackage[backend = biber, style = gb7714-2015, defernumbers=true]{biblatex}
%\renewcommand*{\bibfont}{\small}

%---------------------------------------------------------------------
%	参考文献设置
%---------------------------------------------------------------------
%\renewcommand{\bibname}{\zihao{2}{\hspace{\fill}参\hspace{0.5em}考\hspace{0.5em}文%\hspace{0.5em}献\hspace{\fill}}}


%---------------------------------------------------------------------
%	引用文献设置为上标
%---------------------------------------------------------------------
\makeatletter
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
\makeatother

% 设置字体文件
\RequirePackage{courier}
\setmonofont{Courier New}
% 设置代码格式
\RequirePackage{listings}
\lstset{tabsize=4, keepspaces=true,
    xleftmargin=2em,xrightmargin=0em, aboveskip=1em,
    %backgroundcolor=\color{gray!20},  % 定义背景颜色
    frame=none,                       % 表示不要边框
    extendedchars=false,              % 解决代码跨页时，章节标题，页眉等汉字不显示的问题
    numberstyle=\ttfamily,
    basicstyle=\ttfamily,
    keywordstyle=\color{blue}\bfseries,
    breakindent=10pt,
    identifierstyle=,                 % nothing happens
    commentstyle=\color{green}\small,  % 注释的设置
    morecomment=[l][\color{green}]{\#},
    numbers=left,stepnumber=1,numberstyle=\scriptsize,
    showstringspaces=false,
    showspaces=false,
    flexiblecolumns=true,
    breaklines=true, breakautoindent=true,breakindent=4em,
    escapeinside={/*@}{@*/},
}
% 设置数学公式格式
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{bm}
% 设置数学环境
\newtheorem{theorem}{定理}
\newtheorem{definition}{定义}
\newtheorem{corollary}{推论}
\newtheorem{example}{例}
% 设置三线表
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage{paralist} % very flexible & customisable lists (eg. enumerate/itemize, etc.)
\RequirePackage{verbatim} % adds environment for commenting out blocks of text & for better verbatim
\RequirePackage{cases} %equation set
% 多行多列表设置包
\RequirePackage{multirow} %use table
\RequirePackage{multicol}
% 设置算法格式 
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
% 设置超链接格式
\RequirePackage{hyperref}
\hypersetup{colorlinks,linkcolor=black,anchorcolor=black,citecolor=black, pdfstartview=FitH,bookmarksnumbered=true,bookmarksopen=true,} 


\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt


%%%%%%%%%%%%%%%%%

% 章节格式设置

%---------------------------------------------------------------------
%	章节标题设置
%---------------------------------------------------------------------
\titleformat{\chapter}{\centering\zihao{-1}\heiti}{实验\chinese{chapter}}{1em}{}
\titlespacing{\chapter}{0pt}{*0}{*6}


\titleformat{\chapter}{\centering\zihao{2}\heiti}{第\chinese{chapter}章}{1em}{}
%---------------------------------------------------------------------
%	摘要标题设置
%---------------------------------------------------------------------
%\renewcommand{\abstractname}{摘要}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

%---------------------------------------------------------------------
%	目录页设置
%---------------------------------------------------------------------
%\renewcommand{\contentsname}{\zihao{-3} 目\quad 录}
\renewcommand{\contentsname}{目录}
\titlecontents{chapter}[0em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}

