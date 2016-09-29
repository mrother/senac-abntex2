%% vim: et ts=2 sts=2 sw=2
%%
%% Customizações do abnTeX2 (https://github.com/abntex/abntex2) para o Centro Universitário Senac
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{senac-abntex2}[2016/09/01 v0.1 Modelo do Centro Universitário Senac baseado em abnTeX2]
\usepackage[utf8]{inputenc} % Codificacao do documento atual, isto é, dessa classe
\usepackage{lastpage} % Para total de páginas

% para mais detalhes sobre as opções:
% http://en.wikibooks.org/wiki/LaTeX/Creating_Packages

% Repassa todos os parametros a classe abntex2,
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\ProcessOptions\relax
\LoadClass{abntex2}

% Comandos de dados - instituicao
\newcommand{\instituicaoLocal}[1]

% Comandos de dados - instituicao
\providecommand{\imprimirinstituicaolocal}{}
\newcommand{\instituicaolocal}[1]{\renewcommand{\imprimirinstituicaolocal}{#1}}

% Capa
% ====

\renewcommand{\imprimircapa}{
  \begin{capa}%
    \center
    
    \ABNTEXchapterfont\large{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao}}
    
    \ABNTEXchapterfont\large{\abntex@ifnotempty{\imprimirinstituicaolocal}{\imprimirinstituicaolocal}}

    \vspace*{2cm}
    
    \hspace{.45\textwidth}
    \begin{minipage}{.5\textwidth}
      \SingleSpacing
        \ABNTEXchapterfont\large\imprimirautor
    \end{minipage}
    
    \vfill

    \ABNTEXchapterfont\large\imprimirtitulo
    \vfill
    \vspace*{2cm}
    \vspace*{2cm}
    
    \large\imprimirlocal

    \large\imprimirdata
    
    \vspace*{1cm}
  \end{capa}
}


\renewcommand{\folhaderostocontent}{
  \begin{center}

    %\vspace*{1cm}
    {\ABNTEXchapterfont\large\imprimirautor}
	
    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
      \ABNTEXchapterfont\Large\imprimirtitulo
    \end{center}
    \vspace*{\fill}
	
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
      	\SingleSpacing
         \imprimirpreambulo
       \end{minipage}%
       \vspace*{\fill}
    }%

    \vspace*{\fill}

    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}
    \vspace*{1cm}

  \end{center}
}

\makeatother
