%
%   This is file `phdproposal.cls',
%	@author andy123t
% 	@date 2020/12/16
%   This template for PhD proposal
%

% ---------- 定义的新的Class ----------
\ProvidesClass{phdproposal}[2021/11/29 v2.0.0]
\NeedsTeXFormat{LaTeX2e}


% ---------- 载入学校logo ----------
% \def\logopic{univ.eps}   %logo
% \DeclareOption{UnivLogo} {
% 	\def\logopic{univ.eps}
% }
% \ProcessOptions\relax


% ---------- 载入Class ----------
\LoadClass[a4paper,openany,twoside]{book}


% ---------- 中文字体宏包 ----------
\RequirePackage[cs4size,UTF8]{ctex}


% --------- 定义不同编译方式 ----------
\RequirePackage{ifpdf,ifxetex}
\ifxetex
  \RequirePackage{fontspec}
  \RequirePackage{graphicx}
\else
  \ifpdf
  	\usepackage[utf8]{inputenc}
  	\RequirePackage[T1]{fontenc}
    \RequirePackage{graphicx}
    \RequirePackage{epstopdf}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
\fi


% ---------- 定义页边距 ----------
\RequirePackage{geometry}
\geometry{left=1.6cm,right=1.6cm,top=1.7cm,bottom=1.8cm,includehead,includefoot}
\setlength{\headheight}{15pt}
%\addtolength{\headsep}{-0.1cm}     % 页眉位置
%\addtolength{\footskip}{-0.1cm}    % 页脚位置


% ---------- 常用宏包 ----------
\RequirePackage{amsmath,amssymb,amsthm,amsfonts}  % AMS公式
\RequirePackage{bm}         % 数学公式黑斜体
\RequirePackage{mathrsfs}   % 数学英文花体
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{cite}
\RequirePackage{longtable}  % 长表格
\RequirePackage{multirow}   % 表格多行合并
\RequirePackage{enumerate}  % 改变列表标号样式
\RequirePackage{color,xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{tikz}       % 绘制图形
\RequirePackage{titlesec}   % 设置标题样式
\RequirePackage{tabularx}
\RequirePackage{makecell}
\RequirePackage{xstring}    % 使用条件语句
% \RequirePackage{fancyhdr}
\RequirePackage{paracol}	% 分栏
\RequirePackage{calc}
\RequirePackage{afterpage}
\RequirePackage{etoolbox}
\RequirePackage{everypage}
\RequirePackage{xeCJK}
\RequirePackage{pdfpages}
\RequirePackage{xcolor}
\RequirePackage{wrapfig}
% \RequirePackage{natbib}
\RequirePackage{pifont}
\RequirePackage{makecell}
\usepackage{booktabs,array}
\setCJKmainfont{Songti SC} % macOS系统
\setmainfont{Times New Roman}
\setcounter{secnumdepth}{3}
% \setmainfont{STFangsong}[Script=CJK]

% Table Setting
\RequirePackage{float}
\RequirePackage{longtable}
\RequirePackage{tabularray}

% 加边框
% \AddEverypageHook{
%   \begin{tikzpicture}[remember picture, overlay]
%     \draw[thick, black] 
%       ([xshift=-1cm, yshift=-1cm] current page.north east) 
%       rectangle 
%       ([xshift=1cm, yshift=1cm] current page.south west);
%   \end{tikzpicture}
% }
\AddEverypageHook{
  \begin{tikzpicture}[remember picture, overlay]
    \ifnum\value{page}=1
        \node[anchor=north, text width=\textwidth, align=center,
                font=\zihao{-2}\bfseries]
            at ([yshift=-1.2cm] current page.north)
            {Personal Statement};  % Westlake University Doctoral Program Personal Statement, SMART-SZBL Summer Camp
        \draw[thick, black]
            ([xshift=-1cm, yshift=-3.41cm] current page.north east)
            rectangle
            ([xshift=1cm, yshift=1cm] current page.south west);
        \coordinate (RectLeft)  at ([xshift=1cm,  yshift=-3cm] current page.north west);
        \coordinate (RectRight) at ([xshift=-1cm, yshift=-3cm] current page.north east);
        % \path let \p1 = (RectLeft), \p2 = (RectRight) in
        % \pgfmathsetlengthmacro{\RectWidth}{\x2 - \x1};
        \node[anchor=north west, xshift=-0.16cm, yshift=0.92cm] at (RectLeft) {
            \begin{tblr}{
            width=\textwidth,
            colspec={Q[2cm, c, m] Q[4.6cm, c, m] Q[4cm, c, m] Q[6.6cm, c, m]},
            row{1}={font=\bfseries, ht=1cm},
            hlines={0.8pt},
            vlines={0.8pt}
            }
            % \hline
            Name & \@author & Major applied for & \defmajor \\
            % \hline
            \end{tblr}
        };
    \else
      \draw[thick, black]
        ([xshift=-1cm, yshift=-1cm] current page.north east)
        rectangle
        ([xshift=1cm, yshift=1cm] current page.south west);
    \fi
  \end{tikzpicture}
}

% --- 自定义命令 -----
\renewcommand{\qedsymbol}{$\blacksquare$}
\newcommand{\CC}{\ensuremath{\mathbb{C}}}
\newcommand{\RR}{\ensuremath{\mathbb{R}}}
\newcommand{\A}{\mathcal{A}}
\newcommand{\ii}{\bm{\mathrm{i}}\,}  % 虚部
\newcommand{\md}{\mathrm{d}\,}
\newcommand{\bA}{\boldsymbol{A}}
\newcommand{\red}[1]{\textcolor{red}{#1}}

% \theoremstyle{nonitalic}
% \newtheorem{defin}{Definition}
\newtheorem{assum}{Assumption}
% \newtheorem{theorem}{Theorem}
% \newtheorem{proof}{Proof}

\DeclareMathOperator{\doop}{\textit{do}}
\DeclareMathOperator{\pa}{pa}
\DeclareMathOperator{\sign}{\text{sign}}

%\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\renewcommand{\contentsname}{Contents}



% --------设置图片的路径 ---------
\graphicspath{{./figure/}{./figures/}{./image/}{./images/}}


% ---------- 定义章节的编号格式 ----------
% \renewcommand{\chaptername}{\arabic{chapter}}
% \renewcommand{\thechapter}{\chinese{chapter}、}
\renewcommand{\thechapter}{\arabic{chapter}}
% \renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thechapter.\arabic{section}.\arabic{subsection}}
% \renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}


%---------- 定义章节标题格式 ------------
\titleformat{\chapter}[hang]{\normalfont \bfseries \Large \filcenter}
    {\Large \thechapter}{4pt}{}
\titlespacing{\chapter}{0pt}{0ex  plus .1ex minus .2ex}{2.5ex plus .1ex minus .2ex}

\titleformat{\section}[hang]{\bfseries \zihao{-3}}
    {\zihao{-3} \thesection}{8pt}{}
\titlespacing{\section}{0pt}{1.5ex plus .1ex minus .2ex}{1.5ex plus .1ex minus .2ex}

\titleformat{\subsection}[hang]{\bfseries \zihao{4}}
    {\zihao{4} \thesubsection}{6pt}{}
\titlespacing{\subsection}%
    {0pt}{1.5ex plus .1ex minus .2ex}{\wordsep}

\titleformat{\subsubsection}[hang]{\songti}
    {\thesubsubsection }{1em}{}{}
\titlespacing{\subsubsection}%
    {0pt}{1.2ex plus .1ex minus .2ex}{\wordsep}




%---------- 设置章节目录的深度 -------------
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3} 


% ------------- 设置附录 -----------
\RequirePackage{titletoc}
\RequirePackage[title,titletoc]{appendix}
%\renewcommand{\appendixname}{附录}

%-------------- 定义页眉页脚 -------------------

% 定义页眉和页脚 使用fancyhdr 宏包
\newcommand{\makeheadrule}{%
    \makebox[-3pt][l]{\rule[.7\baselineskip]{\headwidth}{0.4pt}}
    \rule[0.85\baselineskip]{\headwidth}{1.2pt}\vskip-.8\baselineskip
    }

\makeatletter
\renewcommand{\headrule}{%
    {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
     \makeheadrule}}

\newcommand{\headertable}{%
	\begin{tblr}{
		width=\textwidth,
		colspec={Q[3cm, c, m] Q[6.6cm, c, m] Q[1cm, c, m] Q[6.6cm, c, m]},
		row{1}={font=\bfseries, ht=0.8cm}, % 压缩行高
		hlines={0.8pt}, % 更细的线条
		vlines={0.4pt},
		stretch=0.8 % 压缩表格整体高度
	}
	A & B & C & D \\
	\end{tblr}
}
% ------------ 画单隔线 ------------
% \renewcommand{\headrulewidth}{0.5pt}    % 在页眉下画一个0.5pt宽的分隔线
% \renewcommand{\footrulewidth}{0.5pt}      % 在页脚不画分隔线。


% ------------ 设置页眉样式 -----------
\newcommand{\headstyle}{
	\fancyhead[RO,LE]{\color{black}\zihao{5} \leftmark}
	\fancyhead[LO,RE]{\color{black} \zihao{5} Personal Statement}
}

\fancypagestyle{specialpage}{%
    \fancyhf{} 

    \headstyle

    \fancyfoot[C]{\thepage} % 例如，在底部中间显示页码
}

% \renewcommand{\headruleL}{%
%     {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
%      \rule{\headwidth}{\headrulewidth}}} % 简化为单一线条
% \newcommand{\customhead}{

% }


% ------- 设置页脚样式 ----------
\newcommand{\footstyle}{
	\fancyfoot[C]{\songti \thepage}
	\fancyfoot[RO]{
        \begin{tikzpicture}[baseline]
			\node[anchor=north] (text) at (0,0) {\small Everything In The World Is A Graph.};
        % 在文字上方绘制横线
        	\draw[thick] ([xshift=-1pt]text.north west) -- ([xshift=1pt]text.north east);
        \end{tikzpicture}
    }

	\fancyfoot[LE]{
        \begin{tikzpicture}[baseline]
			\node[anchor=north] (text) at (0,0) {\small Correlation Does Not Imply Causation.};
        % 在文字上方绘制横线
        	\draw[thick] ([xshift=-1pt]text.north west) -- ([xshift=1pt]text.north east);
        \end{tikzpicture}
    }
}
\pagestyle{empty}
\pagestyle{fancy}
\fancyhf{} %清空原有样式
\headstyle
\footstyle


% ------ 定义一种新的格式叫做main ------------
\fancypagestyle{main}{%
    \pagestyle{fancyplain} 
	\fancyhf{} %清空原有样式
	\headstyle
	\footstyle
}


\renewcommand\chaptermark[1]{%
  \markboth{%
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        % \@chapapp\ \ %  去掉`chapter`字样
      \fi
    \fi
    #1}{}%
}


% ----------- 中文段落缩进和行距 ------------
\setlength{\parindent}{2em}                 % 首行两个汉字的缩进量
\setlength{\parskip}{3pt plus1pt minus1pt}  % 段落之间的竖直距离
% \setlength{\parskip}{0pt}
% \setlength{\parindent}{0pt}
\raggedbottom
\renewcommand{\baselinestretch}{1.35}        % 定义行距
%\topskip=15pt   % 书写区域顶部空白
%\parskip=5pt
%\parindent=0pt
%\baselineskip=5pt
%\setlength{\baselineskip}{24pt}


% ------------------- 浮动对象设置 ---------------------
% 浮动对象的缺省值稍微宽松一点，从而防止幅度对象占据过多的文本页面
% 也可以防止在很大空白的浮动页上放置很小的图形
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}


% ---------------- 设置图表格式 ---------------

% \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
% \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
% \renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\theequation}{\arabic{equation}}
\renewcommand{\thefigure}{\arabic{figure}}


% --------- 定制图形和表格标题的样式 --------------
\RequirePackage{caption}
\captionsetup{font={normalsize,singlespacing},labelformat={default},labelsep=quad}
\captionsetup[figure]{position=bottom,skip={5pt},name={Figure},labelsep=period}
\captionsetup[table]{position=top,skip={2pt},name={Table}, labelsep=period}
\setlength{\textfloatsep}{0pt}
\setlength{\floatsep}{10pt plus 3pt minus 2pt}
\setlength{\intextsep}{10pt}
\setlength{\abovecaptionskip}{2pt plus1pt minus1pt}
\setlength{\belowcaptionskip}{3pt plus1pt minus2pt}
%\setlength{\itemsep}{3pt plus1pt minus2pt}


% ----- 重新设置图表autoref -------
\newcommand{\figureautorefname}{Figure}
\newcommand{\tableautorefname}{Table}


% --- 使用tabularx库并定义新的左右中格式 ----
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedright \arraybackslash}X}
\newcolumntype{P}[1]{>{\centering \arraybackslash}p{#1}}

% ------------ 设置三线表格式 ------
% \setlength{\heavyrulewidth}{1.5pt}
% \setlength{\lightrulewidth}{0.5pt}
% \setlength{\cmidrulewidth}{0.5pt}
% \setlength{\aboverulesep}{0pt}
% \setlength{\belowrulesep}{0pt}
% \setlength{\abovetopsep}{0pt}
% \setlength{\belowbottomsep}{0pt}


% -------- 重新定义图和表的浮动环境 ---------
\newenvironment{generalfig}[3][htbp]{
	\def \figcaption {#2}
	\def \figlabel {#3}
	\begin{figure}[#1]
		\centering
	}{
		\caption{\figcaption} \label{\figlabel}
	\end{figure}
}
\newenvironment{generaltab}[3][htbp]{
	\def \tabcaption {#2}
	\def \tablabel {#3}
	\begin{table}[#1]
		\caption{\tabcaption} \label{\tablabel}
		\zihao{5}
		\centering
	}{
	\end{table}
}


%------------- 数学定理设置 ---------------
\theoremstyle{plain} 
\newtheorem{defin}{\heiti Definition}
\newtheorem{proposition}{\heiti Proposition}
% \newtheorem{assumption}{caption}
\newtheorem{lemma}{\heiti Lemma}
\newtheorem{theorem}{\heiti Theorem}
\newtheorem{example}{\heiti 例}
\newtheorem{corollary}{\heiti Corollary}
\newtheorem{remark}{\heiti 注}
\renewcommand{\proofname}{\heiti Proof}
%\renewcommand{\qedsymbol}{$\blacksquare$}
%\newtheorem{algorithm}{算法}
%\newtheorem{axiom}{公理}
%\newtheorem{property}{性质}
\newtheorem{assumption}{\heiti Assumption}


% -------------- 数学公式设置 ---------------
\allowdisplaybreaks[4]   % \eqnarray 如果很长，影响分栏、换行和分页

% ----- 设置公式间距为零 ------
\AtBeginDocument{
	\setlength{\abovedisplayskip}{4pt}
	\setlength{\belowdisplayskip}{4pt}
	\setlength{\abovedisplayshortskip}{2pt}
	\setlength{\belowdisplayshortskip}{2pt}
	\setlength{\arraycolsep}{2pt}   % array中列之间空白长度
}

% ------- 公式编号带章节 ----------
% \numberwithin{equation}{chapter}

% 重新设置公式autoref
\newcommand{\equationautorefname}{等式}


% ---- 定义列表项的样式 -----

\RequirePackage{enumitem}
%\setlist{noitemsep}
\setitemize{itemsep=3pt}


%------------- 定义新的标题页面 -------------------

% ------ 添加几个新的文档属性 ------
\def \defschool {}
\def \defcollege {}
\def \defmajor {}
\def \defstudy {}
\def \definstructor {}
\def \defsuptitle {}
\def \defauthor {}

\newcommand{\school}[1]{\def \defschool {#1}}
\newcommand{\college}[1]{\def \defcollege {#1}}
\newcommand{\major}[1]{\def \defmajor {#1}}
\newcommand{\study}[1]{\def \defstudy {#1}}
\newcommand{\instructor}[1]{\def \definstructor {#1}}
\newcommand{\suptitle}[1]{\def \defsuptitle {#1}}


\renewcommand{\maketitle}[1][8em]{%
    \begin{titlepage}
		\centering
		\vspace*{\fill}
        \begin{center}
            \vspace*{-4cm}
			% \includegraphics[width=\textwidth]{WestLakeLogo/标准中英文组合.png}
			% \includegraphics[width=\textwidth]{WestLakeLogo/szbl/logo与中英文左右组合.png}\\[1cm]
			\begin{minipage}[c]{0.5\linewidth}
				\includegraphics[width=\linewidth]{WestLakeLogo/标准中英文组合.png}
			\end{minipage}%
			\begin{minipage}[c]{0.5\linewidth}
				\includegraphics[width=\linewidth]{WestLakeLogo/szbl/logo与中英文左右组合.png}
			\end{minipage}\\[1cm]
            {\zihao{2}\bfseries \defsuptitle}\\ %\bfseries
            \vspace{0.5cm}
            {\parbox[t]{\textwidth}{\centering \zihao{1} \heiti \@title}}
            \vspace{1cm}
            {\zihao{3} \heiti
                \renewcommand{\arraystretch}{1.3}
                % \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} l c l c}
                %     \makebox[5em][s]{Name:} & 
                %     \underline{\makebox[#1]{\songti \@author}} &
                %     \makebox[5em][s]{Major:} & 
                %     \underline{\makebox[.3\linewidth]{\songti \defmajor}} \\
                % \end{tabular*}
				\begin{center}
					\vspace{-2cm}
					\begin{tabularx}{.8\textwidth}{@{}lX}
						\makebox[5em][r]{Name:} \underline{\makebox[0.5\linewidth]{\songti \@author}} \\
						\makebox[5em][r]{Major:} \underline{\makebox[0.5\linewidth]{\songti \defmajor}} \\
					\end{tabularx}
			\end{center}
            }
        \end{center}
		\vspace*{\fill}
    \end{titlepage}
}


% ------------ 定义新的声明页面 --------------

% 定义三个条件语句
% \newcomjornd{\encryption}[1]{
% 	\IfStrEqCase{#1}{{empty}{$\square$}
% 		{true}{$\text{\rlap{\checkmark}}\square$ }
% 		{false}{$\square$}}
% 	[$\square$]
% }
% \newcommand{\nonencryption}[1]{
% 	\IfStrEqCase{#1}{{empty}{$\square$}
% 		{true}{$\square$}
% 		{false}{$\text{\rlap{\checkmark}}\square$}}
% 	[$\square$]
% }
% \newcommand{\encryptionyear}[2]{
% 	\IfStrEqCase{#1}{{empty}{}
% 		{true}{#2}
% 		{false}{}}
% }


% ------------------ 中文摘要环境 -------------
\newenvironment{cnabstract}[1]{
	\def \cnkeyword {#1}
	\phantomsection
	\begin{center} \songti
		 \Large 摘~~~~要 \end{center}
	\vspace*{3ex}
}{
	\vspace{2ex}
	
	{\noindent \textbf{关键词}：} \cnkeyword
	% \clearpage
}


% ----------------- 英文摘要环境 ----------------
\newenvironment{enabstract}[1]{
	\def \enkeyword {#1}
	\clearpage
	\phantomsection
	% \addcontentsline{toc}{chapter}{\textbf{Abstract}}
	
	% \chaptermark{Abstract}
	\vspace*{-3ex}
	\begin{center} 
		\Large \bfseries Abstract \end{center} 
	\vspace*{3ex}
}{
	\vspace*{2ex}
	
	{\noindent \bfseries Key Words: } \enkeyword
	\clearpage
}



% ------------- 定义新的目录页面 ----------------

% \renewcommand{\thechapter}{\chinese{chapter}、}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\hypersetup{
	colorlinks = true,
	linkcolor  = black,
	urlcolor=black,
	citecolor = black
} % 去掉目录红框
\renewcommand{\cfttoctitlefont}{\hfill \heiti \Large}
\renewcommand{\contentsname}{\textbf{Contents}}
\renewcommand{\cftchapaftersnumb}{\hspace{1.2ex}}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{2ex}
\setlength{\cftaftertoctitleskip}{5ex}
\renewcommand{\cftsecaftersnumb}{\hspace{-2ex}}
\renewcommand{\cftsubsecaftersnumb}{\hspace{-2.5ex}}
\renewcommand{\cftsecdotsep}{\cftdotsep}  % 设置Section引导点
\renewcommand\cftbeforechapskip{2.5ex}
\renewcommand{\cftbeforesecskip}{1.5ex} % 设置Part字体
\renewcommand{\cftsecfont}{\songti}   % 设置Section字体

% 使用条件语句
\RequirePackage{xstring}

% 定义两个新语句
% 第一个语句更改fancyhdr样式
\newcommand{\plainfooterstyle}[1]{
	\IfStrEqCase{#1}{{nopagenum}{}
		{pagenum}{\footstyle}
		{pagenumtoc}{\footstyle}}
}
% 第二个语句在目录中添加目录标签
\newcommand{\addtoctotoc}[1]{
	\IfStrEqCase{#1}{{nopagenum}{}
		{pagenum}{}
		{pagenumtoc}{\phantomsection
			\addcontentsline{toc}{chapter}{目~录}}}
}


% ----------- 设置新的生成目录命令 -------------
% \newcommand{\personalStatementPage}[1]{%
% 	\fancyhf{}
% 	\clearpage
% 	\pagestyle{plain}
%     \begin{tikzpicture}[remember picture, overlay]
%         % 标题
%         \node[anchor=north, text width=\textwidth, align=center,
%               font=\songti\zihao{-3}\bfseries]
%             at ([yshift=-1.2cm] current page.north)
%             {Westlake University Doctoral Program Personal Statement};
        
%         % 边框
%         \draw[thick, black]
%             ([xshift=-1cm, yshift=-3.41cm] current page.north east)
%             rectangle
%             ([xshift=1cm, yshift=1cm] current page.south west);
        
%         % 表格定位点
%         \coordinate (RectLeft)  at ([xshift=1cm,  yshift=-3cm] current page.north west);
%         \coordinate (RectRight) at ([xshift=-1cm, yshift=-3cm] current page.north east);
        
%         % 表格内容
%         \node[anchor=north west, xshift=-0.15cm, yshift=0.9cm] at (RectLeft) {
%             \begin{tblr}{
%                 width=\textwidth,
%                 colspec={Q[3cm, c, m] Q[6.6cm, c, m] Q[1cm, c, m] Q[6.6cm, c, m]},
%                 row{1}={font=\bfseries,ht=1cm},
%                 hlines={0.8pt},
%                 vlines={0.8pt}
%             }
%             #1
%             \end{tblr}
%         };
%     \end{tikzpicture}

%     \tableofcontents
% }
\fancypagestyle{tocstyle}{%
    \fancyhf{}
    \renewcommand{\headrule}{} % 核心：禁用横线
    \renewcommand{\footrule}{} % 可选：同时清除页脚线
    \fancyfoot[C]{\thepage}    % 保留页码
}

\let \oldtableofcontens \tableofcontents
\newcommand{\maketoc}[1][nopagenum]{
	% 修改hdr原plain格式
	\thispagestyle{empty}
	\fancypagestyle{plain}{%
		\fancyhf{} %清空原有样式
		\headstyle
		\plainfooterstyle{#1}
	}
	% 设置目录hdr和页码选项
	\clearpage
	\pagestyle{plain}
	\addtoctotoc{#1}
	\tableofcontents
	\clearpage
	\pagestyle{main}
}

\fancypagestyle{firstpage}{%  % 新定义首页专用样式
    \fancyhf{} % 清空页眉页脚
    \renewcommand{\headrule}{} % 禁用页眉下划线
    \renewcommand{\footrule}{} % 可选：禁用页脚下划线
    \fancyfoot[C]{\thepage}   % 保留页码
}
\newcommand{\startCustomStyleSection}[1][nopagenum]{ % Renamed for clarity

	\thispagestyle{firstpage}
		
	% 保护原有plain样式（确保章节页不受影响）
	\fancypagestyle{plain}{%
		\fancyhf{} 
		\headstyle    % 保持原有页眉样式
		\footstyle    % 保持原有页脚样式
	}

	\clearpage
	\pagestyle{main}  % 后续页面恢复主样式
}

% \fancypagestyle{tempnotocline}{%
%     \fancyhf{} % 清空所有页眉页脚
%     \renewcommand{\headrule}{} % 核心：删除横线
%     \fancyfoot[C]{\thepage} % 示例：保留页码
% }

% \newcommand{\maketoct}[1][nopagenum]{
%     \clearpage
%     \thispagestyle{tempnotocline} % 仅影响本页
%     \addtoctotoc{#1}
%     \tableofcontents
%     \clearpage
% }


% ----------- 重新定义参考文献页 -----------
%\bibliographystyle{plain}
\ctexset{bibname={REFERENCES}}

% 设置新的附录命令
\let \oldbibliography \bibliography
\renewcommand{\bibliography}[1]{
	% 添加到目录
	
	\clearpage
	\phantomsection
	\addcontentsline{toc}{chapter}{REFERENCES}
	% \begin{multicols}{2}
		% \small
		% \switchcolumn
		\oldbibliography{#1}
	% \end{multicols}

	% \afterpage{
    %     \begin{flushleft}  % 单栏或左对齐布局
    %         \small
    %         % 插入最后一页的参考文献内容
    %         \oldbibliography{#1}
    %     \end{flushleft}
    % }
	% \begin{paracol}{2}  % 启动两栏布局
    %     \small
    %     \setlength{\columnsep}{20pt}  % 可选：设置列间距
    %     \switchcolumn[0]  % 使内容优先填充左栏
    %     \oldbibliography{#1}
    % \end{paracol}
}



% End of file `phdproposal.cls'.

