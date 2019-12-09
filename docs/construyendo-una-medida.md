--- 
title: "Medida"
subtitle: "Ciencia de los Datos Financieros"
author: "Synergy Vision"
date: "2019-12-09"
knit: "bookdown::render_book"
documentclass: krantz
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
colorlinks: yes
lot: yes
lof: yes
fontsize: 12pt
monofontoptions: "Scale=0.8"
keep_md: yes
site: bookdown::bookdown_site
description: ""
url: 'http\://synergy.vision/Medida/'
github-repo: synergyvision/Medida/
cover-image: images/cover.png
---

# Prefacio {-}

Placeholder


## ¿Por qué  leer este libro? {-}
## Estructura del libro {-}
## Información sobre los programas y convenciones {-}
## Prácticas interactivas con R {-}
## Agradecimientos {-}

<!--chapter:end:index.Rmd-->


# Acerca del Autor {-}

Este material es un esfuerzo de equipo en Synergy Vision, (<http://synergy.vision/nosotros/>).		 

El propósito de este material es ofrecer una experiencia de aprendizaje distinta y enfocada en el estudiante. El propósito es que realmente aprenda y practique con mucha intensidad. La idea es cambiar el modelo de clases magistrales y ofrecer una experiencia más centrada en el estudiante y menos centrado en el profesor. Para los temas más técnicos y avanzados es necesario trabajar de la mano con el estudiante y asistirlo en el proceso de aprendizaje con prácticas guiadas, material en línea e interactivo, videos, evaluación contínua de brechas y entendimiento, entre otros, para procurar el dominio de la materia.
  		  
Nuestro foco es la Ciencia de los Datos Financieros y para ello se desarrollará material sobre: **Probabilidad y Estadística Matemática en R**, **Programación Científica en R**, **Mercados**, **Inversiones y Trading**, **Datos y Modelos Financieros en R**, **Renta Fija**, **Inmunización de Carteras de Renta Fija**, **Teoría de Riesgo en R**, **Finanzas Cuantitativas**, **Ingeniería Financiera**, **Procesos Estocásticos en R**, **Series de Tiempo en R**, **Ciencia de los Datos**, **Ciencia de los Datos Financieros**, **Simulación en R**, **Desarrollo de Aplicaciones Interactivas en R**, **Minería de Datos**, **Aprendizaje Estadístico**, **Estadística Multivariante**, **Riesgo de Crédito**, **Riesgo de Liquidez**, **Riesgo de Mercado**, **Riesgo Operacional**, **Riesgo de Cambio**, **Análisis Técnico**, **Inversión Visual**, **Finanzas**, **Finanzas Corporativas**, **Valoración**, **Teoría de Portafolio**, entre otros.

Nuestra cuenta de Twitter es (https://twitter.com/bysynergyvision) y nuestros repositorios están en GitHub (https://github.com/synergyvision).
  		  
 **Somos Científicos de Datos Financieros**

<!--chapter:end:000-author.Rmd-->

\mainmatter

# Introducción 




<!--chapter:end:010-introduction.Rmd-->

# CONSTRUYENDO UNA MEDIDA

En este capÍtulo abordaremos algunas nociones básicas necesarias para abordar los temas propios de la materia.
En una primera parte haremos un somero repaso de sucesiones de números reales y sucesiones de conjuntos. Estudiaremos los conceptos de límites superior e inferior de una sucesión (de conjuntos o de números reales) y sus propiedades. Mostraremos algunos resultados útiles sobre este tema. En la segunda parte definiremos algunas familias de conjuntos importantes para construír medidas, en especial la medida de Lebesgue. 

## Preliminares

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>Sea $(x_{n})_{n\geq 1}$ una sucesiÓn de nÚmeros reales. El *límite superior* de $(x_{n})_{n\geq 1}$ es $$\limsup_{n\to\infty} x_{n}=\inf_{n\geq 1}\sup_{k\geq n} x_{k}$$ y el *límite inferior* de $(x_{n})_{n\geq 1}$ es $$\liminf_{n\to\infty} x_{n}=\sup_{n\geq 1}\inf_{k\geq n} x_{k}.$$</div>\EndKnitrBlock{definition}

También se pueden denotar $\overline{\lim_{n} x_{n}}$ al límite superior y $\underline{\lim_{n} x_{n}}$ al límite  inferior.

Note que $\sup_{k\geq n} x_{k}$ y $\inf_{k\geq n}$ son sucesiones monótonas, luego toda sucesión de números reales tiene límite superior e inferior aunque pueden no ser finitos, es decir, valer $\pm\infty$.

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Recuerde que:
(a) Sea $l\neq\mp\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si:
i. para todo $\epsilon>0$, existe $N\in\mathbb{N}$ tal que si $n>N$ entonces $x_{n}<l+\epsilon$.
ii. para todo $\epsilon>0$ y para todo $m\in\mathbb{N}$, existe $n>m$ tal que $x_{n}>l+\epsilon$.
(b) Sea $l=+\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si para todo $\lambda\in\mathbb{R}^{+}$ y para todo $N\in\mathbb{N}$, existe $n\in\mathbb{N}$ tal que $x_{n}>\lambda$.
(c) Sea $l=-\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si $\lim_{n\to\infty}x_{n}=-\infty$.
De forma análoga, para límite inferior.
Además, recordemos que:
(a) $\liminf_{n\to\infty} x_{n}\leq \limsup_{n\to\infty} x_{n}$.
(b) La sucesión $(x_{n})_{n}$ converge a $l\neq\mp\infty$ si y solo si $\liminf_{n\to\infty} x_{n}= \limsup_{n\to\infty} x_{n}=\lim_{n\to\infty} x_{n}$.
(c) La sucesión converge a $\mp\infty$ si y solo si $\liminf_{n\to\infty} x_{n}= \limsup_{n\to\infty} x_{n}=\mp\infty$.</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-3"><strong>(\#exm:unnamed-chunk-3) </strong></span>La sucesión $x_{n}=(-1)^{n}$, no tiene límite. Note que $a_{n}=\sup_{k\geq n} x_{k}=1$, por lo tanto $\limsup_{n\to\infty} x_{n}=\inf_{n\geq 1} a_{n}=1$; y $b_{n}=\inf_{k\geq n} x_{k}=-1$, por lo tanto $\liminf_{n\to\infty} x_{n}=\inf_{n\geq 1} b_{n}=-1$.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-4"><strong>(\#exm:unnamed-chunk-4) </strong></span>Definamos $x_{n}=n$ si $n$ es par y $x_{n}=0$ si $n$ es impar. Luego $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n}x_{k}=0$. Por lo tanto, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$. De donde concluímos que el límite de $(x_{n})_{n}$ no existe.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-5"><strong>(\#exm:unnamed-chunk-5) </strong></span>Sea $(x_{n})_{n}$ definida por $x_{n}=\tan^{2}(n(\pi/4))$. Sean $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n} x_{k}=0$. Entonces, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-6"><strong>(\#exm:unnamed-chunk-6) </strong></span>Sea $x_{n}=\sec(n(\pi/2))$. Sean $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n} x_{k}=-\infty$, de donde $\overline{\lim_{n} x_{n}}=\infty$ y $\underline{\lim_{n} x_{n}}=-\infty$.</div>\EndKnitrBlock{example}

También podemos definir suseciones de conjuntos y considerar sus límites, como veremos a continación.
Recordemaos que dado un conjunto cualquiera $\omega$, el *conjunto de partes* de $\Omega$, es el conjunto formado por todos los subconjuntos de $\Omega$ y se denota por $\wp(\Omega)$. Esto es $\wp(\Omega)=\{A| A\subseteq \Omega\}$. Diremos que un  subconjunto $\mathcal{C}$ de $\wp(\omega)$, es una *familia de subconjuntos* de $\Omega$, es decir, $\mathcal{C}\subseteq\wp(\Omega)$. En esta parte, supondremos que $\mathcal{C}\neq\emptyset$, salvo se indique lo contrario. Denotaremos por $\bigcap\mathcal{C}$ al conjunto de la intersección de todos los elementos de $\mathcal{C}$, es decir, $\bigcap\mathcal{C}=\bigcap_{A\in\mathcal{C}} A$. Análogamente, $\bigcup\mathcal{C}$ al conjunto de la unión de todos los elementos de $\mathcal{C}$, es decir, $\bigcap\mathcal{C}=\bigcap_{A\in\mathcal{C}} A$. Usaremos la notación $(A_{n})_{n\in\mathbb{N}}$ (o $(A_{n})_{n=1}^{\infty}$ o $(A_{n})_{n\geq 1}$ o simplemente $(A_{n})$) para denotar la *sucesión de conjuntos* $A_{1}, A_{2},\cdots$ También se podrá usar la notación $(A_{n})_{n\geq 1}\subseteq\wp(\Omega)$ para expresar que la sucesión está formada por subconjuntos de $\Omega$.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejemplo17"><strong>(\#exm:ejemplo17) </strong></span>Consideremos los intervalos $A_{n}=[-n,n]$ para cada $n\in\mathbb{N}$. Estos definen la sucesión $\{[-1,1], [-2,2],\cdots, [-n,n],\cdots\}$.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejemplo18"><strong>(\#exm:ejemplo18) </strong></span>Definimos los siguientes subconjuntos de números reales: $A_{n}=( -1,1/n) $ para todo $n\in\mathbb{N}$. Esta es la sucesión $\{(-1,1), ( -1,1/2) ,\cdots, ( -1,1/n) ,\cdots\}$.</div>\EndKnitrBlock{example}
\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejemplo19"><strong>(\#exm:ejemplo19) </strong></span>Sea $A_{n}=\{r\in\mathbb{Z}:r \mbox{ es múltiplo de } n\}$ para cada $n\geq 1$. Estos subconjuntos forman la sucesión de conjuntos 
$$\begin{array}{rl}
A_{1}&=\{\cdots, -2,-1,0,1,2,\cdots\}\\
A_{2}&=\{\cdots,-4,-2,0,2,4,\cdots\}\\
\vdots&\\
A_{n}&=\{\cdots,-3n,-2n,-n,0,n,2n,3n,\cdots\}\\
\vdots&
\end{array}$$</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-7"><strong>(\#def:unnamed-chunk-7) </strong></span>Una sucesión $(A_{n})_{n\geq 1}$ es una sucesión *monótona creciente (*monótona decreciente*) si para todo $n\geq 1$, se tiene que $A_{n}\subseteq A_{n+1}$ ($A_{n}\supseteq A_{n+1}$) y se denota $A_{n}\downarrow$. Diremos que una sucesión es *monótona* si es monótona creciente o monótona decreciente.</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Sea $(A_{n})$ una sucesión monótona.
(i.) Si $A_{n}\uparrow$, entonces $A=\bigcup_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\uparrow A$, esto último también se lee $A_{n}$ crece a $A$.
(ii.) Si $A_{n}\downarrow$, entonces $A=\bigcap_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\downarrow A$, esto último tambin se lee $A_{n}$ decrece a $A$.
Para una sucesión cualquiera $(A_{n})$, las sucesiones $B_{n}=\bigcap_{k\geq n} A_{k}$ y $C_{n}=\bigcup_{k\geq n} A_{k}$, son sucesiones monótonas, creciente y decreciente respectivamente. Por lo que los límites de estas sucesiones existen. Y son $\lim_{n} B_{n}=\bigcup_{n\geq 1} B_{n}$ ya que $B_{n}\uparrow$ y $\lim_{n} C_{n}=\bigcap_{n\geq 1} C_{n}$ ya que $B_{n}\downarrow$.</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-9"><strong>(\#def:unnamed-chunk-9) </strong></span>Sea $(A_{n})_{n\geq 1}$ una sucesión. Decimos que el *límite inferior* de $(A_{n})_{n}$ es el límite de la sucesión $B_{n}=\bigcap_{k\geq n} A_{k}$, es decir $\liminf_{n\geq 1} A_{n}:=\lim_{n\geq 1} B_{n}=\bigcup_{n\geq 1} B_{n}=\bigcup_{n\geq 1} \bigcap_{k\geq n} A_{n}$. De forma análoga, decimos que el *límite superior* de $(A_{n})_{n}$ es el límite de la sucesión $C_{n}=\bigcup_{k\geq n} A_{k}$, es decir $\limsup_{n\geq 1} A_{n}:=\lim_{n\geq 1} C_{n}=\bigcap_{n\geq 1} C_{n}=\bigcap_{n\geq 1} \bigcup_{k\geq n} A_{n}$. Si $\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$. Decimos que $(A_{n})$ *tiene límite* y escribimos $\lim_{n\geq 1}A_{n}=\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$.</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-10"><strong>(\#exm:unnamed-chunk-10) </strong></span>La sucesión del ejemplo \@ref(exm:ejemplo17) es una sucesión creciente y su límite es $\lim A_{n}=\mathbb{R}$. 
La sucesión del ejemplo \@ref(exm:ejemplo18) es una sucesión decreciente y su límite es $\lim_{n\geq 1} A_{n}=(-1,0]$. </div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-11"><strong>(\#exm:unnamed-chunk-11) </strong></span>La sucesión del ejemplo \@ref(exm:ejemplo19) no es creciente ni decreciente. Entonces $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\{0\}$ y $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\{0\}$. Luego la sucesión tiene límite y es $\lim_{n\geq 1} A_{n}=\{0\}$.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-12"><strong>(\#exm:unnamed-chunk-12) </strong></span>Sea $A_{n}=[0-(1/n),n] $, para cada $n\geq 1$. Sea $B_{n}=\bigcap_{k\geq n} [0-1/k,k]=(0,n]$ y $C_{n}=\bigcup_{k\geq n} [0-1/n,n]=[-1/k,\infty)$. Con lo que se tiene que $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1} B_{n}=(0,\infty)$ y  $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1} C_{n}=(0,\infty)$.</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-13"><strong>(\#exm:unnamed-chunk-13) </strong></span>Sea $A_{n}=(r+ 1/n, s+ 1/r)$ para cada $n\geq 1$ y $r$ y $s$ números reales cualesquiera. Entonces $$\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\bigcup_{n\geq 1} (r+ 1/n, s]=(r,s]$$ y $$\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\bigcap_{n\geq 1} (r, s+ 1/n)=(r,s].$$</div>\EndKnitrBlock{example}

##Colecciones de Conjuntos

##Medida

<!--chapter:end:020-preliminares.Rmd-->


# Vectores

Placeholder


## Representación geométrica
## Operaciones entre vectores
### Producto escalar y producto vectorial
## Rectas y Planos
### Rectas en el espacio
### Rectas en el plano
### Planos

<!--chapter:end:030-vectores.Rmd-->


# Espacios vectoriales

Placeholder


## Ecuaciones lineales
## Matrices
## Ecuaciones lineales y matrices
## Teoría de espacios vectoriales
### Espacio cociente
## Ejercicios

<!--chapter:end:040-espacios-vectoriales.Rmd-->


# Polinomios

Placeholder



<!--chapter:end:041-polinomios.Rmd-->

# Matrices


<!--chapter:end:050-matrices.Rmd-->




<!--chapter:end:051-determinantes.Rmd-->


# Autovalores y autovectores

Placeholder



<!--chapter:end:060-autovalores-autovectores.Rmd-->

# Cálculo en vectores y matrices

<!--chapter:end:070-calculo-vectores-matrices.Rmd-->


# Transformaciones lineales

Placeholder


## Bases ordenadas
## Matriz de una transformación
## Transformaciones invertibles
## Funcionales lineales
## El doble dual
## Ejercicios

<!--chapter:end:080-transformaciones-lineales.Rmd-->


# Producto escalar

Placeholder



<!--chapter:end:090-producto-escalar.Rmd-->


# (APPENDIX) Apéndice {-}
# Software Tools

Placeholder


## R and R packages
## Pandoc
## LaTeX

<!--chapter:end:400-apendice.Rmd-->

# Referencias {-}




<!--chapter:end:500-references.Rmd-->

