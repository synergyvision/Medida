--- 
title: "Medida"
subtitle: "Ciencia de los Datos Financieros"
author: "Synergy Vision"
date: "2022-11-13"
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

<a href="https://synergy.vision/LibrosInteractivos/" target="_blank"><img src="images/cover.png" style="display: block; margin: auto;" /></a>


![Creative Commons License](images/by-nc-sa.png)  
La versión en línea de este libro se comparte bajo la licencia [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

## ¿Por qué  leer este libro? {-}

Este libro es el resultado de enfocarnos en proveer la mayor cantidad de material sobre Probabilidad y Estadística Matemática con un desarrollo teórico lo más explícito posible, con el valor agregado de incorporar ejemplos de las finanzas y la programación en `R`. Finalmente tenemos un libro interactivo que ofrece una experiencia de aprendizaje distinta e innovadora.

Es mucha la literatura, pero son pocas las opciones donde se pueda navegar el libro de forma amigable y además contar con ejemplos en `R` y ejercicios interactivos, además del contenido multimedia. Esperamos que ésta sea un contribución sobre nuevas prácticas para publicar el contenido y darle vida, crear una experiencia distinta, una experiencia interactiva y visual. El reto es darle vida al contenido asistidos con las herramientas de Internet.

Finalmente este es un intento de ofrecer otra visión sobre la enseñanza y la generación de material más accesible. Estamos en un mundo multidisciplinado, es por ello que ahora hay que generar contenido que conjugue en un mismo lugar las matemáticas, estadística, finanzas y la computación.

Lo dejamos público ya que las herramientas que usamos para ensamblarlo son abiertas y públicas.

## Estructura del libro {-}

## Información sobre los programas y convenciones {-}

Este libro es posible gracias a una gran cantidad de desarrolladores que contribuyen en la construcción de herramientas para generar documentos enriquecidos e interactivos. En particular al autor de los paquetes Yihui Xie xie2015.

## Agradecimientos {-}

A todo el equipo de Synergy Vision que no deja de soñar. Hay que hacer lo que pocos hacen, insistir, insistir hasta alcanzar. Lo más importante es concretar las ideas. La idea es sólo el inicio y solo vale cuando se concreta.


\BeginKnitrBlock{flushright}<p class="flushright">Synergy Vision, Caracas, Venezuela</p>\EndKnitrBlock{flushright}








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

::: {.definition #unnamed-chunk-3}
Sea $(x_{n})_{n\geq 1}$ una sucesiÓn de nÚmeros reales. El *límite superior* de $(x_{n})_{n\geq 1}$ es $$\limsup_{n\to\infty} x_{n}=\inf_{n\geq 1}\sup_{k\geq n} x_{k}$$ y el *límite inferior* de $(x_{n})_{n\geq 1}$ es $$\liminf_{n\to\infty} x_{n}=\sup_{n\geq 1}\inf_{k\geq n} x_{k}.$$
  
:::

También se pueden denotar $\overline{\lim_{n} x_{n}}$ al límite superior y $\underline{\lim_{n} x_{n}}$ al límite  inferior.

Note que $\sup_{k\geq n} x_{k}$ y $\inf_{k\geq n}$ son sucesiones monótonas, luego toda sucesión de números reales tiene límite superior e inferior aunque pueden no ser finitos, es decir, valer $\pm\infty$.

::: {.remark}
Recuerde que:
(a) Sea $l\neq\mp\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si:
i. para todo $\epsilon>0$, existe $N\in\mathbb{N}$ tal que si $n>N$ entonces $x_{n}<l+\epsilon$.
ii. para todo $\epsilon>0$ y para todo $m\in\mathbb{N}$, existe $n>m$ tal que $x_{n}>l+\epsilon$.
(b) Sea $l=+\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si para todo $\lambda\in\mathbb{R}^{+}$ y para todo $N\in\mathbb{N}$, existe $n\in\mathbb{N}$ tal que $x_{n}>\lambda$.
(c) Sea $l=-\infty$, entonces $l=\limsup_{n\to\infty} x_{n}$ si y solo si $\lim_{n\to\infty}x_{n}=-\infty$.
De forma análoga, para límite inferior.
Además, recordemos que:
(a) $\liminf_{n\to\infty} x_{n}\leq \limsup_{n\to\infty} x_{n}$.
(b) La sucesión $(x_{n})_{n}$ converge a $l\neq\mp\infty$ si y solo si $\liminf_{n\to\infty} x_{n}= \limsup_{n\to\infty} x_{n}=\lim_{n\to\infty} x_{n}$.
(c) La sucesión converge a $\mp\infty$ si y solo si $\liminf_{n\to\infty} x_{n}= \limsup_{n\to\infty} x_{n}=\mp\infty$.

:::

::: {.example #unnamed-chunk-5}
La sucesión $x_{n}=(-1)^{n}$, no tiene límite. Note que $a_{n}=\sup_{k\geq n} x_{k}=1$, por lo tanto $\limsup_{n\to\infty} x_{n}=\inf_{n\geq 1} a_{n}=1$; y $b_{n}=\inf_{k\geq n} x_{k}=-1$, por lo tanto $\liminf_{n\to\infty} x_{n}=\inf_{n\geq 1} b_{n}=-1$.

:::

::: {.example #unnamed-chunk-6}
Definamos $x_{n}=n$ si $n$ es par y $x_{n}=0$ si $n$ es impar. Luego $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n}x_{k}=0$. Por lo tanto, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$. De donde concluímos que el límite de $(x_{n})_{n}$ no existe.

:::

::: {.example #unnamed-chunk-7}
Sea $(x_{n})_{n}$ definida por $x_{n}=\tan^{2}(n(\pi/4))$. Sean $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n} x_{k}=0$. Entonces, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$.

:::

::: {.example #unnamed-chunk-8}
Sea $x_{n}=\sec(n(\pi/2))$. Sean $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n} x_{k}=-\infty$, de donde $\overline{\lim_{n} x_{n}}=\infty$ y $\underline{\lim_{n} x_{n}}=-\infty$.

:::

También podemos definir suseciones de conjuntos y considerar sus límites, como veremos a continación.
Recordemaos que dado un conjunto cualquiera $\omega$, el *conjunto de partes* de $\Omega$, es el conjunto formado por todos los subconjuntos de $\Omega$ y se denota por $\wp(\Omega)$. Esto es $\wp(\Omega)=\{A| A\subseteq \Omega\}$. Diremos que un  subconjunto $\mathcal{C}$ de $\wp(\omega)$, es una *familia de subconjuntos* de $\Omega$, es decir, $\mathcal{C}\subseteq\wp(\Omega)$. En esta parte, supondremos que $\mathcal{C}\neq\emptyset$, salvo se indique lo contrario. Denotaremos por $\bigcap\mathcal{C}$ al conjunto de la intersección de todos los elementos de $\mathcal{C}$, es decir, $\bigcap\mathcal{C}=\bigcap_{A\in\mathcal{C}} A$. Análogamente, $\bigcup\mathcal{C}$ al conjunto de la unión de todos los elementos de $\mathcal{C}$, es decir, $\bigcap\mathcal{C}=\bigcap_{A\in\mathcal{C}} A$. Usaremos la notación $(A_{n})_{n\in\mathbb{N}}$ (o $(A_{n})_{n=1}^{\infty}$ o $(A_{n})_{n\geq 1}$ o simplemente $(A_{n})$) para denotar la *sucesión de conjuntos* $A_{1}, A_{2},\cdots$ También se podrá usar la notación $(A_{n})_{n\geq 1}\subseteq\wp(\Omega)$ para expresar que la sucesión está formada por subconjuntos de $\Omega$.

::: {.example #ejemplo17}
Consideremos los intervalos $A_{n}=[-n,n]$ para cada $n\in\mathbb{N}$. Estos definen la sucesión $\{[-1,1], [-2,2],\cdots, [-n,n],\cdots\}$.

:::

::: {.example #ejemplo18}
Definimos los siguientes subconjuntos de números reales: $A_{n}=( -1,1/n) $ para todo $n\in\mathbb{N}$. Esta es la sucesión $\{(-1,1), ( -1,1/2) ,\cdots, ( -1,1/n) ,\cdots\}$.

:::

::: {.example #ejemplo19}
Sea $A_{n}=\{r\in\mathbb{Z}:r \mbox{ es múltiplo de } n\}$ para cada $n\geq 1$. Estos subconjuntos forman la sucesión de conjuntos 
$$\begin{array}{rl}
A_{1}&=\{\cdots, -2,-1,0,1,2,\cdots\}\\
A_{2}&=\{\cdots,-4,-2,0,2,4,\cdots\}\\
\vdots&\\
A_{n}&=\{\cdots,-3n,-2n,-n,0,n,2n,3n,\cdots\}\\
\vdots&
\end{array}$$
  
:::

::: {.definition #unnamed-chunk-9}
Una sucesión $(A_{n})_{n\geq 1}$ es una sucesión *monótona creciente (*monótona decreciente*) si para todo $n\geq 1$, se tiene que $A_{n}\subseteq A_{n+1}$ ($A_{n}\supseteq A_{n+1}$) y se denota $A_{n}\downarrow$. Diremos que una sucesión es *monótona* si es monótona creciente o monótona decreciente.

:::

::: {.remark}
Sea $(A_{n})$ una sucesión monótona.

(1) Si $A_{n}\uparrow$, entonces $A=\bigcup_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\uparrow A$, esto último también se lee $A_{n}$ crece a $A$.

(2) Si $A_{n}\downarrow$, entonces $A=\bigcap_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\downarrow A$, esto último tambin se lee $A_{n}$ decrece a $A$.
Para una sucesión cualquiera $(A_{n})$, las sucesiones $B_{n}=\bigcap_{k\geq n} A_{k}$ y $C_{n}=\bigcup_{k\geq n} A_{k}$, son sucesiones monótonas, creciente y decreciente respectivamente. Por lo que los límites de estas sucesiones existen. Y son $\lim_{n} B_{n}=\bigcup_{n\geq 1} B_{n}$ ya que $B_{n}\uparrow$ y $\lim_{n} C_{n}=\bigcap_{n\geq 1} C_{n}$ ya que $B_{n}\downarrow$.

:::

::: {.definition #unnamed-chunk-11}
Sea $(A_{n})_{n\geq 1}$ una sucesión. Decimos que el *límite inferior* de $(A_{n})_{n}$ es el límite de la sucesión $B_{n}=\bigcap_{k\geq n} A_{k}$, es decir $\liminf_{n\geq 1} A_{n}:=\lim_{n\geq 1} B_{n}=\bigcup_{n\geq 1} B_{n}=\bigcup_{n\geq 1} \bigcap_{k\geq n} A_{n}$. De forma análoga, decimos que el *límite superior* de $(A_{n})_{n}$ es el límite de la sucesión $C_{n}=\bigcup_{k\geq n} A_{k}$, es decir $\limsup_{n\geq 1} A_{n}:=\lim_{n\geq 1} C_{n}=\bigcap_{n\geq 1} C_{n}=\bigcap_{n\geq 1} \bigcup_{k\geq n} A_{n}$. Si $\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$. Decimos que $(A_{n})$ *tiene límite* y escribimos $\lim_{n\geq 1}A_{n}=\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$.

:::

::: {.example #unnamed-chunk-12}
La sucesión del ejemplo \@ref(exm:ejemplo17) es una sucesión creciente y su límite es $\lim A_{n}=\mathbb{R}$. 
La sucesión del ejemplo \@ref(exm:ejemplo18) es una sucesión decreciente y su límite es $\lim_{n\geq 1} A_{n}=(-1,0]$. 

:::

::: {.example #unnamed-chunk-13}
La sucesión del ejemplo \@ref(exm:ejemplo19) no es creciente ni decreciente. Entonces $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\{0\}$ y $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\{0\}$. Luego la sucesión tiene límite y es $\lim_{n\geq 1} A_{n}=\{0\}$.

:::

::: {.example #unnamed-chunk-14}
Sea $A_{n}=[0-(1/n),n] $, para cada $n\geq 1$. Sea $B_{n}=\bigcap_{k\geq n} [0-1/k,k]=(0,n]$ y $C_{n}=\bigcup_{k\geq n} [0-1/n,n]=[-1/k,\infty)$. Con lo que se tiene que $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1} B_{n}=(0,\infty)$ y  $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1} C_{n}=(0,\infty)$.

:::

::: {.example #unnamed-chunk-15}
Sea $A_{n}=(r+ 1/n, s+ 1/r)$ para cada $n\geq 1$ y $r$ y $s$ números reales cualesquiera. Entonces $$\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\bigcup_{n\geq 1} (r+ 1/n, s]=(r,s]$$ y $$\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\bigcap_{n\geq 1} (r, s+ 1/n)=(r,s].$$
  
:::

::: {.definition #unnamed-chunk-16}
Sea $A$ un subconjunto de $\Omega$. La *función característica* (o *función indicatriz* o *indicadora*) de $A$ es la función $\chi_{A}:\Omega\longrightarrow \{0,1\}$, definida por:
	$$\chi_{A}=\left\lbrace \begin{array}{cc}
	1&\mbox{ si } x\in A\\
	0&\mbox{ si } x\notin A
	\end{array}\right.$$
	  
:::

También se suele denotar con $\mathbb{I}_{A}$.

Veamos algunas propiedades de la función característica:

::: {.proposition #unnamed-chunk-17}
$\chi_{A}$ es sobreyectiva si y solo si $A$ es un subconjunto propio de $\Omega$.
:::
::: {.proof}
$\chi_{A}$ es sobreyectiva si y solo si existen $x, y\in \Omega$ tales que $\chi_{A}(x)=0$ y $\chi_{A}(y)=1$ si y solo si $x\notin A$ y $y\in A$, equivalentemente $A\subseteq \Omega$ y $A\neq \Omega$.

:::

::: {.proposition #unnamed-chunk-19}
Sean $A, B\subseteq \Omega$, entonces:
  
[i.] $\chi_{A\cap B}=\min\{\chi_{A},\chi_{B}\}=\chi_{A}\chi_{B}$,

[ii.] $\chi_{A^{c}}=1-\chi_{A}$,

[iii.] $\chi_{A\cup B}=\max\{\chi_{A},\chi_{B}\}=\chi_{A}+\chi_{B}-\chi_{A}\chi_{B}$,

[iv.]  $\chi_{A-B}=\chi_{A}-\chi_{A}\chi_{B}$,

[v.] $\chi_{A\bigtriangleup B}=\chi_{A}+\chi_{B}-2\chi_{A}\chi_{B}$.

:::
::: {.proof}
Sean $A, B\subseteq \Omega$ conjuntos cualesquiera.
Para demostrar $i.$ basta notar que $x\in A\cap B$ si y solo si $x\in A$ y $x\in B$ y que $x\notin A\cap B$ si y solo si $x\notin A$ o $x\notin B$. De donde se tiene fácilmente las igualdades.
Como $x\in A^{c}$ si y solo si $x\notin A$, es fácil ver que $\chi_{A^{c}}=1-\chi_{A}$.
Si $x\in A\cup B$, entonces $x\in A$ o $x\in B$. En el caso que $x\notin A\cap B$, se tiene que $\max\{\chi_{A},\chi_{B} \}=1$ y $\chi_{A} + \chi_{B} -\chi_{A}\chi_{B}=1$. El caso $x\in A\cap B$, se tiene que $\max\{\chi_{A},\chi_{B} \}=1$ y $\chi_{A} + \chi_{B} -\chi_{A}\chi_{B}=2-1=1$. Además, si $x\notin A\cup B$ entonces $\chi_{A}=0$ y $\chi_{B}$, de donde se sigue el resultado.
Escribiendo $A\backslash B=A\cap B^{c}$ y $A\bigtriangleup B=(A\cup B)\backslash(A\cup B)$ se siguen los resultados $iv$ y $v$.

:::

::: {.remark}
Si consideramos las operaciones de suma y multiplicación en $\mathbb{Z}_{2}$ (en el anillo formado por la congruencia  módulo $2$ en $\mathbb{Z}$) entonces se tiene que $\chi_{A\bigtriangleup B}=\chi_{A}+\chi_{B}$.

:::

## Colecciones de Conjuntos

::: {.definition #unnamed-chunk-22}
Dado un espacio topológico $(X,\tau)$, decimos que $A\subseteq X$ es un conjunto $G_{\delta}$ si $A$ es intersección numerable de abiertos, esto es, $A=\bigcap_{n\in\mathbb{N}} G_{n}$ con $G_{n}\in\tau$. Decimos que $A$ es un conjunto  $F_{\sigma}$ si es unión numerable de conjuntos cerrados, esto es, $A=\bigcup_{n\in\mathbb{N}} F_{n}$ con $F_{n}^{c}\in\tau$.

:::

Se pueden definir de forma análoga conjuntos $F_{\sigma\delta}$, $G_{\delta\sigma}$, $F_{\sigma\delta\sigma}$, etc.
Por ejemplo, $A$ es un conjunto $F_{\sigma\delta}$ si es intersecci\'on numerable de conjuntos $F_{\sigma}$.

::: {.example #unnamed-chunk-23}
El conjunto de los puntos de continuidad de una función cualquiera, es un conjunto $G_{\delta}$.
Y el conjunto de puntos de discontinuidad es una función dada, es un conjunto $F_{\sigma}$.

:::

Para las siguientes definiciones, sea $\Omega$ un conjunto no vacío. Sea $\mathcal{C}$ una familia de subconjuntos de $\Omega$. Entonces:
::: {.definition #unnamed-chunk-24}
$\mathcal{C}$ es un *semianillo* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\forall B,C\in\mathcal{C}$ $\exists (A_{k})_{1}^{n}\subseteq \mathcal{C}$ disjuntos dos a dos tales que $B-C=\bigcup_{k=1}^{n} A_{k}$.

:::

::: {.definition #unnamed-chunk-25}
$\mathcal{C}$ es un *semiálgebra* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\forall B\in\mathcal{C}$ $\exists (A_{k})_{1}^{n}\subseteq \mathcal{C}$ disjuntos dos a dos tales que $B^{c}=\bigcup_{k=1}^{n} A_{k}$.

:::

::: {.definition #unnamed-chunk-26}
$\mathcal{C}$ es un *anillo* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo uniones, es decir, $\forall A,B\in\mathcal{C}$, $A\cup B\in\mathcal{C}$.

(iv.) $\mathcal{C}$ es cerrado bajo diferencia de conjuntos, es decir, $\forall A,B\in\mathcal{C}$, $A-B\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-27}
$\mathcal{C}$ es un *$\sigma$-anillo* si

(i.)  $\mathcal{C}$ es un anillo.

(ii.) $\mathcal{C}$ es cerrado bajo uniones numerables, es decir, $\forall (A_{k})_{k=1}^{n}\subseteq\mathcal{C}$, $\bigcup_{k=1\geq n}A_{k}\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo intersecciones numerables, es decir, $\forall (A_{k})_{k=1}^{n}\subseteq\mathcal{C}$, $\bigcap_{k=1\geq n}A_{k}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-28}
$\mathcal{C}$ es un *álgebra* si

(i.)  $\mathcal{C}$ es un anillo.

(ii.) $\mathcal{C}$ es cerrado bajo complementación, $\forall A\in\mathcal{C}$, $A^{c}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-29}
$\mathcal{C}$ es una *$\sigma$-álgebra* si

(i.)  $\mathcal{C}$ es un álgera.
(ii.) $\mathcal{C}$ es cerrado bajo uniones numerebles y bajo interseccines numerables.

:::

::: {.definition #unnamed-chunk-30}
$\mathcal{C}$ es una *clase monótona* si es cerrado bajo límites monótonos, es decir

(i.) toda sucesión creciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcup_{n\geq 1}A_{n}\in\mathcal{C}$ y

(ii.) toda sucesión decreciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcap_{n\geq 1}A_{n}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-31}
	$\mathcal{C}$ es un *sistema $\pi$* si es cerrado bajo intersecciones.

:::

::: {.definition #unnamed-chunk-32}
$\mathcal{C}$ es un *sistema $\lambda$* (*clase-$\sigma$ aditiva* o *sistema de Dynkin*) si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.)  para todo $A,B\in\mathcal{C}$, si $A\subseteq B$, entonces $B\backslash A\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo límites crecientes, es decir, para toda sucesión creciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcup_{n\geq 1}A_{n}\in\mathcal{C}$.

:::

::: {.example #unnamed-chunk-33}
Sea $\Omega\neq \emptyset$, $\mathcal{C}=\{A\subseteq\Omega: A \mbox{ es finito o }A^{c} \mbox{ es finito} \}$ es un álgebra. Si $\Omega$ es finito, $\mathcal{C}$ es una $\sigma$-álgebra.

:::

::: {.example #unnamed-chunk-34}
Sea $\Omega\neq \emptyset$. Sea $\mathcal{C}=\{A\subseteq :A \mbox{ es numerable o } A^{c} \mbox{ numerable } \}$ es una $\sigma$-álgebra.

:::

::: {.example #unnamed-chunk-35}
Sea $\mathcal{I}=\{(a,b]\subseteq\mathbb{R}: a\geq b \}$. Sea $\mathcal{C}=\left\lbrace \bigcup_{i\geq n} I_{i}:I_{i}\in \mathcal{I} \mbox{ y } n\in\mathbb{N} \right\rbrace$ es un anillo pero no es un álgebra.
Ahora, dado $\tilde{\mathcal{I}}=\{(a,\infty):a\in\mathbb{R}\}$; la colección $\tilde{\mathcal{C}}=\left\lbrace \bigcup_{i\geq n} I_{i}:I_{i}\in \mathcal{I}\cup\tilde{\mathcal{I}} \mbox{ y } n\in\mathbb{N}\right\rbrace $ es un álgebra pero no es una $\sigma$-álgebra.

:::

::: {.remark}
Dada una colección arbitraria de conjunto $\mathcal{F}$, la intersección de los conjuntos de $\mathcal{F}$, se denota $\bigcap\mathcal{F}$.

:::

::: {.proposition #unnamed-chunk-37}
La intersección arbitraria de anillos, es un anillo.

:::
::: {.proof}
Sea $I$ un conjunto arbitrario de índices, sea $\mathcal{F}=\{\mathcal{C}_{\alpha}: \alpha\in I\}$ una familia de anillos. Como $\emptyset\in\mathcal{C}_{\alpha}$ para todo $\alpha\in I$, entonces $\emptyset\in\bigcap_{\alpha\in I} \mathcal{C}_{\alpha}$. Sean $A, B\in \bigcup\mathcal{F}$, entonces $A, B\in\mathcal{C}_{\alpha}$ para todo $\alpha\in I$. Como cada $\mathcal{C}_{\alpha}$ es un anillo se sigue el resultado.

:::

::: {.remark}
La proposición anterior es cierta para intersecció arbitraria de álgebras, de $\sigma$-anillos, $\sigma$-álgebras, clases monótonas y sistemas $\pi$.

:::

::: {.definition #unnamed-chunk-40}
Dada una familia $\mathcal{D}$ de subconjuntos de $\Omega$. La colección $\mathcal{R}(\mathcal{D})=\bigcap\{R\subseteq\wp(\Omega): R\mbox{ es un anillo y }\mathcal{D}\subseteq R\}$ es un anillo y diremos que es el \textit{anillo generado por $\mathcal{D}$}. 

:::

De forma análoga se define el $\sigma$-anillo generado, el álgebra generada, el $\sigma$-anillo generado y la clase monótona generada por una familia cualquiera $\mathcal{D}\subseteq\wp(\Omega)$.

::: {.example #unnamed-chunk-41}
Sea $(\Omega,\tau)$ un espacio topológico. $\sigma(\tau)$ es la sigma álgebra generada por la colección de conjuntos abiertos $\tau$, llamada *$\sigma$-álgebra de Borel*. Suele denotarse por $\mathcal{B}(\Omega)$. A los conjuntos que la conforman, se les llama *conjuntos Borelianos* del espacio $\Omega$.

:::

::: {.remark}
Note que los conjuntos $F_{\sigma}$, $G_{\delta}$, $F_{\sigma\delta}$, etc. son conjuntos Borelianos.
Podemos considerar el espacio topológico $\overline{\mathbb{R}}=\mathbb{R}\cup\{-\infty,\infty\}$ y en este espacio definir la $\sigma$-álgebra de Borel.

:::

::: {.proposition #unnamed-chunk-43}
Sea $(\Omega, \tau)$ un espacio toplológico. Sea $\mathcal{C}$ la colección de cerrados de $\Omega$. Entonces $\sigma(\mathcal{C})=\mathcal{B}(\Omega)$.

:::
::: {.proof}
Veamos que $\tau\subseteq\sigma(\mathcal{C})$. Cada conjunto abierto $A=(A^{c})^{c}\in\sigma(\mathcal{C})$, ya que $A^{c}$ es un cerrado. Por lo tanto $\mathcal{B}(\Omega)\subseteq \sigma(\mathcal{C})$. Análogamente, se demuestra que $\sigma(\mathcal{C})\subseteq\mathcal{B}(\Omega)$.

:::

Recuerdemos que un espacio topológico es segundo numerable si tiene una base numerable.


::: {.proposition #unnamed-chunk-45}
Sea $(\Omega, \tau)$ un espacio toplológico segundo numerable. Sea $\mathcal{G}$ una base numerable de $\tau$. Entonces $\sigma(\mathcal{G})=\mathcal{B}(\Omega)$.

:::
::: {.proof}
Claramente $G\subseteq\tau$, por lo tanto $\sigma(\mathcal{G})\subseteq\mathcal{B}(\Omega)$. Sea $A\in\tau$, entonces $A=\bigcup_{i\in\mathbb{N}}G_{i}$, con $G_{i}\in\mathcal{G}$. Luego, $A\in\sigma(\mathcal{G})$, entonces $\tau\subseteq\sigma(\mathcal{G})$. Por lo tanto, $\sigma(\tau)\subseteq\sigma(\mathcal{G})$.

:::

## El conjunto de Cantor

Considermos el intervalo $[0,1]$, lo dividimos en tres subintervalos de longitud $\frac{1}{3}$, a saber, $J_{1,1}=\left[0,\frac{1}{3}\right]$, $I_{1,1}=\left(\frac{1}{3},\frac{2}{3}\right)$ y $J_{1,2}=\left[\frac{2}{3},1\right] $. LLamamos $C_{1}=J_{1,1}\cup J_{1,2}$, que es unión de conjuntos disjuntos. Además $C_{1}=[0,1]\backslash I_{1,1}$.

Luego, los dos intervalos cerrados $J_{1,1}$ y $J_{1,2}$ se dividen nuevamente en tres subintervalos de longitud $\frac{1}{3^{2}}$; estos son, $J_{21}=\left[0,\frac{1}{3^{2}}\right]$, $I_{2,1}=\left(\frac{1}{3^{2}},\frac{2}{3^{2}}\right)$, $J_{2,2}=\left[\frac{2}{3^{2}},\frac{3}{3^{2}}\right]$, al dividir $J_{1,1}$ y $J_{2,3}=\left[\frac{6}{3^{2}},\frac{7}{3^{2}}\right]$, $I_{2,2}=\left(\frac{7}{3^{2}},\frac{8}{3^{2}}\right)$ y $J_{2,4}=\left[\frac{8}{3^{2}},1\right]$, que resultan de dividir $J_{1,2}$. Al igual que en el primer paso, descartamos los dos intervalos abiertos $I_{2,1}$ e $I_{2,2}$. LLamamos $C_{2}=J_{2,1}\cup J_{2,2}\cup J_{2,3}\cup J_{2,4}$. Además $C_{2}=[0,1]\backslash (E_{1}\cup E_{2})$ donde $E_{k}=\bigcup\limits_{i=1}^{2^{k-1}} I_{k,i}$.

Note que $C_{1}\supseteq C_{2}$.

En el siguiente paso, dividimos cada uno de los cuatro intervalos cerrados $J_{2,1}$, $J_{2,2}$, $J_{2,3}$ y $J_{2,4}$ en tres intervalos de longitud $\frac{1}{3^{3}}$.

En el $n$-ésimo paso se tienen $2^{n}$ intervalos cerrados $J_{n,i}$, $i=1,\cdots,2^{n}$ y se han descartado $2^{n-1}$ intervalos abiertos $I_{n,i}$ $i=1,\cdots,2^{n-1}$. Hemos construído el conjunto $C_{n}=\bigcup\limits_{k=1}^{2^{n}} J_{n,k}$, de forma que $C_{1}\supseteq C_{2}\supseteq \cdots \supseteq C_{n}$. Además, $C_{n}=[0,1]\backslash\bigcup\limits_{k=1}^{n} E_{k}$ donde $E_{k}=\bigcup\limits_{i=1}^{2^{k-1}} I_{k,i}$.

Este proceso se repite infinitamente. Con los conjuntos $\{C_{n}\}_{n}$ construímos el conjunto de Cantor $C=\bigcap\limits_{n=1}^{\infty} C_{n}$. Note que $C=[0,1]\backslash \bigcup\limits_{n=1}^{\infty} E_{n}$. Claramente, $C$ es un conjunto cerrado, más aún, es un conjunto perfecto. Recuerde que un conjunto cerrado es perfecto cuando todos sus puntos son de acumulación.

::: {.proposition #unnamed-chunk-47}
	El conjunto de Cantor es cerrado.

:::

::: {.proposition #unnamed-chunk-48}
El conjunto de Cantor es perfecto.

:::

Por lo tanto

::: {.proposition #unnamed-chunk-49}
El conjunto de Cantor tiene interior vacío.

:::

::: {.remark}
Se puede demostrar que el conjunto de Cantor es un conjunto no numerable. Para esto es útil notar que si $x\in C$, entonces $x$ es un número real tal que $0\leq x\leq 1$ y $x=\sum\limits_{n=0}^{\infty} \frac{a_{n}}{3^{n}}$ donde $a_{n}=0$ o $a_{n}=2$ para todo $n\in\mathbb{N}$.

:::

Definimos la función $\Phi_{C}:C\longrightarrow [0,1]$ como: $\Phi_{C}(x)=\sum_{n=1}^{\infty} \frac{\frac{a_{n}}{2}}{2^{n}}$, cuando $x$ tiene la representación $x=\sum\limits_{n=0}^{\infty} \frac{a_{n}}{3^{n}}$ con $a_{n}\in\{0,2\}$ para todo $n\in\mathbb{N}$ (como observamos antes).


::: {.remark}
Claramente la función de Cantor es sobreyectiva. Si un número $y\in[0,1]$ tiene el desarrollo binario $y=\sum_{n=1}^{\infty} 2^{-n}b_{n}$ donde $b_{n}\in\{0,1\}$, el número $x=\sum_{n=1}^{\infty} 3^{-n}2b_{n}\in C$ y $\Phi_{C}(x)=y$. Pero $\Phi_{C}$ no es inyectiva, se puede ver que los extremos de los intervalos $I_{n,i}$ tienen la misma imagen por $\Phi_{C}$.
Se tiene también que $\Phi_{C}$ es creciente. Y estrictamente creciente si excluímos los extremos de los intervalos $I_{n,i}$. 

:::

::: {.definition #unnamed-chunk-52}
Ahora extendemos la función $\Phi_{C}$ al intervalo $[0,1]$, de la siguiente forma:
$$\Phi(x)=\left\lbrace \begin{array}{ll}
	\Phi_{C}(x)&\mbox{ si } x\in C\\
	\Phi_{C}(a)=\Phi_{C}(b)&\mbox{ si } x\in I_{n,i}=(a,b) \mbox{ para algunos } n,i.
\end{array}\right. $$
La función $\Phi$ es *la función de Cantor*.

:::

Construída así, $\Phi$ resulta ser creciente. Y constante en un entorno de cada $x\in[0,1]\backslash C$. De lo que se deduce, junto con la sobreyectividad, que $\Phi$ es continua.

## Medida

Podemos definir funciones de una clase en cualquier conjunto $X$, de la siguiente forma: $f:\mathcal{C}\longrightarrow X:D\mapsto x_{D}$ donde $\mathcal{C}$ es una clase cualquiera (es decir, $\mathcal{C}\subseteq\wp(C)$ donde $C$ es un conjunto cualquiera) $D\in\mathcal{C}$ y $x_{D}\in X$. Es otras palabras, *$f$ es una regla que a cada conjunto de la clase $\mathcal{C}$, le asigna un elemento del conjunto $X$*.

::: {.definition #unnamed-chunk-53}
Sea $\mathcal{C}\subseteq\wp(\Omega)$, una función $\mu:\mathcal{C}\longrightarrow \overline{\mathbb{R}}$ es *finitamente aditiva* si:

(i.) $\mu(\emptyset)=0$,
(ii.) Para todo $A,B\in\mathcal{C}$, tales que $A$ y $B$ son disjuntos, $A\cup B\in\mathcal{C}$ y $\mu(A)$ y $\mu(B)$ están definidos. Se tiene que $\mu(A\cup B)=\mu(A)+\mu(B)$.

es *$\sigma$-aditiva* si:

(i.) $\mu(\emptyset)=0$,

(ii.) Para todo $(A_{i})_{i\in\mathbb{N}}\in\mathcal{C}$ colección disjunta, tal que $\bigcup_{i\in\mathbb{N}}A_{i}$ se tiene que $\mu\left( \bigcup_{i\in\mathbb{N}}A_{i}\right) =\sum_{i\in\mathbb{N}}\mu(A_{i})$.

:::


Es natural definir funciones en colecciones con al menos estructura de anillo, para que la función tenga la propiedad de aditividad.


::: {.definition #unnamed-chunk-54}
	Sea $\mathcal{A}\in\wp(\Omega)$ una $\sigma$-álgebra. Al par ($\Omega$,$\mathcal{A}$) se le llama *espacio medible*. Además, una función $\mu:\mathcal{A}\longrightarrow \overline{\mathbb{R}^{+}}$ es una *medida sobre* ($\Omega$,$\mathcal{A}$) si y solo si:

(i.) Para todo $A\in\mathcal{A}$, $\mu(A)\geq 0$.

(ii.) $\mu(\emptyset)=0$,

(iii.) $\mu$ es $\sigma$-aditiva.

El trío $(\Omega,\mathcal{A},\mu)$ se llama *espacios de medida* y a $\mu(A)$ *medida de $A$*.

:::

Las medidas suelen definirse en clases que tienen estructura de $\sigma$-álgebras o al menos de $\sigma$-anillo. Note que como una medida está definida en $\overline{\mathbb{R}}$, la suma $\sum_{i\in\mathbb{N}}\mu(A_{i})$ siempre está definida.

Decimos que una medida tiene la propiedad de monotonía cuando para todo $A, B\in \mathcal{A}$ se tiene que si $A\subseteq B$, entonces $\mu(A)\leq\mu(B)$.
 
::: {.proposition #unnamed-chunk-55}
Toda medida $\mu$ tiene la propiedad de monotonía.

:::
::: {.proof}
Sea $\mathcal{A}$ una $\sigma$-álgebra y sea $\mu$ una medida en $(\Omega,\mathcal{A})$. Sean $A,B\in\mathcal{A}$ tales $A\subseteq B$. Podemos escribir $B=A\cup B$ como una unión disjunta, esto es, $B=A\cup (B\backslash A)$, por $\sigma$-aditividad ( basta aditividad finita) se tiene que $$\mu(B)=\mu(A\cup B)=\mu(A\cup (B\backslash A))=\mu(A)+\mu(B\backslash A)$$ como $\mu$ es una función no negativa, se tiene el resultado.

:::

Del resultado anterior y bajo las mismas hipótesis, se sigue que si $\mu(B)<\infty$, entonces $\mu(B-A)=\mu(B)-\mu(A)$.

::: {.definition #unnamed-chunk-57}
Una medida $\mu$ sobre $(\Omega,\mathcal{A})$ se dice *finita* si $\mu(\Omega)<\infty$. Si $\mu(\Omega)=1$ se dice que $\mu$ es una *medida de probabilidad*; la medida suele denotarse $P$ en lugar de $\mu$ . En este caso, decimos que $(\Omega,\mathcal{A},P)$ es un *espacio de probabilidad* y $P(A)$ es *la probabilidad de $A$*, para cualquier $A\in\mathcal{A}$.

:::
 
Note que una medida es finita si y solo si es acotada. Si $\mu(\Omega)<\infty$, por monotonía se tiene que $\forall A\subseteq\Omega$, $\mu(A)\leq\mu(\Omega)$. Recíprocamente, si $\forall A\subseteq\Omega$ $\mu(A)\leq C\leq\infty$ para alg\'un $C\in\mathbb{R}$, en particular $\mu(\Omega)\leq C\leq \infty$. 
 
::: {.definition #unnamed-chunk-58}
Una medida $\mu$ sobre $(\Omega,\mathcal{A})$, es $\sigma$-finita si existe una colección disjunta numerable $(A_{n})_{n\in\mathbb{N}}\subseteq\mathcal{A}$, tal que $\Omega=\bigcup_{n\in\mathbb{N}} A_{n}$ y $\mu(A_{n})\leq \infty$ para todo $n\in\mathbb{N}$.

:::

::: {.example #unnamed-chunk-59}
*La medida de contar*. La función $\mu:\wp(\Omega)\longrightarrow \overline{\mathbb{R}^{+}}$, definida por $$\mu(A)=\left\lbrace \begin{array}{cc}
	|A|& \mbox{ si } A \mbox{ es un conjunto finito}\\
	\infty& \mbox{ en otro caso}
	\end{array}\right.$$
	$\mu$ es una medida sobre $(\Omega,\wp(\Omega))$. Si $\Omega$ es un conjunto finito, $\mu$ es una medida finita. Si $\Omega$ es numerable, $\mu$ es $\sigma$-finita.

:::

::: {.example #unnamed-chunk-60}
Sea $P=\{(a,b]: a\leq b\in\mathbb{R}\}$. La función *longitud* es la dada por $l:P\longrightarrow \mathbb{R}$ donde $l((a,b])=b-a$. Esta función es una medida finita. Si extendemos $l$ al anillo generado $\mathcal{R}(P)$, de forma natural, obtenemos una función finitamente aditiva.

:::

::: {.example #unnamed-chunk-61}
Sea $\Omega$ un conjunto infinito y $E=\{x_{1},x_{2},\cdots\}\subseteq\Omega$ un subconjunto numerable de $\Omega$. Sea $(\lambda_{i})_{i\mathbb{N}}$ una sucesión numerable de números reales positivos. Sea $\mu:\wp(\Omega)$$\longrightarrow\mathbb{R}$ definida por $\mu(A)=\sum_{x_{i}\in A}\lambda_{i}$, $\mu$ es una medida, es finita si la serie $\sum_{i\geq 1}\lambda_{i}$ converge. Este tipo de medidas se les llama medidas discretas.

:::

::: {.proposition #unnamed-chunk-62}
Sea $(\Omega,\mathcal{A})$ es un espacio medible y $\mu:\mathcal{A}\longrightarrow\mathbb{R}^{+}$. Supongamos que $\mu$ es finitamente aditiva. Entonces $\mu$ es $\sigma$-aditiva si y solo si para todo $(E_{n})_{n}\subseteq\wp(\mathcal{A})$ creciente, se tiene que $\mu\left( \bigcup_{n\geq 1} E_{n}\right) =\lim_{n}\uparrow \mu(E_{n})$. La notación $\lim_{n}\uparrow \mu(E_{n})$ denota límite creciente, es decir, el límite de una sucesión creciente.

:::
::: {.proof}
Supongamos que $\mu$ es $\sigma$-aditiva. Sea $(E_{n})_{n\in\mathbb{N}}$ una sucesión creciente. Note que si existe $n$ para el cual $\mu(E_{n})=\infty$, se tiene el resultado. Entonces supongamos que $\mu(E_{n})<\infty$ para todo $n\in\mathbb{N}$. Definamos la siguiente sucesión $A_{1}=E_{1}$ y para cada $n\geq 2$, $A_{n}=E_{n}\backslash E_{n-1}$. Tenemos que la sucesión $(A_{n})_{n\geq 1}$ es disjunta, además $\bigcup_{i\geq n} A_{i}=\bigcup_{i\geq n} E_{i}$. Luego, $$\mu\left( \bigcup_{i\geq n}E_{i}\right) =\mu\left( \bigcup_{i\geq n} A_{i}\right) =\mu\left( \bigcup_{i\geq n} E_{i}-E_{i-1}\right) $$ por $\sigma$-aditividad, se tiene que $$\mu\left( \bigcup_{i\geq n}E_{i}\right) =\mu\left( \bigcup_{i\geq n} E_{i}-E_{i-1}\right) =\sum_{i\geq 1} \mu(E_{i}-E_{i-1})$$ si suponemos que $E_{0}=\emptyset$, tenemos que 
	$$\begin{array}{rl}
	\mu\left( \bigcup_{i\geq n}E_{i}\right) =&\sum_{i\geq 1} \mu(E_{i}-E_{i-1})\\
	=&\lim_{n}\sum_{i=1}^{n} \mu(E_{i})-\mu(E_{i-1})\\
	=&\lim_{n} \mu(E_{n})-\mu(E_{0})\\
	=&\lim_{n} \mu(E_{n})
	\end{array}$$
	Recíprocamente, sea $(A_{n})_{n\geq 1}$ una sucesión de conjuntos disjuntos. Definimos $E_{n}=\bigcup_{i=1}^{n} A_{i}$; entonces $(E_{})_{n\geq 1}$ es una sucesión creciente, además $\bigcup_{i\geq n} A_{i}=\bigcup_{i\geq n} E_{i}$. De donde se sigue que $$\begin{array}{rl}
	\mu\left( \bigcup_{i\geq n} A_{i}\right) =&\mu\left( \bigcup_{i\geq n} E_{i}\right) \\
	=&\lim_{n}\uparrow \mu(E_{n})\\
	=&\lim_{n\to\infty}\mu\left( \bigcup_{i=1}^{n} A_{i}\right) \\
	=&\lim_{n\to\infty}\sum_{i=1}^{n}\mu(A_{i})\\
	=&\sum_{n\geq 1}\mu(A_{n})
	\end{array}$$

:::

Puede caracterizarse la $\sigma$-aditividad de $\mu$ en términos de sucesiones decrecientes, de forma análoga a la proposición anterior.

::: {.proposition #unnamed-chunk-64}
Sea $(\Omega,\mathcal{A})$ es un espacio medible y $\mu:\mathcal{A}\longrightarrow\mathbb{R}^{+}$ una medida finita, finitamente aditiva. Entonces $\mu$ es $\sigma$-aditiva si y solo si para todo $(E_{n})_{n}\subseteq\wp(\mathcal{A})$ decreciente, se tiene que $\mu\left( \bigcap_{n\geq 1} F_{n}\right) =\lim_{n}\downarrow \mu(F_{n})$. La notación $\lim_{n}\downarrow \mu(F_{n})$ denota límite decreciente, es decir, el límite de una sucesión decreciente.

:::

La demostración de esta proposición es análoga a la anterior.

::: {.remark}
En la proposición para sucesiones decrecientes, se pueden remplazar las hipótesis por *si toda sucesión decreciente $(F_{n})_{n\geq 1}$ tal que $\bigcap_{n\geq 1} F_{n}=\emptyset$, entonces $\lim_{n} \mu(F_{n})=0$*.
Si $\mu$ no es una medida finita, la proposición no es cierta. Aunque si se pide que $\mu\left( \bigcap_{n\geq 1}F_{n}\right) =\lim_{n} \mu(F_{n})$ para toda sucesión $(F_{n})$ decreciente tal que $\mu(F_{n})<\infty$ para algún $n$.

:::

A continuación veremos algunos *teoremas de clases monótonas*, que aunque son varios, llevan el mismo nombre porque son similares. Pero antes presentamos un lema útil para la demostración de estos teoremas.

::: {.lemma #unnamed-chunk-66}
Si una clase de conjuntos $\mathcal{A}$ es a la vez un anillo y una clase monótona entonces $\mathcal{C}$ es un $\sigma$-anillo.

:::

::: {.proof}
Como $\mathcal{C}$ es un anillo, basta ver que es cerrado bajo uniones e intersecciones numerables. Sea $(A_{n})_{n\geq 1} \subseteq \mathcal{C}$. Definamos la siguiente clase monótona creciente a partir de la sucesión $(A_{n})_{n\geq 1}$: $C_{n}=\bigcup_{i=1}^{n} A_{i}$ para todo $n\in\mathbb{N}$. Como $\mathcal{C}$ es un anillo, cada $C_{n}\in\mathcal{C}$. Por construcción, $(C-{n})_{n\geq 1}$ es una sucesión creciente, y como $\mathcal{C}$ es una clase monótona, $\bigcup_{n\geq 1} A_{n}=\bigcup_{n\geq 1} C_{n}\in\mathcal{C}$. De forma análoga se demuestra que $\mathcal{C}$ es cerrado bajo intersecciones numerables.

:::

::: {.theorem #unnamed-chunk-68}
Sea $\mathcal{R}$ un anillo. Entonces el $\sigma$-anillo generado por $\mathcal{R}$ coincide con la clase monótona generada por $\mathcal{R}$. Es decir, $\sigma_{\mathcal{R}}(\mathcal{R})=\mathcal{M}(\mathcal{R})$.

:::
::: {.proof}
(i.) Es obvio que $\mathcal{M}(\mathcal{R})\subseteq\sigma_{\mathcal{R}}(\mathcal{R})$.

 (ii.) Ahora veamos que $\sigma_{\mathcal{R}}(\mathcal{R})=\mathcal{M}(\mathcal{R})$. Primero probemos que $\mathcal{M}(\mathcal{R})$ es un anillo y del lema anterior obtendremos el resultado. Sea $F\in\mathcal{R}$ y definamos $L(F)=\{E\in\mathcal{M}(\mathcal{R}): E\backslash F, F\backslash E, E\cup F, E\cap F\in\mathcal{M}(\mathcal{R}) \}$. $L(F)$ es una clase monótona. En efecto, sea $(E_{n})_{n\geq 1}\subseteq L(F)$ una sucesión creciente. Como $(E_{n}-F)_{n\geq 1}$ es una sucesión creciente en $\mathcal{M}(\mathcal{R})$ y  $\left( \bigcup_{n\geq 1} E_{n} \right) -F= \bigcup_{n\geq 1}(E_{n}-F)$, entonces $\left( \bigcup_{n\geq 1} E_{n}\right)-F\in\mathcal{M}(\mathcal{R})$. Demostrar que $F\backslash (E_{n})_{n\geq 1}, (E_{n})_{n\geq 1}\cup F, (E_{n})_{n\geq 1}\cap F$ pertenecen a $\mathcal{M}(\mathcal{R})$, es análogo. Para sucesiones decrecientes, es análogo. Con lo que se demuestra que $\mathcal{M}(\mathcal{R})$ es una clase monótona. Además, $\mathcal{R}\subseteq L(F)$.
Sea $L=\{F\in\mathcal{M}(\mathcal{R}): E\backslash F, F\backslash E, E\cup F, E\cap F\in\mathcal{M}(\mathcal{R})\}$. Es claro que $L(F)\subseteq L$, por lo tanto, $\mathcal{R}\subseteq L$. Es claro que $L$ es una clase monótona; por el lema anterior, se tiene que $L=\mathcal{M}(\mathcal{R})=\sigma_{\mathcal{R}}(\mathcal{R})$.

:::

::: {.theorem #unnamed-chunk-70}
	Sea $\mathcal{A}$ un álgebra y $\mathcal{M}$ una clase monótona tal que $\mathcal{A}\subseteq\mathcal{M}$, entonces $\sigma(\mathcal{A})\subseteq\mathcal{M}$.

:::
::: {.proof}
 	Veamos que $\sigma(\mathcal{A})=\mathcal{M}(\mathcal{A})\subseteq\mathcal{M}$. Es claro que $\sigma(\mathcal{A})$ es una clase monótona, por lo tanto, $\sigma(\mathcal{A})\subseteq\mathcal{M}(\mathcal{A})$. Ahora, dado $A\in\mathcal{M}(\mathcal{A})$, entonces $A\in\mathcal{A}$ o es límite de una sucesión monótona de $\mathcal{A}$. Por lo tanto $A\in\sigma(\mathcal{A})$.

:::

Otro teorema de este tipo es el siguiente:

::: {.theorem #unnamed-chunk-72}
Sea $\mathcal{P}$ un sistema $\pi$. El sistema $\lambda$ generado por $\mathcal{P}$ coincide con la $\sigma$-álgebra generada por $\mathcal{P}$.

:::

Los siguientes resultados son aplicaciones de las distintas versiones del teorema de clase monótona.

::: {.theorem #teorema158}
	Si $\mu$ y $\nu$ son medidas finitas en $(\mathbb{R},\mathcal{B}(\mathbb{R}))$ que coinciden en los intervalos del tipo $(a,b]$, entonces $\mu$ y $\nu$ coinciden en todo $\mathcal{B}(\mathbb{R})$.

:::
::: {.proof}
Considerando la clase $\mathcal{H}=\{B\in\mathcal{B}(\mathbb{R}): \mu(B)=\nu(B)\}$. Es claro que los intervalos del tipo $(a,b]$ pertenecen a la clase $\mathcal{H}$. Basta ver que el sistema $\lambda$ generado por los intervalos coincide con el sitema $\lambda$ generado por $\mathcal{H}$. Luego, por el teorema de clases monótonas, se tiene el resultado.

:::

::: {.theorem #teorema159}
	Si $\mu$ y $\nu$ son dos medidas en $(\mathbb{R},\mathcal{B}(\mathbb{R}))$ que coinciden y son finitas en los intervalos del tipo $(a,b]$, entonces $\mu$ y $\nu$ coinciden en todo $\mathcal{B}(\mathbb{R})$.

:::
 
::: {.remark}
 Pueden usarse $\sigma$-álgebras generadas por anillos, así como generadas por álgebras o sistemas $\pi$.

:::

<!--chapter:end:020-preliminares.Rmd-->

# LA MEDIDA DE LEBESGUE

## Construyendo la Medida de Lebesgue

En esta parte construiremos la medida de Lebesgue usando el método de Carathéodory.

Partiremos de la familia de conjuntos $\mathcal{I}=\{<a,b>: a\leq a\in\mathbb{R}\}$ la cual tiene estructura de semianillo. Definamos la función longitud en esta clase de conjuntos:
$$l:\mathcal{I}\longrightarrow\mathbb{R}: <a,b>\mapsto b-a$$
Para esta función se tiene lo siguiente:

::: {.proposition #unnamed-chunk-75}
La función $l$ es finitamente aditiva en $\mathcal{I}$. Es decir, para $I\in\mathcal{I}$, si $I=\bigcup_{k=1}^{n} I_{k}$ con cada $I_{k}\in\mathcal{I}$ y $I_{k}\cap I_{m}=\emptyset$ si $k\neq m$, entonces $l(I)=\sum_{k=1}^{n} l(I_{k})$.
:::

Consideremos el anillo generado por $\mathcal{I}$, es decir $\mathcal{R}(\mathcal{I})$. Se puede probar que $\mathcal{R}(\mathcal{I})$ está formado por las uniones finitas y disjuntas de elementos de $\mathcal{I}$. Definamos la extensi\'on natural de $l$ al anillo $\mathcal{R}(\mathcal{I})$, de la siguinte manera:
$$\overline{l}:\mathcal{R}(\mathcal{I})\longrightarrow\mathbb{R}^{+}:I\mapsto \sum_{k=1}^{n} I_{k}, \mbox{ donde } I=\bigcup_{k=1}^{n} I_{k}$$

Veamos a continuación algunas de las propiedades de la extensión de $l$. 

::: {.proposition #unnamed-chunk-76}
La extensión $\overline{l}$, está bien definida en $\mathcal{R}(\mathcal{I})$.
:::

::: {.proof}
Supongamos que $I\in\mathbb{R}(\mathcal{I})$ se escribe como $I=\bigcup_{r=1}^{n} I_{r}$ y $I=\bigcup_{s=1}^{m} J_{s}$, con $(I_{r})_{r=1}^{n}$ y $(I_{r})_{r=1}^{n}$ familias disjuntas de $\mathcal{I}$. Queremos ver que $\sum_{r=1}^{n} l(I_{r})=\sum_{s=1}^{m} l(J_{s})$. Sea $H_{rs}=I_{r}\cup J_{s}$ para todo $r\leq n$ y $s\leq m$. Note que la colección $(H_{rs})$ es disjunta. Por otro lado, se tiene que 
	$$I_{r}=I_{r}\cap A=I_{r}\cap\left( \bigcup_{s=1}^{m} J_{s}\right) =\bigcup_{s=1}^{m} H_{rs}$$
	y 
	$$J_{s}=J_{s}\cap A=J_{s}\cap\left( \bigcup_{r=1}^{n} I_{r}\right) =\bigcup_{r=1}^{n} H_{rs}$$
	por lo tanto,
	$$\sum_{r=1}^{n} l(I_{r})=\sum_{r=1}^{n} \sum_{s=1}^{m} l(H_{rs})=\sum_{s=1}^{m} \sum_{r=1}^{n} l(H_{rs})=\sum_{s=1}^{m} l(J_{s})$$.
:::


::: {.proposition #unnamed-chunk-78}
$\overline{l}$ es finitamente aditiva.
:::

::: {.proof}
Note que $\emptyset=(a,a]$, por lo tanto, $\overline{l}(\emptyset)=a-a=0$. Sean $A$ y $B$ subconjuntos en $\mathcal{R}(\mathcal{I})$ disjuntos. Entonces, $A$ y $B$ se escriben como uniones disjuntas de intervalos de $\mathcal{I}$, es decir, $A=\bigcup_{r=1}^{n} I_{r}$ con $I_{1},\cdots, I_{n}\in\mathcal{I}$ y $B=\bigcup_{s=1}^{m} J_{s}$ con $J_{1},\cdots, J_{m}\in\mathcal{I}$. Como $A\cap B=\emptyset$, la colección $\{I_{1},\cdots,I_{n},J_{1},\cdots,J_{m}\}$ es disjunta. Además se tiene que $A\cup B=\left( \bigcup_{r=1}^{n} I_{r}\right) \cup\left( \bigcup_{s=1}^{m} J_{s}\right) $. De donde se tiene que $\overline{l}(A\cup B)=\sum_{r=1}^{n} l(I_{r})+\sum_{s=1}^{m} l(J_{s})$.
:::

Es importante notar que $\overline{l}$ es la única extensión finitamente aditiva de $l$ en $\mathcal{R}(\mathcal{I})$. Además, sean $A, B\in\mathcal{R}(\mathcal{I})$ tales que $A\subseteq B$. Como $B=(B\backslash A)\cup A$, $\overline{l}(B)=\overline{l}(B\backslash A)+\overline{l}(A)$ y $\overline{l}$ es una función no negativa, se tiene que $\overline{l}(A)\leq \overline{l}(B)$. Esto es el siguiente resultado:

::: {.corollary #unnamed-chunk-80}
$\overline{l}$ es una función monótona en $\mathcal{R}(\mathcal{I})$.
:::

De igual forma se tiene que 

::: {.corollary #unnamed-chunk-81}
$\overline{l}\left( \bigcup_{k=1}^{n}\right) \leq \sum_{k=1}^{n}l(J_{k})$, donde $(J_{k})_{k=1}^{n}$ es un subconjunto finito de intervalos cualesquiera de $\mathcal{I}$. 
:::

Para ver que $\overline{l}$ es $\sigma$-aditiva, usaremos el teorema de Heine-Borel.

::: {.proposition #unnamed-chunk-82}
$\overline{l}$ es $\sigma$-aditiva.
:::

::: {.proof}
Veamos la demostración para dos casos, primero para unión numerables disjuntas de conjuntos en $\mathcal{I}$ y luego para unión numerables disjuntas de conjuntos cualesquiera en $\mathcal{R}(\mathcal{I})$.
Sea $I=\bigcup_{n\in\mathbb{N}} I_{n}$ con $I_{n}\in\mathbb{N}$ disjuntos $I_{i}\cap I_{j}=\emptyset$ siempre que $i\neq j$. Para cada $N\in\mathbb{N}$, $\bigcup_{n=1}^{N} I_{n}\subseteq I$, por lo tanto, para todo $N\in\mathbb{N}$ $\overline{l}\left( \bigcup_{n=1}^{N} I_{n}\right) \leq \overline{l}(I)$; como $\overline{l}$ es finitamente aditiva, se tiene que $\sum_{n=1}^{N} \overline{l}(I_{n})\leq \overline{l}(I)$. Si $N$ tiende a infinito, se tiene que:
	$$\sum_{n=1}^{\infty} \overline{l}(I_{n})=\lim_{N\to\infty} \sum_{n=1}^{N} \overline{l}(I_{n})\leq \overline{l}(I).$$ Supongamos que $I$ es un intervalo de extremos $a$ y $b$, esto es $I=<a,b>$. Sea $\epsilon>0$ y consideremos $I_{\epsilon}=[a+\epsilon, b-\epsilon]\subseteq I$. Construyamos un cubrimiento por abiertos para el intervalo $I_{\epsilon}$ como sigue\\
Llamemos $<a_{n}^{\epsilon}, b_{n}^{\epsilon}>$ al intervalo que resulta de la interseccón $I_{n}\cap I_{\epsilon}$ para cada $n\in\mathbb{N}$ y sea $$J_{n}^{\epsilon}=\left( a_{n}^{\epsilon}-\frac{\epsilon}{2^{n}}, b_{n}^{\epsilon}+\frac{\epsilon}{2^{n}}\right)$$ entonces, $$I_{\epsilon}=I_{\epsilon}\cap\left( \bigcup_{n=1}^{\infty} I_{n}\right) =\bigcup_{n=1}^{\infty} I_{\epsilon}\cap I_{\epsilon}\subseteq\bigcup_{n=1}^{\infty} J_{n}^{\epsilon}.$$ Como $I_{\epsilon}$ es compacto (por ser cerrado y acotado) y $(J_{n}^{\epsilon})$ es un cubrimiento por abiertos de $I_{\epsilon}$, existe un subcubrimiento finito de $I_{\epsilon}$, esto es, existe $N\in\mathbb{N}$ tal que $I_{\epsilon}\subseteq \bigcup_{n=1}^{N} J_{n}^{\epsilon}$. Por lo tanto $I_{\epsilon}\subseteq \bigcup_{n=1}^{k} J_{n}^{\epsilon}$ para todo $k\geq N$. Por monotonía y aditividad finita, se tiene que $$\overline{l}(I_{\epsilon})\leq \overline{l}\left(\bigcup_{n=1}^{k} J_{n}^{k} \right)\leq \sum_{n=1}^{k} \overline{l}(J_{n}^{\epsilon})\mbox{ para todo } k\geq N$$
	Ahora, como $\overline{l}(J_{n}^{\epsilon})=l(<a_{n}^{\epsilon},b_{n}^{\epsilon}>)+\frac{\epsilon}{2^{n}}$, se tiene que 
$$\overline{l}(I_{\epsilon})\leq \sum_{n=1}^{k}l(<a_{n}^{\epsilon},b_{n}^{\epsilon}>)+\frac{\epsilon}{2^{n-1}}=\sum_{n=1}^{k} l(I_{n}\cap I_{\epsilon})+\frac{\epsilon}{2^{n-1}}$$
	Como $I_{n}\cap I_{\epsilon}\subseteq I_{n}$, $l(I_{n}\cap I_{\epsilon})\leq l(I_{n})$, entonces:
	$$\overline{l}(I_{\epsilon})\leq \sum_{n=1}^{k} l(I_{n})\frac{\epsilon}{2^{n-1}}.$$
	Cuando $k \to \infty$, $$l(I_{\epsilon})\leq \sum_{n=1}^{\infty}l(I_{n})+\sum_{n=1}^{\infty} \frac{\epsilon}{2^{n-1}}=\sum_{n=1}^{\infty}l(I_{n})+ 2\epsilon.$$
	Ahora bien, como $l(I_{\epsilon})=l(I)-2\epsilon$, entonces 
	$$l(I)\leq \sum_{n=1}^{\infty}l(I_{n})+ 4\epsilon$$
	por lo tanto, $$\overline{l}(I)\leq \sum_{n=1}^{\infty}\overline{l}(I_{n}).$$
	Con lo que se concluye que $$\overline{l}(I)=\sum_{n=1}^{\infty}\overline{l}(I_{n}).$$
:::

Ahora, consideremos un conjunto cualquiera $E\in\mathcal{R}(\mathcal{I})$ tal que $E=\bigcup_{k=1}^{\infty} E_{k}$ donde cada $(E_{k})_{k\in\mathbb{N}}\in\mathcal{R}(\mathcal{I})$ una colección disjunta. Supongamos que cada $E_{k}=\bigcup_{j=1}^{n_{k}} J_{j}^{k}$ con $J_{j}^{k}\in\mathcal{I}$ disjuntos.
Por otro lado, como $E\in\mathcal{R}(\mathcal{I})$, se tiene que es unión finita de intervalos, es decir, $E=\bigcup_{i=1}^{n}I_{n}$, para $I_{n}\in\mathcal{I}$	
De este modo, tenemos que $\overline{l}(E)=\sum_{i=1}^{n} l(I-{i})=$. Por otro lado $\sum_{k=1}^{\infty} \overline{l}(E_{k})=\sum_{k=1}^{\infty}\sum_{j=1}^{n_{k}} l(J_{j}^{k})$.
Como $(I_{i})_{i=1}^{n}$ y $(E_{k})_{k\in\mathbb{N}}$ son particiones del mismo conjunto, se tiene que $$I_{i}=\bigcup_{k\geq 1} I_{i}\cap E_{k}=\bigcup_{k\geq 1}\bigcup_{j=1}^{n_{k}} I_{i}\cap J_{j}^{k}\mbox{ para todo }i=1,\cdots, n.$$
	
Llamemos, $L_{ijk}=I_{i}\cap J_{j}^{k}\in\mathcal{I}$. Luego $(L_{ijk})_{j\leq n_{k}, k\geq 1}$ es una colección disjuntas de intervalos de $\mathcal{I}$. Como $\overline{l}$ es $\sigma$-aditiva en $\mathcal{I}$, se tiene que $$\overline{l}(I_{i})=\sum_{k\geq 1}\sum_{j=1}^{n_{k}} \overline{l}(L_{ijk})$$
Finalmente, 
$$\overline{l}(E)=\sum_{i=1}^{n} l(I_{i})=\sum_{i=1}^{n}\sum_{k\geq 1}\sum_{j=1}^{n_{k}}l(L_{ijk})=\sum_{k\geq 1}\sum_{j=1}^{n_{k}}l(J_{jk})=\sum_{k\geq 1}\overline{l}(E_{k}).$$

::: {.corollary #unnamed-chunk-84}
Sea $E\subseteq\bigcap_{k\geq 1} E_{n}$, con $E_{n}\in\mathcal{R}(\mathcal{I})$ para todo $n\in\mathbb{N}$. Entonces $\overline{l}(E)\leq \sum_{n\geq 1}\overline{l}(E_{n})$
:::

::: {.proof}
Construyamos una unión disjunta: $F_{1}=E_{1}$ y $F_{n}=E_{n}\backslash \bigcup_{k=1}^{n-1} E_{k}$ para todo $n>1$. Se tiene que $\bigcup_{n\geq 1} E_{n}=\bigcup_{n\geq 1} F_{n}$. Entonces $E\subseteq \bigcup_{n\geq 1} F_{n}$. Además, por construcción, $F_{n}\subseteq E_{n}$. Por monotonía y $\sigma$-aditividad de $\overline{l}$, se sigue que $$\overline{l}(E)\leq \overline{l}\left( \bigcup_{k\geq 1} E_{n}\right) =\overline{l}\left( \bigcup_{k\geq 1} F_{n}\right) =\sum_{k\geq 1}\overline{l}(F_{n})\leq\sum_{k\geq 1}\overline{l}(E_{n}).$$
:::

Ahora, extenderemos la función $\overline{l}$ a la $\sigma$-álgebra de Borel usando el método de Carathéodory. A partir de $\overline{l}$, definiremos la función medida exterior, $m^{\ast}$.
Primero definamos para cada $A\in\wp(\mathbb{R})$, el conjunto  $$\iota(A)=\left\lbrace (I_{n})_{n\geq 1}:\mbox{ cada } I_{n}\mbox{ es un intervalo finito y } A\subseteq \bigcup_{n\geq 1} I_{n}\right\rbrace ;$$ note que $\iota(A)\neq\emptyset$ para cualquier $A\in\wp$, ya que $A\subseteq\mathbb{R}=\bigcup_{n\geq 1}[-n,n]$.

Sea $m^{\ast}:\wp(\mathbb{R})\longrightarrow \overline{\mathbb{R}^{+}}$ definida por $m^{\ast}(A)=\inf_{(I_{n})\in\iota(A)} \sum_{n\geq 1} l(I_{n})=\inf \left\lbrace \sum_{n\geq 1} l(z_{n}): (I_{n})_{n\in\mathbb{N}}\in\iota(A) \right\rbrace$


::: {.remark}
$m^{\ast}$ no es una medida en $\wp(\mathbb{R})$ (no es $\sigma$-aditiva en $\wp(\mathbb{R})$). Aunque tiene algunas propiedades importantes, similares a las medidas.

:::

::: {.proposition #unnamed-chunk-87}
La función $m^{\ast}$ tiene las siguientes propiedades:

(i.) $m^{\ast}(\emptyset)=0$.

(ii.) $m^{\ast}$ es monótona, esto es, si $A\subseteq B$, entonces $m^{\ast}(A)\leq m^{\ast}(B)$.

(iii.) $m^{\ast}$ coincide con la longitud en el conjunto de los intervalos finitos, es decir, si $I$ es un intervalo finito, $m^{\ast}(I)=l(I)$.
:::

::: {.proof}
(i.) Como $\emptyset\subseteq(a,a)$ para cualquier número real $a$, entonces $m^{\ast}(\emptyset)$.

(ii.) Sean $A, B\in\mathbb{R}$, tales que $A\subseteq B$. Es claro que $\iota(B)\subseteq \iota(A)$, de donde se sigue que $$m^{\ast}(A)=\inf_{(I_{n})\in\iota(A)} \sum_{n\geq 1} l(I_{n})\leq \inf_{(I_{n})\in\iota(A)} \sum_{n\geq 1} l(I_{n})=m^{\ast}(B)$$.

(iii.) Sea $I$ un intervalo finto. $$m^{\ast}(I)=\inf_{(I_{n})\in\iota(I)} \sum_{n\geq 1} l(I_{n})\leq l(I)$$
por otro lado, si $I\subseteq \bigcup_{n\geq 1} I_{n}$ para una familia $(I_{n})_{n}$ de intervalos finitos, entonces $$l(I)\leq \sum_{n=1} l(I_{n})\leq \inf_{(I_{n})\in\iota(I)} \sum_{n\geq 1} l(I_{n})\leq m^{\ast}(I).$$
		Por lo tanto $m^{\ast}(I)=l(I)$.
:::

::: {.definition #unnamed-chunk-89}
Una función $\mu:\mathcal{C}\longrightarrow\mathbb{R}$ es $\sigma$-subaditiva si para todo $(A_{n})_{n\in\mathbb{N}}\subseteq\mathcal{C}$ se tiene que $\mu\left( \bigcup_{n\geq 1} A_{n}\right) \leq \sum_{n\geq 1} \mu(A_{n})$.
:::

::: {.proposition #unnamed-chunk-90}
$m^{\ast}$ es $\sigma$-subaditiva.
:::

::: {.proof}
Sea $(A_{n})_{n\in\mathbb{N}}$ una colección de subconjuntos de $\mathbb{R}$. 
Si $m^{\ast}(A_{n})=\infty$ para algún $n\in\mathbb{N}$, es claro que $m^{\ast}\left( \bigcup_{n\geq 1} A_{n}\right) \leq \sum_{n\geq 1} m^{\ast}(A_{n})$.
Supongamos que $m^{\ast}(A_{n})<\infty$ para todo $n\in\mathbb{N}$. Dado $\epsilon>0$, para cada $n\in\mathbb{N}$, existe una colección de intervalos $(I_{i}^{n})_{i\geq 1}$ tal que $A_{n}\subseteq \bigcup_{i\geq 1} I_{i}^{n}$ tal que $$\sum_{i\geq 1}l(I_{i}^{n})< m^{\ast}(A_{n})+\frac{\epsilon}{2^{n}}.$$
Consideremos la colección $(I_{i}^{n})_{i,n\geq 1}$ que resulta de unir las colecciones de intervalos hallados para cada $n$. Entonces, $$\bigcup_{n\geq 1} A_{n}\subseteq\bigcup_{i,n\geq 1} I_{i}^{n};$$ por lo tanto
	$$m^{\ast}\left(\bigcup_{n\geq 1} A_{n}\right)\leq \sum_{n\geq 1}\sum_{i\geq 1} l(I_{i}^{n})< \sum_{n\geq 1} \left( m^{\ast}(A_{n})+\frac{\epsilon}{2^{n}}\right) =\sum_{n\geq 1} m^{\ast}(A_{n})+ \epsilon.$$
	De donde se sigue que $$m^{\ast}\left(\bigcup_{n\geq 1} A_{n}\right)\leq \sum_{n\geq 1} m^{\ast}(A_{n}).$$
:::

El siguiente teorema nos permite aproximar la medida de un conjunto cualquiera de números reales, por la medida de un conjunto abierto en $\mathbb{R}$, tan cercano como se quiera (en términos de medida). Más aún, permite asegurar que existe un conjunto $G_{\delta}$ que contiene al conjunto en cuestión, con idéntica medida.

::: {.theorem #unnamed-chunk-92}
Dado $A\subseteq\mathbb{R}$ y $\epsilon>0$, existe un conjunto abierto $O\subseteq\mathbb{R}$ tal que $A\subseteq O$ y $m^{\ast}(A)\leq m^{\ast}(O)\leq m^{\ast}(A)+\epsilon$. Además, existe un conjunto $G_{\delta}$, $G$, tal que $A\subseteq G$ y $m^{\ast}(A)=m^{\ast}(G)$.
:::

::: {.proof}
Sea $\epsilon>0$, existe una colección $(I_{n})_{n\geq 1}$ tal que $A\subseteq\bigcup_{n\geq 1} I_{n}$ y $\sum_{n\geq 1}l(I_{n})< m^{\ast}(A)+\frac{\epsilon}{2}$. Definamos una colección de intervalos abiertos a partir de la colección $(I_{n})_{n\geq 1}$, así: si $I_{n}=<a_{n}, b_{n}>$, definamos $J_{n}=(a_{n}-\frac{\epsilon}{2^{n+2}}, b_{n}+\frac{\epsilon}{2^{n+2}})$ y sea $O=\bigcup_{n\geq} J_{n}$. Claramente $O$ es un conjunto abierto que contiene al conjunto $A$. Además, $$m^{\ast}(O)\leq \sum_{n\geq 1} J_{n}=\sum_{n\geq 1} l(J_{n})+\frac{\epsilon}{2}\leq m^{\ast}+\frac{\epsilon}{2}=m^{\ast}+\epsilon.$$
	Ahora, considerando $\epsilon=\frac{1}{n}$, para cada $n\in\mathbb{N}$, por lo anterior, existe $O_{n}$ tal que $A\subseteq O_{n}$ y $m^{\ast}(A)\leq m^{\ast}(O_{n})\leq m^{\ast}(A)+\frac{1}{n}$. Tomando la intersección de todos estos conjuntos abiertos, obtenemos un conjunto $G_{\delta}$, $G=\bigcap_{n\geq 1} O_{n}$, tal que $A\subseteq G=\bigcap_{n\geq 1} O_{n}$ por lo que $m^{\ast}(A)\leq m^{\ast}(G)$. Por otro lado, como $G\subseteq O_{n}$ para todo $n\in\mathbb{N}$, entonces $$m^{\ast}(A)\leq m^{\ast}(G)\leq m^{O_{n}}\leq m^{\ast}(A)+\frac{1}{n}\mbox{ para todo } n\in\mathbb{N}.$$
	De donde se sigue que $$m^{\ast}(A)=m^{\ast}(G).$$
:::

Como la función longitud es invariante bajo traslaciones, es fácil ver que $m^{\ast}$ es invariante bajo traslaciones.

Como ya dijimos, $m^{\ast}$ no es una medida, ya que esta no es $\sigma$-aditiva. Pero podemos considerar un clase donde si lo sea. Para ello, daremos la definición de conjuntos medibles bajo la función $m^{\ast}$, debida a *Carathéodory*.

::: {.definition #unnamed-chunk-94}
Un conjunto $E\subseteq \mathbb{R}$ es $m^{\ast}$ medible si y solo si para todo subconjunto de números reales, $A\subseteq\mathbb{R}$ se tiene que $$m^{\ast}(A)=m^{\ast}(A\cap E)+ m^{\ast}(A\cap E^{c}).$$
:::


::: {.remark}
Es claro que si $m^{\ast}$ fuese finitamente aditiva, todo conjunto $E\subseteq\mathbb{R}$ sería un conjunto $m^{\ast}$ medible.
De la $\sigma$-subaditividad, se tiene que $m^{\ast}(A)\leq m^{\ast}(A\cap E)+m^{\ast}(A\cap E^{c})$. Por lo tanto, para verificar que un conjunto es $m^{\ast}$ medible, basta verificar la otra desigualdad, esto es $m^{\ast}(A)\geq m^{\ast}(A\cap E)+m^{\ast}(A\cap E^{c})$.
La definición de conjuntos $m^{\ast}$ medibles es simétrica bajo complementación, esto es, $E$ es $m^{\ast}$ medible si y solo si $E^{c}$ lo es.
Es fácil verificar que el conjunto vaciío es $m^{\ast}$ medible. Por lo anterior, $\mathbb{R}=\emptyset^{c}$ lo es.

:::

::: {.proposition #unnamed-chunk-96}
Sea un conjunto $E\subseteq\mathbb{R}$. Si $m^{\ast}=0$, entonces $E$ es $m^{\ast}$ medible.
:::

::: {.proof}
Sea $A\subseteq\mathbb{R}$. Como $A\cap E\subseteq E$, se tiene que $m^{\ast}(A\cap E)\leq m^{\ast}(E)\leq 0$. Además, como $A\cap E^{c}\subseteq A$, se tiene que $m^{\ast}(A\cap E^{c})\leq m^{\ast}(A)$. De donde se sigue que 
	$$m^{\ast}(A)\geq m^{\ast}(A\cap E^{c})=0+ m^{\ast}(A\cap E^{c})\geq m^{\ast}(A\cap E^{c})+m^{\ast}(A\cap E)$$ entonces, $E$ es $m^{\ast}$ medible.
:::

Denotemos la familia de conjuntos $m^{\ast}$ medibles, por $\mathcal{M}$. Se puede demostrar que esta colección es una $\sigma$-álgebra, más aún, que la función $m^{\ast}$ restringida a los conjuntos $m^{\ast}$ medibles, es $\sigma$-aditiva.

::: {.theorem #unnamed-chunk-98}
$\mathcal{M}$ es una $\sigma$-álgebra y $m^{\ast}\upharpoonright \mathcal{M}$.
:::

::: {.proof}
Demostremos primero que $\mathcal{M}$ es una $\sigma$-álgebra. En las observaciones anteriores, ya vimos que $\mathcal{M}$ es cerrada bajo complementación. Veamos que $\mathcal{M}$ es cerrado bajo uniones finitas (luego veremos que es cerrado bajo uniones numerables). Sean $E_{1}, E_{2}$ dos conjuntos $m^{\ast}$ medibles. Sea $A\subseteq\mathbb{R}$, entonces,
	$$\begin{array}{rl}
	m^{\ast}(A)=& m^{\ast}(A\cap E_{1})+m^{\ast}(A\cap E_{1}^{c})\\
	=& m^{\ast}(A\cap E_{1})+[m^{\ast}(A\cap E_{1}^{c}\cap E_{2})+m^{\ast}(A\cap E_{1}^{c}\cap E_{2}^{c})]\\
	\geq& m^{\ast} ( (A\cap E_{1})\cup (A\cap E_{1}^{c}\cap E_{2})\cup (A\cap E_{1}^{c}\cap E_{2}^{c}))\\
	=& m^{\ast} (A\cap (E_{1}\cup E_{2}))+  m^{\ast} (A\cap (E_{1}\cup E_{2})^{c})
	\end{array}$$ 
Por lo discutido en la observación, $m^{\ast}(A)=m^{\ast} (A\cap (E_{1}\cup E_{2}))+  m^{\ast} (A\cap (E_{1}\cup E_{2})^{c})$, luego, $E_{1}\cup E_{2}\in\mathcal{M}$.
Ahora demostremos que $m^{\ast}\upharpoonright$ es finitamente aditiva. Sean $E_{1}, E_{2}\in\mathcal{M}$, entonces  $$m^{\ast}(A\cap(E_{1}\cup E_{2}))=m^{\ast}(A\cap(E_{1}\cup E_{2})\cap E_{1})+m^{\ast}(A\cap(E_{1}\cup E_{2})\cap E_{1}^{c})=m^{\ast}(A\cap E_{1})+m^{\ast}(A\cap E_{2})$$ 
Por inducción se sigue que 
$$m^{\ast}\left(A\cap \bigcup_{i=1}^{n} E_{i}\right)=\sum_{i=1}^{n} m^{\ast}(A\cap E_{i}).$$
Ahora, considerando $A=\bigcup_{i=1}^{n} E_{i}$ se tiene la aditividad finita.
Con una idea análoga, demostremos la $\sigma$-aditividad. Sea $E=\bigcup_{i\geq 1} E_{i}$ y sea $F_{n}=\bigcup_{i=1}^{n} E_{i}$. Por lo demostrado antes, se tiene que $$m^{\ast}(A\cap F_{n})=\sum_{i=1}^{n} m^{\ast}(A\cap E_{i})$$ 
así, por monotonía de $m^{\ast}$, se tiene que
$$m^{\ast}(A\cap E)\geq m^{\ast}(A\cap F_{n})=\sum_{i=1}^{n} m^{\ast}(A\cap E_{i})$$
Por lo tanto $$m^{\ast}(A\cap E)\geq\sum_{i\geq 1} m^{\ast}(A\cap E_{i}).$$
La desigualdad $$m^{\ast}(A\cap E)\leq\sum_{i\geq 1} m^{\ast}(A\cap E_{i})$$, se obtiene por monotonía.
Ahora veamos que $\mathcal{M}$ es cerrado bajo uniones numerables, esto permitiría concluír que $\mathcal{M}$ es una $\sigma$-álgebra. Consideremos una colección disjunta y numerable de subconjuntos en $\mathcal{M}$, $(E_{n})_{n\geq 1}$. Sea $E=\bigcup_{n\geq 1} E_{n}$ y $F_{n}=\bigcup_{i=1}^{n} E_{i}$. Ya vimos que para cada $n$, $F_{n}$ es $m^{\ast}$ medible, por lo tanto para todo $A\subseteq\mathbb{R}$, se tiene que $$m^{\ast}(A)=m^{\ast}(A\cap F_{n})+m^{\ast}(A\cap F_{n}^{c}).$$ Además, como $E\supseteq F_{n}$, $E^{c}\subseteq F_{n}^{c}$, luego $$m^{\ast}(A\cap E^{c})\leq m^{\ast}(A\cap F_{n}^{c}).$$
Haciendo $n\mapsto \infty$, por la $\sigma$-aditividad, se tiene que para todo $A\subseteq\mathbb{R}$
	$$m^{\ast}(A)=m^{\ast}(A\cap E)+m^{\ast}(A\cap E^{c})$$
Lo que demuestra que $E=\bigcup_{n\geq 1} E_{n}\in\mathcal{M}$.
Todo lo anterior demuestra que $m^{\ast}\upharpoonright\mathcal{M}$ es una medida en $\mathcal{M}$.
:::


::: {.theorem #unnamed-chunk-100}
La $\sigma$-álgebra de Borel, está contenida en $\mathcal{M}$, esto es $\mathcal{B}(\mathbb{R})\subseteq\mathcal{M}$.
:::

::: {.proof}
Veamos que el conjunto de los intervalos finitos es un subconjunto de $\mathcal{M}$. Sea $I\in\mathcal{I}$ y $A\in\mathbb{R}$. Si $m^{\ast}(A)=\infty$ es claro que $m^{\ast}\geq m^{\ast}(A\cap I)+m^{\ast}(A\cap I^{c})$. Supongamos que $m^{\ast}\leq \infty$. Dado $\epsilon$, existe $(J_{n})_{n\geq 1}$ de intervalos finitos tales que $A\subseteq \bigcup_{n\geq 1}$ tal que $A\subseteq\bigcup_{i\geq 1} J_{n}$ y $m^{\ast}(A)+\epsilon \geq \sum_{n\geq 1} \overline{l}(J_{n})$. Por la aditividad finita de $\overline{l}$, se tiene que 
$$\begin{array}{rl}
m^{\ast}(A)+\epsilon \geq& \sum_{n\geq 1} (\overline{l}(J_{n}\cap I)+\overline{l}(J_{n}\cap I^{c}))\\
=& \sum_{n\geq 1} \overline{l}(J_{n}\cap I)+\sum_{n\geq 1}\overline{l}(J_{n}\cap I^{c})\\
\geq& m^{\ast}(A\cap I)+m^{\ast}(A\cap I^{c})
\end{array}$$
:::


## Unicidad de la medida de Lebesgue y otras propiedades

Desde este punto denotaremos por $m$ a la medida en $m^{\ast}\upharpoonright\mathcal{M}$ (y  $m^{\ast}\upharpoonright\mathcal{B}(\mathbb{R})$). Diremos que un conjunto $A\in\mathbb{R}$ es *medible Lebesgue* si es $m^{\ast}$ medible.

::: {.theorem #unnamed-chunk-102}
$m$ es la única medida en $\mathcal{B}(\mathbb{R})$ que coincide con la función $l$ en el anillo de los intervalos.
:::

::: {.proof}
Sea $\mu$ una medida que coincide con la función $l$ en $\mathcal{I}$. Del teorema \@ref(thm:teorema158)  se sigue el resultado.

:::

::: {.theorem #unnamed-chunk-104}
Sea $E\subseteq\mathbb{R}$. Las siguientes son equivalentes:

(i). $E$ es medible Lebesgue.

(ii.) Dado $\epsilon>0$, existe un conjunto abierto $O$ tal que $E\subseteq O$ y $m^{\ast}(O\backslash E)<\epsilon$.

(iii.) Dado $\epsilon>0$, existe un conjunto cerrado $C$ tal que $C\subseteq E$ y $m^{\ast}(E\backslash C)<\epsilon$.

(iv.) Existe un conjunto $G_{\delta}$, $G$, tal que $E\subseteq G$ y $m^{\ast}(G\backslash E)=0$.

(v.) Existe un conjunto $F_{\sigma}$, $F$, tal que $F\subseteq E$ y $m^{\ast}(E\backslash F)=0$.

Si $m^{\ast}(E)\leq\infty$, entonces las afirmaciones anteriores son equivalentes a:

(vi.) Dado $\epsilon>0$, existe un conjunto $U$ que puede representarse como unión finita de intervalos abiertos, tal que $m^{\ast}(U \triangle E)<\epsilon$.

:::

## Consideraciones

Es importante notar que $\mathcal{B}(\mathbb{R})\subsetneq\mathcal{M}$. De hecho, $|\mathcal{B}(\mathbb{R})|=c$ y $\mathcal{M}=2^{c}$. Entonces, existen conjuntos medibles Lebesgue, que no son medibles Borel. Un ejemplo se puede hallar en *Counterexample in Analysis* de *Gelbaum, Olmsted*. Aunque los conjuntos medibles Lebesgue que no son Borel medibles, son conjuntos de medida cero. Si consideramos la sigma álgebra generada por la unión de la clase de los conjuntos de medida cero con $\mathcal{B}(\mathbb{R})$, coincide con $\mathcal{M}$.

::: {.proposition #unnamed-chunk-105}
Sea $A\subseteq\mathbb{R}$. $A\in\mathcal{B}(\mathbb{R})^{m}$ si y solo si existen $B_{1}, B_{2}\in\mathcal{B}(\mathbb{R})$ tal que $B_{1}\subseteq A\subseteq B_{2}$ y $m(B_{2}-B_{1})=0$.
:::

::: {.proposition #unnamed-chunk-106}
$\mathcal{M}=\mathcal{B}(\mathbb{R})$.
:::

A continuación daremos un ejemplo clásico de conjunto no medible Lebesgue. La construcción supone el axioma de la elección.

Sean $x,y\in\mathbb{R}$, diremos que $x\sim y$ si y solo si $x-y$ es un número racional. Es claro que $\sim$ es una relación de equivalencia. Note que para todo $x\in\mathbb{R}$, existe $x_{0}\in(0,1)$ tal que $x\sim x_{0}$. Sea $P\subseteq (0,1)$, el conjunto que tiene exactamente un elemento de cada clase. Además, podemos asegurar que para todo $x\in(0,1)$, existe $x_{p}\in P$, tal que $x\sim x_{p}$. Esto es, existe un número racional $-1\leq r\leq 1$, tal que $x\in P+r$, donde $P+r=\{p+r: p\in P\}$, el conjunto de traslaciones de los elementos del conjunto $P$.
Ahora definamos el conjunto $$S=\bigcup_{r\in\mathbb{Q}\cap (0,1)} P+r.$$ 
Afirmamos que la unión que la anterior es una unión disjunta. Efectivamente, sean $r_{1},r_{2}\in \mathbb{Q}\cap (0,1)$ distintos. Supongamos que existe $x\in (P+r_{1})\cap (P+r_{2})$, entonces existen $p_{1}, p_{2}\in P$ tales que $x=p_{1}+r_{1}$ y $x=p_{2}+r_{2}$, luego $p_{1}-p_{2}=r_{2}-r_{1}\in\mathbb{Q}$, lo que implica que $p_{1}\sim p_{2}$, lo que contradice la definición de $P$, por lo tanto $S$ es una unión disjunta.
Ahora bien, se tiene que $(0,1)\subseteq S\subseteq (-1,2)$, por lo tanto $1=m((0,1))\leq m^{\ast}(S)\leq m((-1,2))=3$. Y por otro lado, como $m^{\ast}$ es invariante por traslaciones, se tiene que 
$$m^{\ast}(S)=\sum_{r\in\mathbb{Q}\cap (0,1)} m^{\ast}(P+r)=\sum_{r\in\mathbb{Q}\cap (0,1)} m^{\ast}(P).$$
Si suponemos que $P$ es medible Lebesgue, se tiene que $P+r$ es medible Lebesgue para todo $r\in\mathbb{Q}\cap(-1,1)$, por lo que $S$ sería medible Lebesgue y $m(S)=m^{\ast}(S)\geq 1$. Además, $$m^{\ast}(S)=\sum_{r\in\mathbb{Q}\cap (0,1)} m^{\ast}(P)\leq 3$$
por lo que $\sum_{r\in\mathbb{Q}\cap (0,1)} m^{\ast}(P)$ converge. Como $m^{\ast}(P)=m(P)$ es una constante no negativa en la suma, debe ser que $$\sum_{r\in\mathbb{Q}\cap (0,1)} m^{\ast}(P)=0.$$ Pero esto contradice que $m(S)\geq 1$. De donde se deduce que $P$ no es medible.

## La Medida de Stieltjes

::: {.definition #unnamed-chunk-107}
Una función $F:\mathbb{R}\longrightarrow\mathbb{R}$ es una *función de Stieltjes* si satisface:

(i.) $F$ es monótona creciente, es decir, si $x\leq Y$, entonces $F(x)\leq F(y)$.
(ii.) $F$ es continua a la derecha.
:::

::: {.example #unnamed-chunk-108}
La función *parte entera* es una función de Stieltjes.
:::

Las funciones de Stieltjes $F$ es una función de Stieltjes, entonces: 

(i.) $F$ tiene límite a la izquierda en todo punto.

(ii.) $F$ tiene solo discontinuidades de salto.

(iii.) El conjunto de puntos de discontinuidad, es numerable.


Sea $S$ la colección de intervalos del tipo $(a,b]$. Sea $F:\mathbb{R}\longrightarrow\mathbb{R}$ una función de Stieltjes. La función definida por: 
$$\mu_{F}:S\longrightarrow\overline{\mathbb{R}^{+}}: (a,b]=F(b)-F(a)$$ se conoce como *medida de Stieltje asociada a $F$*.

Esta función se puede extender a los borelianos, $\mathcal{B}(\mathbb{R})$. Damos un esquema de esta construcción. 

(1.) La función $\mu_{F}$, se puede extender a una función $\overset{\circ}{\mu_{F}}$ sobre el anillo generado por $S$, $\mathcal{R}(S)$, de forma análoga a como se extendió la función longitud.

(2.) Se demuestra que $\mathcal{R}(S)$ es $\sigma$-aditiva en $\mathbb{R}(S)$.

(3.) Se define una función análoga a la medida exterior $m^{\ast}$. Para esto, definimos para cada subconjunto $A\in\mathbb{R}$, el conjunto $$I(A)=\{(I_{n})_{n\geq 1}: I_{n}\in S \mbox{ y } A\subseteq \bigcup_{n\geq 1} I_{n}\}$$ 
	y se define 
	$$\overset{\ast}{\mu_{F}}(A)=\underset{(I_{n})_{n}\in I(A)}{inf}\sum_{n\geq 1}\overset{\circ}{\mu_{F}}(I_{n}).$$
	
(4.) Se demuestra que el conjunto $$\mathcal{M}_{F}=\{E\subseteq\mathbb{R}: \forall A\subseteq\mathbb{R} (\overset{\circ}{\mu_{F}}(A)=\overset{\circ}{\mu_{F}}(A\cap E)+\overset{\circ}{\mu_{F}}(A\cap E^{c}))\}$$ es una $\sigma$-álgebra y que $\overset{\circ}{\mu_{F}}\upharpoonright \mathcal{M}_{F}$ es una medida que coincide con $\mu_{F}$ en $S$.

Es importante notar que muchas medidas en $\mathbb{R}$, son medidas que provienen de una función de Stieljes. De hecho, se tiene que:

::: {.proposition #unnamed-chunk-109}
Sea $\mu: \mathcal{B}(\mathbb{R})\longrightarrow \overline{\mathbb{R}^{+}}$ una medida con la propiedad $\mu(A)\infty$ siempre que $A$ sea un conjunto acotado. Sea $F:\mathbb{R}\rightarrow \mathbb{R}$ definida por 
	$$F(t)=\left\lbrace \begin{array}{ll}
	\mu(0,t]&\mbox{ si } t>0,\\
	0&\mbox{ si } t=0,\\
	-\mu(t,0] &\mbox{ si } t<0.
	\end{array}\right. $$
	Entonces $F$ es una función de Stieltjes y se cumple que 
	$$\forall A\in\mathcal{B}(\mathbb{R})\mbox{, } \mu_{F}(A)=\mu(A)$$
:::

<!--chapter:end:030-La-medida-de-Lebesgue.Rmd-->

# FUNCIONES MEDIBLES

En este capítulo estudiaremos las funciones medibles y sus propiedades. Luego definiremos las funciones simples, útiles para definir más adelante la integral de Lebesgue, que para este tipo de funciones, se define de forma muy intuitiva. Además, estudiaremos cuando una función se puede aproximar por funciones simples.

## Conceptos básicos

::: {.definition #unnamed-chunk-110}
Sea $f:\mathbb{R}\longrightarrow\mathbb{R}$. Se dice que $f$ es *medible Borel* cuando para todo conjunto boreliano $B$, se tiene que $f^{-1}(B)$ es un conjunto boreliano. Es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{B}(\mathbb{R})$.
Cuando para todo conjunto boreliano $B$, $f^{-1}(B)$ es un conjunto medible Lebesgue, $f$ se dice *medible Lebesgue*. Es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{M}$.
Más generalmente, dado un espacio medible $(X,\mathcal{A})$. Una función $f:X\longrightarrow\mathbb{R}$ es una función $\mathcal{A}$-medible, cuando para cada conjunto boreliano $B$, $f^{-1}\in\mathcal{A}$; es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{A}$.

:::

Como $f^{-1}$ se comporta bien bajo complementación y uniones, en la definición anterior, basta verificar que un conjunto generador de la $\sigma$-álgebra de Borel, tiene imagenes inversas en la $\sigma$-álgebra del espacio dominio $X$ (en el caso del espacio $\mathbb{R}$, $\mathcal{B}(\mathbb{R})$ o $\mathcal{M}$). Para esto iniciamos con el siguiente lema.

::: {.lemma #unnamed-chunk-111}
Sea $\mathcal{C}$ una clase de subconjuntos que genera a $\mathcal{B}(\mathbb{R})$ y $f:(X,\mathcal{A})\longrightarrow\mathbb{R}$. Entonces, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{A}$ si y solo si $f^{-1}(\mathcal{C})\subseteq\mathcal{F}$.

:::

::: {.proposition #unnamed-chunk-112}
Sea $f: X\longrightarrow \mathbb{R}$. Las siguientes afirmaciones son equivalentes.

(i.) $f$ es $\mathcal{A}$-medible.

(ii.) Para todo $a,b\in\mathbb{R}$, $f^{-1}(I)\in\mathcal{A}$, con $I=(a,b)$.

(iii.) Para todo $p,q\in\mathbb{Q}$, $f^{-1}(I)\in\mathcal{A}$, con $I=(p,q)$.

(iv.) Para todo $a\in\mathbb{R}$, $f^{-1}(I)\in\mathcal{A}$, con $I=<a,\infty)$.

(v.) Para todo conjunto abierto $A\subseteq\mathbb{R}$, $f^{-1}(A)\in\mathcal{A}$.

(vi.) Para todo conjunto cerrado $C\subseteq\mathbb{R}$, $f^{-1}(C)\in\mathcal{A}$.

:::
::: {.proof}
Basta notar que las familias de conjuntos abiertos, de conjuntos cerrados, de intervalos de la forma $(a,b)$, con $a,b\in\mathbb{R}$, de intervalos de la forma $(p,q)$, con $p,q\in\mathbb{Q}$ y de los intervalos de la forma $<a,\infty)$, con $a\in\mathbb{R}$, generan la $\sigma$-álgebra de Borel.

:::

::: {.example #unnamed-chunk-114}
Si $(X,\mathcal{A})$ es un espacio medible y $A\in\mathcal{A}$ entonces la función indicatriz $\chi_{A}$, es una función $\mathcal{A}$-medible.

:::

::: {.example #unnamed-chunk-115}
Las funciones continuas son medibles Borel:
Sea $X$ un espacio topológico y $f:X\longrightarrow \mathbb{R}$ una función continua. Entonces $f$ es medible Borel.

:::

::: {.example #unnamed-chunk-116}
Las funciones constantes son medibles: Si $(X,\mathcal{A})$ es un espacio medible y $\lambda\in\mathbb{R}$. La función $f:X\longrightarrow \mathbb{R}:x\mapsto \lambda$ es una función $\mathcal{A}$-medible.

:::

::: {.example #unnamed-chunk-117}
Las variables aleatorias son funciones medibles:
Si $(\omega,\mathcal{A}, P)$ es un espacio de probabilidad y $X:\omega\longrightarrow\mathbb{R}$ una variable aleatoria. Se tiene que $X$ es una función $\mathcal{A}$-medible.

:::

Podemos considerar funciones que tomen valores infinitos, esto es $f:X\longrightarrow \overline{\mathbb{R}}$. Y para estas funciones, la definición de medibilidad sería así: $f$ es una *función $\mathcal{A}$-medible* si y solo si:

(i.) $f^{-1}(B)\in\mathcal{A}$, para todo $B\in\mathcal{B}(\mathbb{R})$,

(	ii.) $f^{-1}(\infty)\in\mathcal{A}$ y

(iii.) $f^{-1}(-\infty)\in\mathcal{A}$.


::: {.proposition #unnamed-chunk-118}
Sean $f,g: X\longrightarrow \mathbb{R}$ funciones $\mathcal{A}$-medibles. Entonces:

(i.) $f+g$ es una función $\mathcal{A}$-medible.

(ii.) Para todo $k\in\mathbb{R}$, $kf$ es una función $\mathcal{A}$-medible.

(iii.) $f^{2}$ es una función $\mathcal{A}$-medible.

(iv.) $fg$ es una función $\mathcal{A}$-medible.

(v.) $\frac{1}{f}$ es una función $\mathcal{A}$-medible, tomando $\frac{1}{f}=\infty$ si $f(x)=0$.

(vi.) La función máximo entre $f$ y $g$, $f\vee g$ y la función mínimo entre $f$ y $g$, $f\wedge g$ son funciones medibles.

:::
::: {.proof}
Sean $f,g: X\longrightarrow \mathbb{R}$ funciones $\mathcal{A}$-medibles.

(i.) Note que $$\begin{array}{rl}
		x\in(f+g)^{-1}(-\infty,c)\Leftrightarrow&(f+g)(x)<c\\
		\Leftrightarrow&f(x)+g(x)<c\\
		\Leftrightarrow&f(x)<c-g(x)
		\end{array}$$
		Como $\mathbb{Q}$ es denso en $\mathbb{R}$, se tiene que 
		$$\begin{array}{rl}
		x\in(f+g)^{-1}(-\infty,c)\Leftrightarrow&\exists r\in\mathbb{Q}(f(x)<r<c-g(x))\\
		\Leftrightarrow&\exists r\in\mathbb{Q}(f(x)<r \mbox{ y } g(x)<c-r)\\
		\Leftrightarrow&\exists r\in\mathbb{Q}(x\in f^{-1}(-\infty,r)\cap g^{-1}(-\infty,c-r))\\
		\Leftrightarrow& x\in \bigcup_{r\in\mathbb{Q}} f^{-1}(-\infty,r)\cap g^{-1}(-\infty,c-r)
		\end{array}$$
		Como $f$ y $g$ son $\mathcal{A}$-medibles, $f^{-1}(-\infty,r), g^{-1}(-\infty,c-r)\in\mathcal{A}$ y $\mathcal{A}$ es cerrado bajo uniones numerables e intersecciones, se tiene que $$x\in(f+g)^{-1}(-\infty,c)\Leftrightarrow\bigcup_{r\in\mathbb{Q}} f^{-1}(-\infty,r)\cap g^{-1}(-\infty,c-r)$$
		  
(ii.) Sea $k\in\mathbb{R}$. Si $k=0$, $kf\equiv 0$ de donde se sigue el resultado. Supongamos que $k\neq 0$. Note que $kf^{-1}(a,b)=f^{-1}(\frac{a}{k}, \infty)\cap f^{-1}(-\infty, \frac{b}{k})$. Como $f$ es $\mathcal{A}$-medible, $kf^{-1}(a,b)=f^{-1}(\frac{a}{k}, \infty)\cap f^{-1}(-\infty, \frac{b}{k})\in\mathcal{A}$.
		
(iii.) Sea $a\in\mathbb{R}$. Si $a\geq 0$, entonces $$\begin{array}{rl}
	 	(f^{2})^{-1}(a,\infty)=&\{x\in X: f^{2}(x)>a\}\\
	 	=&\{x\in X: f(x)>\sqrt{a}\}\\
	 	=&f^{-1}(\sqrt{a},\infty)
	 	\end{array}$$
	 	Si $a<0$, entonces $$\begin{array}{rl}
	 	(f^{2})^{-1}(a,\infty)=&\{x\in X: f^{2}(x)>a\}\\
	 	=&\{x\in X: f(x)<\sqrt{-a}\}\\
	 	=&f^{-1}(-\infty,\sqrt{-a})
	 	\end{array}$$
	 	en cualquier caso, $(f^{2})^{-1}(a,\infty)\in\mathcal{A}$.
		
(iv.) Note que $fg=\frac{(f+g)^{2}-f^{2}-g^{2}}{2}$. De $(i.)$ y $(iii.)$ se sigue el resultado.
		
(v.) Basta notar que $(\frac{1}{f})^{-1}(a,\infty)=f^{-1}(-\infty,\frac{1}{a})$, cuando $a\neq 0$ y $(\frac{1}{f})^{-1}(\infty)=f^{-1}(\{0\})$.
		
(vi.) Solo basta notar que $$(f\vee g)(x)<c\Leftrightarrow f(x)<c \wedge g(x)<c$$ y $$(f\wedge g)(x)<c\Leftrightarrow f(x)<c \vee g(x)<c.$$

:::

Dada una función $f:X\longrightarrow\mathbb{R}$, se define:

(i.) *la parte positiva de $f$* como la función $f^{+}(x)=f(x)\vee 0=\max\{f(x),0\}$ y

(ii.) *la parte negativa de $f$* como la función $f^{-}(x)=-(f(x)\wedge 0)=-\min\{f(x),0\}$.


::: {.remark}
Note que las funciones $f^{+}$ y $f^{-}$ son funciones no negativas. También se tiene que $f^{-}=-f\vee 0$.

:::

::: {.proposition #unnamed-chunk-121}
Sean $f,g:X\longrightarrow\overline{\mathbb{R}}$ funciones $\mathcal{A}$-medibles, entonces $f\vee g$ y $f\wedge g$ son funciones $\mathcal{A}$-medibles.

:::
::: {.proof}
Como $\{x\in X:(f\vee g)(x)< r \}=\{x\in X:f(x)< r \}\cap\{x\in X:g(x)< r \}$ y $\{x\in X:(f\wedge g)(x)> r \}=\{x\in X:f(x)> r \}\cup\{x\in X:g(x)> r \}$, para cualquier $r\in\mathbb{R}$, de las hipótesis se sigue el resultado.

:::

::: {.remark}
Por la proposión anterior, se sigue que:

(i.) Las funciones positivas y negativas, son funciones medibles, siempre que $f$ lo sea.
(ii) Como $|f|=f^{+}+f^{-}$, se tiene que $|f|$ es medible, siempre que $f$ lo sea.

:::

::: {.proposition #unnamed-chunk-124}
Sean $f,g:X\longrightarrow\overline{\mathbb{R}}$ funciones $\mathcal{A}$-medibles. Entonces $\forall\epsilon>0$ se tiene que $\{x\in X: |f(x)-g(x)|>\epsilon \}\in\mathcal{A}$.

:::
::: {.proof}
Como $|f-g|$ es una función $\mathcal{A}$-medible y el intervalo $(\epsilon,\infty)$ es un conjunto Boreliano, se tiene el resultado.

:::

## Aproximaciones de funciones medibles

Recuerde que una función escalera es una combinación lineal de funciones indicadoras de intervalos $\mathbb{I}_{k}$
$$f=\sum_{k=1}^{n} C_{k}\chi_{\mathbb{I}_{k}}.$$
Si $\mathcal{A}$ es una $\sigma$-álgebra de $\mathbb{R}$ que contiene a los intervalos, entonces las funciones escaleras son funciones $\mathcal{A}$-medibles.

::: {.definition #unnamed-chunk-126}
Sea $(X,\mathcal{A})$ un espacio medible. Una función $f:X\longrightarrow\mathbb{R}$ de la forma  $$f(x)=\sum_{k=1}^{n} C_{k}\chi_{A_{k}}(x) \mbox{ donde } x_{k}\in\mathbb{R} \mbox{ y }A_{k}\in\mathcal{A}$$
es llamada *función $\mathcal{A}$-simple*. En el caso que la $\sigma$-álgebra sea la $\sigma$-álgebra de Borel, decimos que es una función simple, omitiendo la $\sigma$-álgebra.

:::

Es fácil ver que la suma y el producto de funciones $\mathcal{A}$-simples, son funciones $\mathcal{A}$-simples. Así como el producto de una función $\mathcal{A}$-simple por un escalar, resulta ser también una función $\mathcal{A}$-simple.

::: {.definition #unnamed-chunk-127}
Sea $(X,\mathcal{A},\mu)$ un espacio de medida y $f:X\longrightarrow \overline{R}$ diremos que $f$ cumple cierta propiedad $P$ *$\mu$-casi siempre* (abreviado $\mu$-c.s.) si y solo si $\{x\in X: f(x) \mbox{ no cumple } P \}\in\mathcal{A}$ y $\mu(\{x\in X: f(x) \mbox{ no cumple } P \})=0$. 

:::

También puede usarse la expresión *$P$ en casi todo punto*, aunque esta última no evidencia la referencia a la medida $\mu$, por lo que suele usarse cuando la medida es la de Borel o Lebesgue. Esto se abrevia $c.t.p$.

::: {.example #unnamed-chunk-128}
Sea $f=\chi_{\mathbb{R}-\mathbb{Q}}$. La propiedad *$f$ es constantemente igual a $1$* no es cierta. Pero si se cumple en casi todo punto, ya que $\{x\in \mathbb{R}: f(x)\neq 1 \}=\mathbb{Q}$.

:::

::: {.proposition #unnamed-chunk-129}
Sean $f,g:\mathbb{R}\longrightarrow\mathbb{R}$ funciones. Si $f$ es medible lebesgue y $g=f$ casi siempre, entonces $g$ es medible lebesgue.

:::
::: {.proof}
Sea $E=\{x\in X: f(x)=g(x)\}$. Sea $k\in\mathbb{R}$, 
	$$\begin{array}{rl}
	g^{-1}(k,\infty)=&\{x\in X: g(x)> k \}\\
	=&\{x\in E: g(x)> k \}\cup \{x\in E^{c}: g(x)> k \}
	\end{array}$$
	Como $g=f$ casi siempre, $m(\{x\in E: g(x)> k \})\leq m(E)=0$. Además $\{x\in E^{c}: g(x)> k \}=E^{c}\cap f^{-1}(k,\infty)\in\mathcal{M}$, ya que $E^{c}\in\mathcal{M}$. Luego, $$	g^{-1}(k,\infty)=\{x\in E: g(x)> k \}\cup \{x\in E^{c}: g(x)> k \}\in\mathcal{M}$$.

:::

::: {.remark}
En la proposición anterior, la hipótesis *$f$ es medible Lebesgue* es esencial. Si esta se cambia por *$f$ es medible Borel* no es cierta la proposición.

:::

El siguiente resultado propone que podemos apróximar una función medible no negativa, por una sucesión de funciones simples. Veremos la utilidad de este resultado mas adelante.

::: {.theorem #unnamed-chunk-132}
Sea $(X,\mathcal{A})$ un espacio medible y $f:X\longrightarrow\overline{\mathbb{R}}$ una función $\mathcal{A}$-medible no negativa ($f\geq 0$). Entonces, existe una sicesión creciente de funciones $\mathcal{F}$-simples, $\{f_{n} \}_{n\in\mathbb{N}}$ que converge puntualmente a $f$. Además, si $f$ es acotada, entonces $\{f_{n} \}_{n\in\mathbb{N}}$ converge uniformemente a $f$.

:::
::: {.proof}
Construiremos una sucesión creciente de funciones simples a partir de una función medible no negativa. Para cada $n\in\mathbb{N}$, consideraremos una partición del intervalo $[0,\infty)$ en el intervalo $[2^{n},\infty)$ y $2^{2n}$ intervalos que resultan de dividir el intervalo $[0,2^{n}]$ en  subintervalos de longitud $\frac{1}{2^{n}}$. A partir de estos intervalos definimos los conjuntos medibles siguientes
	$$\begin{array}{rl}
	A_{k,n}=&f^{-1}\left[\frac{k-1}{2^{n}},\frac{k}{2^{n}} \right] \mbox{ con } k=1,\cdots,2^{2n} \mbox{ y }\\
	A_{0,n}=&f^{-1}[2^{n},\infty)
	\end{array}$$
Como $f$ es una función $\mathcal{A}$-medible, se tiene que cada $A_{n,k}\in\mathcal{A}$, para todo $n\in\mathbb{N}$ y $k=0,1,\cdots,2^{2n}$. Además, note que la sucesión de conjuntos $\{A_{n,k} \}_{k}$, para cada $n\in\mathbb{N}$, es una partición del espacio $X$. Con estos conjuntos $\mathcal{A}$-medibles, definamos las funciones simples $f_{n}$, que constituirán la sucesión. Sea $$f_{n}=2^{n}\chi_{A_{0,n}}+\sum_{k=1}^{2^{2n}} \frac{k-1}{2^{n}} \chi_{A_{k,n}}.$$
Así definidas, cada $f_{n}$ es $\mathcal{A}$-medible. Además $0\leq f_{n}(x)\leq f(x)$. Veamos que la sucesión $\{f_{n} \}_{n}$ es creciente. Sea $x\in X$; dado $n\in\mathbb{N}$, existe $k\in\mathbb{N}$ tal que $x\in A_{k,n}$ o $x\in A_{0,n}$.

Caso 1: Si $x\in A_{k,n}$, $\frac{k-1}{2^{n}}\leq f(x)\leq \frac{k}{2^{n}}$. Luego, para $n+1$, se tiene que $$\frac{2(k-1)}{2^{n+1}}\leq f(x)\leq \frac{2k-1}{2^{n+1}} \mbox{ o } \frac{2k-1}{2^{n+1}}\leq f(x)\leq \frac{2k}{2^{n+1}}$$
  
Caso 2: Si $x\in A_{0,n}$, $f(x)=2^{n}$. Para $n+1$, $x\in A_{0,n+1}$ o $x\in A_{k,n+1}$ para algún $k\geq 2^{2n+1}+1$.

En cualquier caso, se sigue que $f_{n}(x)\leq f_{n+1}$. Ahora veamos que efectivamente hemos construído una sucesión que converge a $f$.\\
Si $f(x)=\infty$, $2^{n}<f(x)$ para todo $n\in\mathbb{N}$, luego $f_{n}(x)\rightarrow \infty$.\\
Si $f(x)<\infty$], existe $n_{0}\in\mathbb{N}$ tal que $f(x)<2^{n_{0}}$.  luego, para todo $n>n_{0}$ existe $k\in\{1,\cdots, 2^{2n}\}$ tal que $\frac{k-1}{2^{n}}\leq f(x)<\frac{k}{2^{n}}$ por lo tanto $0\leq f(x)-f_{n}(x)<\frac{1}{2^{n}}$, de donde se sigue que $f_{n}(x)\rightarrow f(x)$.
Por último, si $f$ es acotada, existe $N_{0}\in\mathbb{N}$ tal que $f(x)<2^{N_{0}}$ para todo $x\in X$, de donde se sigue que $f_{n}(x)\rightarrow f(x)$ uniformemente.

:::

Como toda función $f$ se escribe como $f=f^{+}-f^{-}$, del teorema anterior se tiene el siguiente resultado. 

::: {.corollary #unnamed-chunk-134}
Sea $f:(X,\mathcal{A})\longrightarrow (\mathbb{R},\mathcal{B}(\mathbb{R}))$ $\mathcal{A}$-medible. Entonces existe una sucesión de funciones simples $\{f_{n}\}_{n}$ tal que $f_{n}(x)\rightarrow f(x)$ para cada $x\in X$. Además, si $f$ es una función acotada, la convergencia es uniforme.

:::

Otro corolario del teorema es

::: {.corollary #unnamed-chunk-135}
Sea $f:(X,\mathcal{A})\longrightarrow (\mathbb{R},\mathcal{B}(\mathbb{R}))$ $\mathcal{A}$-medible y acotada. Entonces $\forall\epsilon>0$ existe una sucesión de funciones simples $\{f_{n}\}_{n}$ tal que $|f_{n}(x)-f(x)|$ para todo $x\in X$.

:::

Una aplicación de este teorema consiste en la aproximación de funciones medibles por funciones escaleras y por funciones continuas:

::: {.theorem #unnamed-chunk-136}
Sea $f$ una función medible Lebesgue (o medible Borel) definida en el intervalo $[a,b]$. Si $f$ es finita en casi todo punto, entonces para todo $\epsilon>0$, existe una función escalera $g$ y una función continua $h$ tales que $$|f-g|<\epsilon\mbox{ y } |f-h|<\epsilon$$ salvo en un conjunto de medida menor que $\epsilon$. Además, si existen $m, M\in\mathbb{R}$ tales que $m\leq f\leq M$, entonces $g$ y $h$ se pueden elegir acotadas por $m$ y $M$, es decir, $m\leq g,h\leq M$.

:::

<!--chapter:end:040-funciones-medibles.Rmd-->

# LA INTEGRAL DE LEBESGUE

En este capítulo definiremos la integral de Lebesgue para funciones medibles y función integrable. Lo haremos definiendo la integral de forma natural para las funciones mas sencillas (las funciones escalera y simples) hasta llegar a funciones mas generales. Luego mostraremos algunos resultados importantes de intercambio entre integral y límite así como teoremas de aproximaciones de funciones integrables por funciones simples y continuas. 

## Conceptos básicos

Para una función escalera no negativa $$f(x)=\sum_{i=1}^{n} k_{i} \chi_{I_{i}}, \mbox{ donde } I_{i} \mbox{ son intervalos y } k_{i}\geq 0\mbox{ escalares }$$ es de esperar que la integral sea la suma de las áreas de los rectángulos de base $l(I_{i})$ y alto $k_{i}$. Con esta misma idea es que definiremos la integral de Lebesgue para funciones simples. En este caso no tenemos necesariamente rectángulos, recuerde que las funciones simples son combinaciones lineales de indicatrices de conjuntos medibles. Por analogía, podemos considerar la medida de los conjuntos, que en el caso de ser intervalos, coincide con la longitud de estos.

::: {.definition #unnamed-chunk-137}
Sea $f:\mathbb{R}\longrightarrow\mathbb{R}^{+}$ una función simple no negativa, $$f=\sum_{i=1}^{n} k_{i}\chi_{A_{i}}\mbox{ con } A_{i}\in\mathcal{M} \mbox{ disjuntos dos a dos y } k_{i}\geq 0\mbox{ escalares }$$ 
definimos la *integral de Lebesgue* como
$$\int_{\mathbb{R}} f(x)dx=\sum_{i=1}^{n} k_{i}m(A_{i}).$$
También se denota $\int_{\mathbb{R}} f$.

:::

Note que la suma anterior siempre tiene sentido ya que $k_{i}\geq 0$ y $m(A_{i})\geq 0$. Cuando ocurra que $k_{i}=0$ y $m(A_{i})=\infty$, convenimos en que el producto $k_{i}m(A_{i})=0$.

Es importante notar que la integral esta bien definida. Si una función simple admite dos representaciones distintas, digamos $$f=\sum_{i=1}^{n} c_{i}\chi_{A_{i}}$$ y $$f=\sum_{ij=1}^{m} d_{j}\chi_{B_{j}}$$
donde $\{A_{i}\}$ y $\{B_{j}\}$ son dos familias de conjuntos medibles disjuntos dos a dos y donde $c_{i}$ y $d_{j}$ son esclares para cada $i$ y cada $j$. Entonces las sumas $$\sum_{i=1}^{n} c_{i}m(A_{i})=\sum_{j=1}^{m} d_{j}m(B_{j}).$$ En efecto, podemos suponer que $\bigcup E_{i}=\mathbb{R}=\bigcup_{j}F_{j}$. Así se tiene que 
$$\begin{array}{rl}
E_{i}=&\bigcup_{j=1}^{m} E_{i}\cap F_{j} \mbox{ para cada } i, \mbox{  y }\\
F_{j}=&\bigcup_{i=1}^{n} F_{j}\cap E_{i} \mbox{ para cada } j
\end{array}$$

Si $x\in E_{i}\cap F_{j}$, entonces $c_{i}=d_{j}$. Por lo tanto

$$\begin{array}{rl}
\sum_{i=1}^{n}c_{i}m(E_{i})=&\sum_{i=1}^{n}c_{i}m(\bigcup_{j=1}^{m} E_{i}\cap F_{j})\\
=&\sum_{i=1}^{n}\sum_{j=1}^{m}c_{i}m(E_{i}\cap F_{j})\\
=&\sum_{j=1}^{m}\sum_{i=1}^{n}d_{j}m(E_{i}\cap F_{j})\\
=&\sum_{j=1}^{m}d_{j}m(\bigcup_{i=1}^{n} E_{i}\cap F_{j})\\
=&\sum_{j=1}^{m}d_{j}m(F_{j})
\end{array}$$

::: {.remark}
Dado un conjunto medible $A$, se tiene que $\int_{\mathbb{R}} \chi_{A}=m(A)$.

La integral de la función indicadora de un intervalo es igual a la longitud del intervalo, esto es $\int_{\mathbb{R}} \chi_{[a,b]}=m([a,b])=l([a,b])=b-a$.\\
La integral de una función escalera $f=\sum_{i=1}^{n} c_{i}\chi_{I_{i}}$, es $\int_{\mathbb{R}} f=\sum_{i=1}^{n}c_{i}l([a,b])$

:::

::: {.definition #unnamed-chunk-139}
Diremos que una función simple no negativa $f$ es *integrable-Lebesgue* cuando $\int_{\mathbb{R}} f$ sea finita.

:::

::: {.example #unnamed-chunk-140}
La función indicatriz del conjunto de los racionales del intervalo $[0,1]$, es integrable-Lebesgue. Efectivamente, $$\int_{\mathbb{R}} \chi_{\mathbb{Q}\cap[0,1]}=m(\mathbb{Q}\cap[0,1])=0.$$
Como también lo es $\chi_{[0,1]\backslash\mathbb{Q}}$.

:::

::: {.example #unnamed-chunk-141}
La función $\chi_{\mathbb{R}}$ no es integrable-Lebesgue, ya que $m(\mathbb{R})=\infty$. Así como tampoco lo es $\chi_{[0,\infty)}$.

:::

Note que si $f$ es una función simple no negativa y $\lambda> 0$, entonces $\lambda f$ también lo es. En efecto, $\lambda \sum_{i=1}^{n} c_{i}\chi_{A_{i}}=\sum_{i=1}^{n} \lambda c_{i}\chi_{A_{i}}$. Por lo que es inmediato ver que $$\int_{\mathbb{R}} \lambda f=\lambda \int_{\mathbb{R}} f$$
Otra propiedad fácil de ver es que si $f$ y $g$ son una funciones simples no negativas, $f=\sum_{i=1}^{n} c_{i}\chi_{A_{i}}$ y $g=\sum_{j=1}^{m} d_{j}\chi_{B_{j}}$ entonces $$\int_{\mathbb{R}} f+g=\int_{\mathbb{R}} f+\int_{\mathbb{R}} g.$$ 
Para mostrar esto, basta notar que se puede considerar la familia disjunta $\{C_{ij}\}$ definida a partir de las familias disjuntas $\{A_{i}\}$ y $\{B_{j}\}$ como $C_{ij}=A_{i}\cap B_{j}$ y $C_{i0}=A_{i}\backslash\bigcup B_{j}$ y $C_{0j}=B_{j}\backslash\bigcup A_{i}$. Definimos los escalares $r_{ij}=c_{i}$ para $i=1,\cdots, n$ y $r_{0j}=0$, y $s_{ij}=d_{j}$ $s_{i0}=0$. Luego $f=\sum_{i=0}^{n}\sum_{j=0}^{m} r_{ij}\chi_{C_{ij}}$ y $g=\sum_{i=0}^{n}\sum_{j=0}^{m} s_{ij}\chi_{C_{ij}}$, por lo tanto 
$$\begin{array}{rl}
\int_{\mathbb{R}} f + \int_{\mathbb{R}} g=&\sum_{i=0}^{n}\sum_{j=0}^{m} r_{ij}m(C_{ij}) +\sum_{i=0}^{n}\sum_{j=0}^{m} s_{ij}m(C_{ij})\\
=&\sum_{i=0}^{n}\sum_{j=0}^{m} (r_{ij}+s_{ij})m(C_{ij})\\
=&\int_{\mathbb{R}} f+g
\end{array}$$
Esto demuestra lo siguiente

::: {.proposition #prop36}
Sean $f$ y $g$ funciones simples no negativas y $\lambda\in\mathbb{R}$ un escalar no negativo. Entonces 

(i.) $\int_{\mathbb{R}} \lambda f=\lambda\int_{\mathbb{R}} f$,

(ii.) $\int_{\mathbb{R}} (f+g)=\int_{\mathbb{R}} f + \int_{\mathbb{R}} g.$

:::

También se puede probar que la integral de Lebesgue tiene la propiedad de monotonía.

::: {.proposition #unnamed-chunk-142}
Sean $f$ y $g$ funciones no negativas, entonces

(i.) $\int_{\mathbb{R}} f\geq 0$,

(ii.) si $f\geq g$, entonces $\int_{\mathbb{R}} f\geq \int_{\mathbb{R}} g$.

:::
::: {.proof}
De la definición de integral de Lebesgue, se tiene directamente que $\int_{\mathbb{R}} f\geq 0$. Considerando $g-f$, se sigue el resultado ii.

:::

::: {.definition #unnamed-chunk-144}
Dados $f:\mathbb{R}\longrightarrow\mathbb{R}$ una función simple no negativa y un conjunto medible $A\in\mathbb{M}$, definimos \textit{la integral de Lebesgue de $f$ sobre $A$} como sigue:
	$$\int_{A} f=\int_{\mathbb{R}} f \chi_{A}.$$ 

:::

::: {.proposition #unnamed-chunk-145}
Sea $f:\mathbb{R}\longrightarrow\mathbb{R}$ una función simple no negativa, se tiene $$\int_{A} f\leq \int_{\mathbb{R}} f.$$

:::
::: {.proof}
Basta notar que $f \chi_{A}\leq f$.

:::

En lugar de escribir $\int_{<a,b>} f$, cuando $<a,b>$ es un intervalo, escribiremos $\int_{a}^{b} f$.

Recuerde que para una función medible Lebesgue y no negativa existe una sucesión creciente $\{f_{n}\}_{n}$ de funciones simples no negativas tales que $\lim\limits_{n} f_{n}(x)=f(x)$ (este límite es puntual en casi todo punto y puede valer $+\infty$). De este hecho definiremos la integral de Lebesgue de funciones medibles no negativas.

::: {.definition #unnamed-chunk-147}
Dadas una función medible no negativa $f$ y una sucesión creciente de funciones simples no negativas que la aproximan, esto es, $\lim\limits_{n} f_{n}(x)=f(x)$. La *integral de Lebesgue de la función $f$* es
	$$\int_{\mathbb{R}} f=\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::

También se denota la integral de Lebesgue con $\int_{\mathbb{R}} f(x)d(x)$ o $\int_{\mathbb{R}} f dm$.

::: {.remark}
Se puede probar que si $\{g_{n}\}$ es otra sucesión creciente de funciones simples no negativas, tal que $\lim\limits_{n} g_{n}(x)=f(x)$ (puntual en casi todo punto) entonces $\lim\limits_{n\to\infty} \int_{\mathbb{R}} g_{n}=\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}$.

:::

::: {.proposition #unnamed-chunk-149}
Si $f:\mathbb{R}\longrightarrow \overline{\mathbb{R}}$ es medible Lebesgue no negativa, entonces
	$$\int_{\mathbb{R}} f=\sup_{\substack{\phi\mbox{ simple }\\0\leq\phi\leq f}} \int_{\mathbb{R}} \phi.$$

:::

Es sencillo ver que la integral de Lebesgue de una función medible no negativa, es lineal. Esto se sigue de la linealidad del límite y de la proposición \@ref(thm:prop36). De igual forma se puede probar que la integral de Lebesgue es monótona.

::: {.proposition #unnamed-chunk-150}
Sean $f, g:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue no negativas. Sea $\lambda\geq 0$ un escalar, entonces 

(i.) $\int_{\mathbb{R}} \lambda f + g=\lambda\int_{\mathbb{R}} f + \int_{\mathbb{R}} g$, y 
(ii.) Si $f\leq g$, entonces $\int_{\mathbb{R}} f\leq \int_{\mathbb{R}} g$.

:::

::: {.definition #unnamed-chunk-151}
Decimos que una función $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue no negativa, es *integrable Lebesgue en $\mathbb{R}$* cuando $\int_{\mathbb{R}} f$ es finita. 

:::

::: {.proposition #unnamed-chunk-152}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue no negativa. Si $f$ es integrable Lebesgue en $\mathbb{R}$, entonces $f$ es finita en casi todo punto.

:::
::: {.proof}
Sea $A=\{x\in\mathbb{R}: f(x)=+\infty \}$. Para cualquier $n\in\mathbb{N}$, se tiene que $f(x)\geq n$ siempre que $x\in A$. Entonces,	$$n m(A)=n\int_{\mathbb{R}} \chi_{A}=\int_{\mathbb{R}} n\chi_{A}\leq\int_{\mathbb{R}} f.$$
	De donde se tiene que 
	$$0\leq m(A)\leq\frac{1}{n}\int_{\mathbb{R}} f$$
	para todo $n\in\mathbb{R}$. Por lo tanto se tiene que $m(A)=0$.

:::

::: {.definition #unnamed-chunk-154}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue no negativa y sea $A\in\mathcal{M}$ un conjunto medible Lebesgue. Definimos *la integral de Lebesgue de $f$ en $A$* como $$\int_{A} f=\int_{\mathbb{R}} f \chi_{A}.$$
Y decimos que \textit{$f$ es integrable en $A$} cuando $\int_{A} f$ es finita.

:::

::: {.remark}
Se puede demostrar que si $f$ es una función medible Lebesgue no negativa, entonces $\int_{A} f\leq \int_{\mathbb{R}} f$.

:::

::: {.proposition #unnamed-chunk-156}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue no negativa. Si $A\in\mathcal{M}$ es un conjunto de medida nula, entonces $\int_{A} f=0$. 

:::

Cuando $f$ es una función simple no negativa, el resultado se sigue inmediatamente. El caso general, se sigue de la definición de integral.

::: {.lemma #unnamed-chunk-157}
Si $\{f_{n}\}$ es una sucesión creciente de funciones simples no negativas y $f=\lim\limits_{n\to\infty} f_{n}\geq g$, donde $g$ es una función simple no negativa. Entonces $$\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}\geq g.$$

:::
::: {.proof}
Como $\{f_{n}\}$ tiende puntualmente a $f$, se tiene que para todo $\epsilon> 0$ y para todo $x\in X$ existe $N(\epsilon, x)$ tal que si $n>N(\epsilon,x)$, entonces $f_{n}(x)>g(x)-\epsilon$. Así, considerando $A_{n}=\{x: f_{n}(x)>g(x)-\epsilon \}$, se tiene que para todo $\epsilon>0$, $\{A_{n}\}\uparrow\mathbb{R}$. Supongamos que $g(x)=\sum_{i=1}^{k} c_{i} \chi_{E_{i}}$. En el caso que $\int_{\mathbb{R}} g=\infty$, existe $i$ tal que $c_{i}> 0$ y $m(E_{i})=\infty$. Sea $0<\epsilon<c_{i}$, entonces $A_{n}\cap E_{i}\uparrow E_{i}$ por lo tanto $m(A_{n}\cap E_{i})\uparrow m(E_{i})=\infty$. Por monotonía $\int_{\mathbb{R}} f_{n}\geq \int_{\mathbb{R}} f_{n}\chi_{A_{n}\cap E_{i}}\geq \int_{\mathbb{R}} (c_{i}-\epsilon)m(A_{n}\cap E_{i})\to\infty$ cuando $n\to\infty$.
Si $\int_{\mathbb{R}} g<\infty$, el conjunto $A=\{x\in X: g(x)> 0\}=\bigcup_{c_{i}>0} E_{i}$, tiene medida finita, es decir, $m(A)<\infty$. Además $A_{n}\cap A\uparrow A$, por lo tanto $m(A_{n}\cap A)\uparrow m(A)$. Para todo $i$ se tiene que $E_{i}\cap A_{i}\cap A\uparrow E_{i}A$ por lo tanto $m(E_{i}\cap A_{i}\cap A)\uparrow m(E_{i}\cap A)$. Sea $0<\epsilon<\min_{c_{i}>0} c_{i}$, así $g-\epsilon>0$. Por monotonía de la integral, 
$$\begin{array}{rl}
	\int_{\mathbb{R}} f_{n}\geq&\int_{\mathbb{R}} f_{n}\chi_{A_{n}\cap A}\\
	\geq&\int_{\mathbb{R}} (g-\epsilon)\chi_{A_{n}\cap A}\\
	=&\int_{\mathbb{R}} g\chi_{A_{n}\cap A}-\epsilon\int_{\mathbb{R}} \chi_{A_{n}\cap A}\\
	=&\int_{\mathbb{R}} g\chi_{A_{n}\cap A}-\epsilon m(A_{n}\cap A)\\
	\geq&\int_{\mathbb{R}} g\chi_{A_{n}\cap A}-\epsilon m(A)\\
	=&\sum_{i=1}^{k} c_{i}m(A_{n}\cap A\cap E_{i}) -\epsilon m(A)
\end{array}$$
Entonces, cuando $n\to\infty$, se tiene que $$\int_{\mathbb{R}} f_{n}\rightarrow\sum_{i=1}^{k} c_{i}m(A\cap E_{i}) -\epsilon m(A)=\int_{\mathbb{R}} g\chi_{A} -\epsilon m(A)=\int_{\mathbb{R}} g -\epsilon m(A)$$ por lo tanto, $\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}\geq \int_{\mathbb{R}} g$.

:::

La integral de Lebesgue está bien definida. Sea $f$ una función medible Lebesgue no negativa. Supongamos que $f$ se aproxima por dos sucesiones crecientes de funciones simples no negativas, esto es, $\{f_{n}\}_{n}\uparrow f$ y $\{g_{n}\}_{n}\uparrow f$. Tenemos entonces que para cada $m$ fijo, $\lim\limits_{n\to\infty} f_{n}\geq g_{m}$. Por el lema anterior, 
$$\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}\geq \int_{\mathbb{R}} g_{m} \forall m\in\mathbb{N}$$
por lo tanto $$\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}\geq\lim\limits_{m\to\infty} \int_{\mathbb{R}} g_{m}.$$
De forma análoga se demuestra la desigualdad contraria
$$\lim\limits_{m\to\infty} \int_{\mathbb{R}} g_{m}\geq\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}$$.

Para concluír con esta sección, presentaremos la siguiente propiedad de la integral de Lebesgue:

::: {.proposition #unnamed-chunk-159}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. $f$ es integrable Lebesgue si y solo si $|f|$ es integrable Lebesgue. Además, $$|\int_{\mathbb{R}} f|\leq \int_{\mathbb{R}} |f|.$$

:::
::: {.proof}
Por la linealidad de la integral y como $f=f^{+}-f^{-}$, se tiene que $f$ es integrable Lebesgue si y solo si $f^{+}$ y $f^{-}$ lo son.
Como $|f|=f^{+}+f^{-}$, se tiene que $|f|$ es integrable Lebesgue si y solo si $f^{+}$ y $f^{-}$ lo son. De donde se sigue que $f$ es integrable Lebesgue si y solo si $|f|$ es integrable Lebesgue.
Además, $$\left| \int_{\mathbb{R}} f\right| =\left| \int_{\mathbb{R}} f^{+} - \int_{\mathbb{R}} f^{-}\right| \leq \left| \int_{\mathbb{R}} f^{+}\right| + \left| \int_{\mathbb{R}} f^{-}\right|=\int_{\mathbb{R}} f^{+} + \int_{\mathbb{R}} f^{-}=\int_{\mathbb{R}} |f|$$

:::

## Intercambio de límites con la integral

Es importante notar que no siempre conmutan la integral y el límite, como lo muestran los siguientes ejemplos.

::: {.example #unnamed-chunk-161}
Sea $f_{n}=n\chi(0,\frac{1}{n})$, para cada $n\in\mathbb{N}$. Es claro que $f_{n}\rightarrow 0$   cuando $n\to\infty$. Por lo tanto $\int_{\mathbb{R}} \lim\limits_{n\to\infty} f_{n}=0$. Pero $\int_{\mathbb{R}} f_{n}=1$ por lo que $\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}=1$.

:::

En el ejemplo anterior, la convergencia no es uniforme y la sucesión no es monótona. Veamos un ejemplo donde la convergencia si es uniforme.

::: {.example #unnamed-chunk-162}
Sea $f_{n}=\frac{1}{n}\chi[0,n]$, para cada $n\in\mathbb{N}$. En este caso $f_{n}\rightarrow 0$   cuando $n\to\infty$. Por lo tanto $\int_{\mathbb{R}} \lim\limits_{n\to\infty} f_{n}=0$. Pero $\int_{\mathbb{R}} f_{n}=1$ por lo que $\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}=1$.

:::

Presentaremos a continuación el *teorema de convergencia monótona* o *teorema de Beppo-Levy*, el cual muestra condiciones para el intercambio de integral y límite.

::: {.theorem #BeppoLevy name="Beppo-Levy"}
Sea $\{f_{n}\}$ una sucesión creciente de funciones medibles Lebesgue no negativas, $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$. Entonces
	$$\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}=\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}.$$

:::
::: {.proof}
Sea $f(x)=\lim\limits_{n\to\infty} f_{n}(x)$, el límite puntual en casi todo punto. Como cada $f_{n}$ es una función medible Lebesgue y no negativa, para cada $n\in\mathbb{N}$, existe una sucesión creciente de funciones simples $\{f^{n}_{k}\}_{k}$ que converge puntualmente a $f_{n}$, es decir, $\lim\limits_{k\to\infty} f^{n}_{k}=f_{n}$. Tenemos esta situación
$$\begin{array}{lllll}
  f^{1}_{1}\leq& f{1}^{2}\leq&\cdots&\rightarrow& f_{1}\mbox{ cuando } n=1\\
	f^{2}_{1}\leq& f^{2}_{2}\leq&\cdots&\rightarrow& f_{2}\mbox{ cuando } n=2\\
	\vdots&&&&\\
	f^{n}_{1}\leq& f^{n}_{2}\leq&\cdots&\rightarrow& f_{n}\mbox{ para } n\\
	\vdots&&&&\downarrow\\
	&&&&f	
\end{array}$$
Definimos la sucesión $g_{k}=\max\limits_{\substack{i\leq k\\ j\leq k}} f^{i}_{j}=\max\limits_{n\leq k} f^{n}_{k}$. Note que esta sucesión es creciente, por lo que es una sucesión que converge puntualmente. Además, se tiene que $f^{n}_{k}\leq g_{k}\leq f$ para todo $k$ y para todo $n\leq k$. Haciendo $k$ tender a $\infty$, se tiene que $f_{n}\leq \lim\limits_{k\to\infty} g_{k}\leq f$. Y si ahora $n$ tiende a $\infty$, se tiene que $f\leq \lim\limits_{k\to\infty} g_{k}\leq f$, por lo tanto
	$$\lim\limits_{k\to\infty} g_{k}=f \mbox{ puntualmente}.$$
Como $\{g:{k}\}_{k}$ es una sucesión de funciones simples que aproxima a la función $f$, por definición de integral de Lebesgue, se tiene que $$\int_{\mathbb{R}} f =\lim\limits_{k\to\infty}\int_{\mathbb{R}} g_{k}.$$
Como $f^{n}_{k}\leq g_{k}\leq f_{k}$, se tiene que 
$$\int_{\mathbb{R}}f^{n}_{k}\leq\int_{\mathbb{R}} g_{k}\leq\int_{\mathbb{R}} f_{k}$$
si $k$ tiende a $\infty$,
$$\int_{\mathbb{R}}f_{n}\leq\int_{\mathbb{R}} f\leq\lim\limits_{k\to\infty}\int_{\mathbb{R}} f_{k}$$
si $n$ tiende a $\infty$, entonces
$$\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}\leq\int_{\mathbb{R}} f\leq\lim\limits_{k\to\infty}\int_{\mathbb{R}} f_{k}$$
de donde se sigue que
$$\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}=\int_{\mathbb{R}} f.$$

:::

En este teorema es fundamental la hipótesis de que $\{f_{n}\}_{n}$ es una sucesión creciente, tal como lo muestra el siguiente ejemplo.

::: {.example #unnamed-chunk-164}
Sea $f_{n}=\chi_{[n,\infty)}$. $f_{n}$ tiende a $0$ puntualmente y es una sucesión decreciente. Para cada $n$, $\int_{\mathbb{R}} f_{n}=m([n,\infty))=\infty$ por lo tanto, $\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}=\infty$ pero $\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}=0$.

:::

::: {.remark}
Bajo las hipótesis del teorema de Beppo-Levy, se puede deducir lo siguiente:

(1.) Si $f_{n}$ es integrable Lebesgue para cada $n$ y $\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}$ existe y es finito; entonces $f$ es integrable Lebesgue y $\int_{\mathbb{R}} f=\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}$.

(2.) Si $f$ es integrable Lebesgue, entonces cada $f_{n}$ lo es. Además, $\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}<\infty$.

(3.) Si $f$ no es integrable Lebesgue, entonces se tiene alguna de las dos siguientes afirmaciones:

(a) existe $N$ tal que $f_{N}$ no es integrable Lebesgue, por lo tanto, tampoco $f_{n}$ para todo $n\geq N$, o

(b) todas las $f_{n}$ son integrables Lebesgue, pero $\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}=\infty$.
		
:::

Dada una sucesión de funciones medibles Lebesgue no negativas, $\{f_{n}\}_{n}$,considereando la sucesión de sumas parciales 
$$\sum_{n=1}^{k} f_{n}$$ se tiene que $$\int_{\mathbb{R}} \sum_{n=1}^{\infty}=\sum_{n=1}^{\infty}\int_{\mathbb{R}} f_{n}.$$
Esto demuestra el siguiente corolario

::: {.corollary #unnamed-chunk-166}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles Lebesgue no negativas, $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$. Sea $f(x)=\sum_{n=1}^{\infty} f_{n}(x)$. Entonces $\int_{\mathbb{R}}f=\sum_{n=1}^{\infty}\int_{\mathbb{R}} f_{n}$.

:::

::: {.lemma #unnamed-chunk-167 name="Fatou"}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles Lebesgue no negativas, $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$. Entonces
$$\int_{\mathbb{R}}\liminf_{n\to\infty} f_{n}\leq \liminf_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::
::: {.proof}
Para cada $n\in\mathbb{N}$, sea $g_{n}=\inf\limits_{k\geq n} f_{k}$. Entonces para cada $n$, $0\geq g_{n}\geq f_{n}$, $\{g_{n}\}_{n}$ es una sucesión creciente de funciones medibles Lebesgue y $\lim\limits_{n\to\infty} g_{n}=\liminf\limits_{n\to\infty} f_{n}$. Por el teorema de Beppo-Levy @ref{thm:BeppoLevy} (convergencia monótona) se tiene que
$$\int_{\mathbb{R}} \liminf\limits_{n\to\infty} f_{n}=\int_{\mathbb{R}} \lim\limits_{n\to\infty} g_{n}=\lim\limits_{n\to\infty}\int_{\mathbb{R}} g_{n}=\liminf\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}.$$

:::

La desigualdad del lema de Fatou puede, en algunos casos, ser estricta tal como lo muestra el siguiente ejemplo.

::: {.example #unnamed-chunk-169}
Consideremos la siguiente sucesión, para cada $n$, sea $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$, definida así
$$f_{n}(x)=\left\lbrace \begin{array}{ll}
	4n^{2}x&\mbox{ si } 0\leq x\leq\frac{1}{2n}\\
	-4n^{2}x+4n&\mbox{ si } \frac{1}{2n}< x\leq\frac{1}{n}\\
	0&\mbox{ en otro caso}
\end{array}\right. $$
Para la sucesión $\{f_{n}\}$, se tiene que $\liminf\limits_{n\to\infty} f_{n}=\lim\limits_{n\to\infty} f_{n}=0$ en casi todo punto, por lo tanto, $\int_{\mathbb{R}}\liminf\limits_{n\to\infty} f_{n}=0$. Pero $\int_{\mathbb{R}} f_{n}=1$, por lo tanto $\liminf\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}=1$.

:::

Hasta ahora hemos definido la integral de Lebesgue para funciones simples (y funciones escalera) de la forma mas natural, y para funciones medibles no negativas, vía la aproximaciónn por funciones simples, echando mano del teorema de aproximación. Ahora definamos la integral de Lebesgue para una función medible cualquiera.

::: {.definition #unnamed-chunk-170}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. Decimos que *$f$ es integrable Lebesgue en $\mathbb{R}$* si y solo si $f^{+}$ y $f^{-}$ son integrables Lebesgue en $\mathbb{R}$ y definimos 
$$\int_{\mathbb{R}} f=\int_{\mathbb{R}} f^{+}-\int_{\mathbb{R}} f^{-}.$$
Si $A\in\mathcal{M}$, decimos que \textit{$f$ es integrable Lebesgue en $A$} si $f \chi_{A}$ es integrable Lebesgue en $\mathbb{R}$ y definimos 
$$\int_{\mathbb{A}} f=\int_{\mathbb{R}} f \chi_{A}.$$

:::

Ya se han demostrado varias propiedades de la integral de Lebesgue para funciones medibles no negativas. Es fácil, a partir de las propiedades ya demostradas, ver que 

::: {.proposition #unnamed-chunk-171}
Sean $f,g:\mathbb{R}\longleftrightarrow\overline{\mathbb{R}}$ funciones integrables Lebesgue en $\mathbb{R}$ y $\lambda\in\mathbb{R}$, entonces:

(i.) $\lambda f$ es integrable Lebesgue en $\mathbb{R}$ y $\int_{\mathbb{R}} \lambda f=\lambda\int_{\mathbb{R}} f$,
		
(ii.) $f+g$ es integrable Lebesgue en $\mathbb{R}$ y $\int_{\mathbb{R}} f+g=\int_{\mathbb{R}} f+\int_{\mathbb{R}} g$,

(iii.) si $f\geq 0$ c.s. Entonces, $\int_{\mathbb{\mathbb{R}}} f\geq 0$,

(iv.) si $f\leq g$ c.s. Entonces, $\int_{\mathbb{\mathbb{R}}} f\leq \int_{\mathbb{\mathbb{R}}} g$.

:::
::: {.proof}
Las parte $i$, $iii$ y $iv$ siguen derectamente de las propiedades de la integral de Lebesgue para funciones no negativas. Para la parte $ii$ basta notar que $f^{+}=\frac{|f|+f}{2}$, de este modo
	$$(f+g)^{+}\geq f^{+} +g^{+},$$
como $f^{-}=(-f)^{+}$, de forma análoga a la anterior,
$$(f+g)^{-}\geq f^{-} +g^{-}.$$
De donde se concluye que $f+g$ es integrable Lebesgue, siempre que $f$ y $g$ lo sean.
Ahora bien, como $f+g=f^{+}-f^{-}+g^{+}-g^{-}$ y $f+g=(f+g)^{+}-(f+g)^{-}$, se tiene que 
$$f^{+}+g^{+}+(f+g)^{-}=(f+g)^{+}+f^{-}+g^{-}$$
integrando, 
$$\int_{\mathbb{R}} f^{+}+g^{+}+(f+g)^{-}=\int_{\mathbb{R}} (f+g)^{+}+f^{-}+g^{-}$$
usando la linealidad de la integral de Lebesgue para funciones no negativas, se tiene que
$$\begin{array}{rl}
  \int_{\mathbb{R}} (f+g)^{+}+\int_{\mathbb{R}}f^{-}+\int_{\mathbb{R}} g^{-}=&\int_{\mathbb{R}} (f+g)^{-}+\int_{\mathbb{R}} f^{+}+\int_{\mathbb{R}}g^{+}\Leftrightarrow\\
	\int_{\mathbb{R}} (f+g)^{+}-\int_{\mathbb{R}}(f+g)^{-}=&\int_{\mathbb{R}} f^{+}-\int_{\mathbb{R}} f^{-}+\int_{\mathbb{R}}g^{+}-\int_{\mathbb{R}}g^{-}\\
	=&\int_{\mathbb{R}} f + \int_{\mathbb{R}}g.
\end{array}$$

:::

De las propiedades anteriores se siguen los siguientes resultados. Los detalle de las demostraciones se dejan al lector.

::: {.proposition #unnamed-chunk-173}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Se tiene que $f$ es integrable Lebesgue en $\mathbb{R}$ si y solo si $|f|$ es integrable Lebesgue en $\mathbb{R}$, además $$\left| \int_{\mathbb{R}} f\right| \leq\int_{\mathbb{R}} |f|.$$

:::
::: {.proof}
	Como $f=f^{+}-f^{-}$, de la desigualdad triangular y la linealidad de la integral, se sigue el resultado.
\end{proof}

\begin{proposition}
	Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Si $f$ es integrable Lebesgue en $\mathbb{R}$ y $A,B$ son conjuntos medibles Lebesgue, entonces:

(i.) $f$ es integrable en $A$.
	
(ii.) $\int_{A\cup B} f=\int_{A} f + \int_{B} f$ siempre que $A\cap B=\emptyset$.
	
(iii.) $|f|$ es finita en casi todo punto.
	
:::
::: {.proof}
La parte $i$ se deduce inmediantamente de la monotonía de la integral, ya que $f\chi_{A}\leq f$. Para demostrar $ii$ solo basta notar que si $A\cap B=\emptyset$ entonces $\chi_{A\cup B}=\chi_{A}+\chi_{B}$. Por último, sea $N=\{x\in\mathbb{R}: |f|=\infty\}$, entonces para todo $n\in\mathbb{N}$ y todo $x\in N$, se tiene que $|f(x)|>n$. Por otro lado, por la parte anterior, se tiene que $$\int_{\mathbb{R}}|f|=\int_{N} |f| +\int_{N^{C}} |f|$$
entonces
$n m(N)\leq\int_{N} |f|\leq \int_{\mathbb{R}} |f|$, para todo $n$. Entonces,
$$m(N)\leq\frac{1}{n}\int_{\mathbb{R}} |f|\mbox{ para todo } n$$
de donde se sigue que $m(N)=0$.

:::

::: {.proposition #prop434}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Si $A\in\mathcal{M}$ es un conjunto de medida cero. Entonces $f$ es integrable Lebesgue en $A$ y $$\int_{A} f=0.$$

:::
::: {.proof}
Por monotonía de la medida de Lebesgue, cualquier subconjunto de $A$ tiene medida nula. De donde se tiene que $f=0$ en casi todo punto de $A$, de donde se sigue fácilmente el resultado.

:::

::: {.proposition #unnamed-chunk-177 name="Desigualdad de Chebychov"}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Si $|f|\geq\lambda> 0$ en $A\in\mathcal{M}$. Entonces $$\lambda m(A)\geq\int_{\mathbb{R}} |f|.$$.

:::
::: {.proof}
Como $$\int_{\mathbb{R}}|f|\geq \int_{A}|f|\geq \lambda m(A).$$

:::

::: {.proposition #unnamed-chunk-179}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Entonces:

(i.) Si $f\geq 0$ c. s. y $\int_{\mathbb{R}} f=0$, entonces $f=0$ c.s.

(ii.) Si $f=g$ c.s. entonces $\int_{\mathbb{R}} f=\int_{\mathbb{R}} g$.

(iii.) Si $f$ es integrable Lebesgue y $g$ es una función medible Lebesgue y $|g|\leq f$ c.s. entonces $g$ es integrable.

(iv.) Si $f$ es acotada y $E\in\mathcal{M}$ es un conjunto de medida finita, entonces $f$ es integrable en $E$. Además, si $c\leq f(x)\leq d$ c.s. entonces $cm(E)\leq \int_{\mathbb{R}} f\leq dm(E)$.

(v.) Sea $g$ una función medible Lebesgue. Si $f$ y $g$ son integrables Lebesgue. Entonces $\int_{\mathbb{R}} \min\{f,g\}\leq\min\{\int_{\mathbb{R}} f,\int_{\mathbb{R}} g\}$.

:::
::: {.proof}
Supongamos que $f\geq 0$ y que $\int_{\mathbb{R}}=0$. Sea $A=\{x\in\mathbb{R}: |f|\geq n\}$  para cualquier $n\in\mathbb{N}$. De la desigualdad de Chebychov, se tiene que $$m(A)\geq \frac{1}{n}\int_{\mathbb{R}} |f|=\frac{1}{n} \int_{\mathbb{R}} f$$ por lo tanto $m(A)=0$. Para demostar la parte $ii$, consideremos el conjunto $A=\{x\in\mathbb{R}: f(x)\neq g(x) \}$, entonces $m(A)=0$. Entonces, por la proposición \@ref{prp:prop434}
$$\int_{\mathbb{R}} f=\int_{A} f+\int_{A^{C}} f=\int_{A^{C}} f=\int_{A^{C}} g=\int_{A} g+\int_{A^{C}} g=\int_{\mathbb{R}} g.$$ Para demostar la parte $iii$ usamos nuevamente la proposición \@ref{prp:prop434}, para el conjunto $A=\{x\in\mathbb{R}: |g(x)|> f(x) \}$, el cual tiene medida cero. Así, $$\int_{\mathbb{R}}|g|=\int_{A}|g|+\int_{A^{C}}|g|\leq\int_{A^{C}} f<\infty$$ de donde se sigue que $g$ es integrable. Ahora, veamos que $iv$ se tiene fácilmente de la monotonía de la integral y del hecho que $m(A)=\int_{\mathbb{R}}\chi_{A}$. Finalmente, $v$ se obtiene del hecho que la función $\min\{f,g\}$ está acotada por $f$ y por $g$ y de la monotonía de la integral. 

:::

::: {.theorem #unnamed-chunk-181}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ integrable Lebesgue y sea $\epsilon>0$, entonces existe $\delta>0$ tal que $$m(A)\leq\delta\Rightarrow \left| \int_{A} f\right| \leq \int_{A}|f|<\epsilon.$$

:::
::: {.proof}
Si $f$ es acotada, digamos por $M\in\mathbb{R}$, entonces $\int_{A}|f|\leq \int_{A} M=M m(A)\leq M\delta$. Luego, tomando $\epsilon\geq M\delta$, se tiene el resultado.
Supongamos que $f$ no es acotada. Entonces, construiremos una sucesión de funciones acotadas que aproximacimen a $f$. Para cada $n\in\mathbb{N}$, definimos 
$$f_{n}(x)=\left\lbrace \begin{array}{ll}
	f(x)&\mbox{ si } |f(x)|\leq n\\
	n&\mbox{ si }f(x)< n\\
	-n&\mbox{ si }f(x)< -n
\end{array} \right. $$
Se tiene que $f_{n}\xrightarrow[n\to\infty]{} f$. Más aún, $\{|f_{n}|\}_{n}$ es creciente y tiende a $|f|$. Como $|f|$ es integrable, por el teorema de convergencia monótona \@ref{thm:BeppoLevy}, 
	$$\lim\limits_{n\to\infty} \int_{\mathbb{R}} |f_{n}|=\int_{\mathbb{R}}\lim\limits_{n\to\infty}|f_{n}|=\int_{\mathbb{R}}|f|$$
es decir, cada $|f_{n}|$ es integrable Lebesgue. Así, dado $\epsilon>0$, existe $N\in\mathbb{N}$, tal que $$\int_{\mathbb{R}} |f|-|f_{n}|<\frac{\epsilon}{2}\mbox{ para todo } n>N.$$
Sea $\delta=\frac{\epsilon}{2N}$ y sea $A\in\mathcal{M}$ tal que $m(A)<\delta$, entonces
$$\begin{array}{rl}
	\int_{A} f=&\int_{A}|f|-|f_{N}|+|f_{N}|\\
	=&\int_{A}|f|-|f_{N}|+\int_{A}|f_{N}|\\
	<&\frac{\epsilon}{2} + \int_{A}N\\
	=&\frac{\epsilon}{2} + N m(A)\\
	<&\frac{\epsilon}{2} + \delta N\\
	=&\epsilon
\end{array}.$$

:::

Ahora veamos un corolario del Lema de Fatou.

::: {.corollary #unnamed-chunk-183}
Sean $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue. Sea $g:\longrightarrow\mathbb{R}$ una función integrable Lebesgue tal que $f_{n}\geq g$ casi siempre. Entonces $$\int_{\mathbb{R}} \liminf\limits_{n\to\infty} f_{n}\leq \liminf\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::
::: {.proof}
Definamos $h_{n}=f_{n}-g$, entonces $h_{n}\geq 0$ c.s. Por el teorema de Fatou,
$$\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}-\int_{\mathbb{R}} g=\int_{\mathbb{R}}\liminf\limits_{n\to\infty} h_{n}\leq \liminf\limits_{n\to\infty}\int_{\mathbb{R}} h_{n}=\liminf\limitṣ_{n\to\infty}\int_{\mathbb{R}} f_{n}-\int_{\mathbb{R}} g$$
como $g$ es integrable, podemos cancelar a ambos lado, obteniendo el resultado.

:::

::: {.remark}
El Lema de Fatou es falso si la sucesión $\{f_{n}\}_{n}$ no está dominada inferiormente. Veamos esto con un ejemplo.

:::

::: {.example #unnamed-chunk-186}
Consideremos la siguiente sucesión de funciones integrables Lebesgue,
$$f_{n}(x)=\left\lbrace\begin{array}{ll}
	-4n^{2}x&\mbox{ si } x\in[0,\frac{1}{2n}]\\
	4n^{2}x-4n&\mbox{ si } x\in(\frac{1}{2n},\frac{1}{n}]\\
	0&\mbox{ en otro caso}
\end{array} \right. \mbox{ para cada } n\in\mathbb{N}.$$
En este caso se tiene que $\lim\limits_{n\to\infty} f_{n}=0$, pero $\int_{\mathbb{R}} f_{n}=-1$ por lo que $\lim\limits_{n\to\infty} \int_{\mathbb{R}}f_{n}=1\neq\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}$. Es de hacer notar que no existe función alguna que domine inferiormente a la sucesión. Es decir, no existe uan función $h$ tal que $f_{n}\geq h$ para todo $n\in\mathbb{N}$.

:::

Con un argumente análogo al usado en el corolario anterior, tomando $g_{n}=h-f_{n}$, se tiene el siguiente corolario.

::: {.corollary #unnamed-chunk-187}
Sean $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue dominada superiormente por una función integrable Lebesgue $g:\longrightarrow\mathbb{R}$, es decir,$f_{n}\leq g$. Entonces $$\int_{\mathbb{R}} \limsup\limits_{n\to\infty} f_{n}\geq \limsup\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::

## Teoremas de Aproximación

::: {.theorem #unnamed-chunk-188 name="Convergencia dominada de Lebesgue"}
	Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue, tales que $\lim\limits_{n\to\infty} f_{n}(x)=f(x)$ c.s. Sea $h:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ integrable Lebesgue tal que para todo $n\in\mathbb{N}$, $|f_{n}(x)|\leq h(x)$ c.s. Entonces:

(i.) Cada $f_{n}$ es integrable Lebesgue.

(ii.) $f$ es integrable Lebesgue.

(iii.) $\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}=\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}=\int_{\mathbb{R}} f$.

(iv.) $\lim\limits_{n\to\infty}\int_{\mathbb{R}}|f_{n}-f|=0$.

:::
::: {.proof}
Como $|f_{n}|\leq h$, para todo $n$, se tiene que cada $|f_{n}|$ es integrable Lebesgue y por lo tanto, cada $f_{n}$ también lo es.
De forma análoga, como $|f|=\lim\limits_{n\to\infty}|f_{n}|$, $|f|$ y $f$ son integrables Lebesgue.
Como $-h\leq f_{n}\leq h$, por el lema de Fatou y su corolario, se tiene que
$$\int_{\mathbb{R}} f=\int_{\mathbb{R}}\liminf\limits_{n}f_{n}\leq\liminf\limits_{n}\int_{\mathbb{R}} f_{n}\leq\limsup\limits_{n}\int_{\mathbb{R}} f_{n}\leq\int_{\mathbb{R}}\limsup\limits_{n}f_{n}=\int_{\mathbb{R}} f$$
por lo tanto
$$\int_{\mathbb{R}} f\leq\liminf\limits_{n}\int_{\mathbb{R}} f_{n}\leq\int_{\mathbb{R}} f\mbox{ y }\int_{\mathbb{R}} f\leq\limsup\limits_{n}\int_{\mathbb{R}} f_{n}\leq\int_{\mathbb{R}} f$$
esto implica que $\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}$ existe y es exactamente $\int_{\mathbb{R}} f$.
Ahora, definamos $g_{n}=|f_{n}-f|$, note que $g_{n}\xrightarrow[n\to\infty]{} 0$ y $|g_{n}|\leq|f|+|f_{n}|\leq 2h$. Aplicando lo anterior, se tiene que
$$\int_{\mathbb{R}} g_{n}=\int_{\mathbb{R}} |f_{n}-f|\xrightarrow[n\to\infty]{}0.$$
  
:::

::: {.corollary #unnamed-chunk-190}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue, tales que $\lim\limits_{n\to\infty} f_{n}(x)=f(x)$. Sea $A\in\mathcal{M}$ un conjunto de medida finita y supongamos que existe $M\in\mathbb{R}$ tal que $|f_{n}(x)|\leq M$ para todo $n\in\mathbb{N}$ y todo $x\in A$. Entonces $$\lim\limits_{n\to\infty}\int_{A} f_{n}=\int_{A} f.$$

:::
::: {.proof}
Sea $g=M\chi_{A}$. Como $m(A)<\infty$, $g$ es integrable. Ahora, $\{f_{n}\chi_{A}\}_{n}$ y $g$ cumplen con las hipótesis del teorema de convergencia dominada de Lebesgue, por lo tanto
$$\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}\chi_{A}=\int_{\mathbb{R}} f\chi_{A}.$$

:::

::: {.corollary #unnamed-chunk-192}
Sea $<a,b>$ un intervalo finito cualquiera de $\mathbb{R}$. Y sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:<a,b>\longrightarrow\mathbb{R}$ medibles Lebesgue. Supongamos que $f_{n}\xrightarrow[n\to\infty]{} f(x)$ en $<a,b>$. Entonces
	$$\int_{a}^{b} |f_{n}-f|\xrightarrow[n\to\infty]{} 0.$$

:::
::: {.proof}
Dado $\epsilon>0$, por la convergencia uniforme, existe $N\in\mathbb{N}$ tal que si $n\geq N$ entonces $|f_{n}(x)-f(x)|<\epsilon$ para todo $x\in<a,b>$. Por lo tanto $|f_{n}-f|<\epsilon\chi_{<a,b>}$. Como $\epsilon\chi_{<a,b>}$ es integrable Lebesgue, del teorema de CDL se concluye que $$\lim\limits_{n\to\infty}\int_{a}^{b}|f_{n}-f|=0.$$

:::

## Más sobre la Integral de Lebesgue

Presentamos dos teoremas que son consecuencia inmedianta del teorema de convergencia dominada de Lebesgue. Son una formulación del teorema de convergencia dominada de Lebesgue para familias no numerables de funciones.

::: {.theorem #unnamed-chunk-194}
Sea $<a,b>$ un intervalo finito cualquiera de números reales. Sea $f(x,t)$, con $x\in\mathbb{R}$ y $t\in<a,b>$, una función de dos variables tal que para cada $t$ fijo, la función $x\mapsto f(x,t)$ es medible Lebesgue. Supongamos que 
$$\lim\limits_{t\to b^{-}} f(x,t)=f(x) \mbox{ o } \lim\limits_{t\to a^{+}} f(x,t)=f(x)$$
y que para todo $t\in<a,b>$, $|f(x,t)|\leq g(x)$ para todo $x\in\mathbb{R}$, donde $g$ es una función integrable. Entonces, $f$ es integrable y 
$$\int_{\mathbb{R}} f(x,t)dx\rightarrow \int_{\mathbb{R}} f(x)dx\mbox{ cuando } t\to b^{-} \mbox{ o }t\to a^{+}.$$

:::
::: {.proof}
Supongamos que $\lim\limits_{t\to b^{-}} f(x,t)=f(x)$. Sea $(t_{n})_{n}$ una sucesión de números reales en $(a,b)$ tal que $t_{n}\longrightarrow$. Consideremos la sucesión de funciones $f_{n}=f(x,t_{n})$, por el teorema de convergencia dominada de Lebesgue, se sigue que
$$\lim\limits_{n\to\infty}\int_{\mathbb{R}}f_{n}(x)dx=\lim\limits_{t_{n}\to b}\int_{\mathbb{\mathbb{R}}} f(x,t_{n})dx=\int_{\mathbb{R}}f(x)dx.$$

:::

Si en lugar de $f(x,t)$ se considera la familia $\{f_{t}(x)\}_{t\in(a,b)}$, se tiene la versión del teorema de convergencia dominada de Lebesgue, como sigue:

::: {.theorem #unnamed-chunk-196}
Sean $-\infty\leq a<b\leq +\infty$. Para cada $t\in(a,b)$, sea $f_{t}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. Entonces, si para todo $t\in(a,b)$, $|f_{t}|\leq g$, donde $g$ es una función integrable Lebesgue y $f_{t}\to f$ cuando $t\to a^{+}$ o $t\to b^{-}$. Entonces $f$ es integrable Lebesgue y 
$$\int_{\mathbb{R}} f_{t}dx=\int_{\mathbb{R}} f dx.$$

:::

<!--chapter:end:050-la-integral-de-lebesgue.Rmd-->

# CONVERGENCIA

Ya conocemos la convergencia puntual y la convergencia uniforme de sucesiones de funciones, pero se pueden definir otros tipos de convergencia. En este capítulo estuadiaremos los distintos tipos de convergencia, así como la relación entre ellas. Definiremos espacios $L^{p}$ y estudiaremos la convergencia en ellos. Finalmente estudiaremos someramente los espacios de Hilbert.

## Tipos de convergencia

Recordaremos las definiciones ya conocidas de convergencia puntual y uniforme y añadiremos a la lista otras definiciones de convergencia. La definición de sucesión de Cauchy depende de la convergencia, mas adelante veremos como se redefine según el tipo de convergencia.

::: {.definition #unnamed-chunk-197}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue. Sea $E\in\mathcal{M}$. 

(1.) Decimos que $\{f_{n}\}_{n}$ *converge puntualmente a una función $f$* en $E$, si y solo si para todo $x\in E$, $\lim\limits_{n\to\infty} f_{n}(x)=f(x)$. Es decir $\forall x\in E\forall\epsilon>0\exists N\in\mathbb{N}[n>N\Rightarrow |f_{n}(x)-f(x)|<\epsilon]$. Se suele escribir $f_{n}\to f$ puntualmente.

(2.) Decimos que $\{f_{n}\}_{n}$ *converge uniformemente* a una función $f$ en $E$, si y solo si para todo $\epsilon>0$, existe $N\in\mathbb{N}$ tal que para todo $x\in E$,   si $n>N$ entonces $|f_{n}(x)-f(x)|<\epsilon$. Es decir $\forall\epsilon>0\exists N\in\mathbb{N}[\forall x\in E(n>N\Rightarrow |f_{n}(x)-f(x)|<\epsilon)]$. Se escribe $f_{n}\to f$ uniformemente.

(3.) Decimos que $\{f_{n}\}_{n}$ *converge puntualmente* a una función $f$ *en casi todo punto de* $E$, si y solo si $\{f_{n}\}_{n}$ converge puntualmente a $f$ en un conjunto $F\subseteq E$ y $m(E\backslash F)=0$. Es decir	$m\{x\in E: \{f_{n}(x)\}_{n} \mbox{ no converge a } f(x) \}=0$. Se escribe $f_{n}\to f$ en c.t.p (casi todo punto) de $E$.

(4.) Decimos que $\{f_{n}\}_{n}$ *converge uniformemente* a una función $f$ *en casi todo punto de* $E$, si y solo si $\{f_{n}\}_{n}$ converge uniformemente a $f$ en $F\subseteq E$ y $m(E\backslash F)=0$. Se escribe $f_{n}\to f$ uniformemente en c.t.p. de $E$.

:::

::: {.example #unnamed-chunk-198}
La sucesión de las funciones $f_{n}(x)=x^{n}\chi_{[0,1]}$ converge puntualmente a la función $$f(x)=\left\lbrace\begin{array}{ll}
	0&\mbox{ si } 0\leq x<1\\
	1&\mbox{ si } x=1
\end{array}\right.$$ en el intervalo $[0,1]$. Por lo tanto, converge en casi todo punto de $[0,1]$. Pero no converge uniformemente en $[0,1]$. Tampoco se puede decir que converge uniformemente en casi todo punto de $[0,1]$ aunque el conjunto donde falla la convergencia se puede hacer tan pequeño como se quiera.

:::

::: {.definition #unnamed-chunk-199}
Decimos que $\{f_{n}\}_{n}$ *converge casi uniformemente* a una función $f$ en un conjunto medible $E$, si y solo si $\forall\epsilon>0$, existe $F\subseteq E$ tal que $\{f_{n}\}_{n}$ converge uniformemente a $f$ en $F$ y $m(E\backslash F)=0$. Se escribe $f_{n}\to f$ c.u. en $E$.

:::

::: {.remark}
Es claro que la convergencia uniforme implica la convergencia casi uniforme. Pero el recíproco no es cierto.

:::

::: {.proposition #unnamed-chunk-201}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue. Si $f_{n}\to f$ casi uniformemente en un conjunto medible $E$, entonces $f_{n}\to f$ en casi todo punto de $E$.

:::
::: {.proof}
Sea $F_{n}\subseteq E$ tal que $f_{n}\to f$ uniformemente en $E\backslash F_{n}$ y $m(F_{n})<\frac{1}{n}$. Tomando $F=\bigcap F_{n}$, se tiene que $m(F)=0$ y $f_{n}(x)\to f(x)$ en c.t.p de $E$.

:::

::: {.remark}
El recíproco de la proposición anterior, es falso tal como lo muestra el siguiente ejemplo.

:::

::: {.example #unnamed-chunk-204}
Sea $f_{n}=\chi_{[n,\infty)}$. Es claro que $f_{n}\to 0$ para todo $x\in\mathbb{R}$ pero $f_{n}$ no converge c.u. a $0$ en $\mathbb{R}$.

:::

::: {.theorem #unnamed-chunk-205 name="Egorov´s"}
Sea $E\in\mathcal{M}$ un conjunto de medida finita y sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles $f_{n}:E\longrightarrow\overline{\mathbb{R}}$ tales que, para cada $n\in\mathbb{N}$, $|f_{n}|<\infty$ en c.t.p de $E$. Sea $f:E\longrightarrow\overline{\mathbb{R}}$ una función finita en c.t.p. de $E$. Supongamos que $f_{n}\to f$ en c.t.p. de $E$. Entonces $f_{n}\to f$ c.u. en $E$.

:::
::: {.proof}
Sean $A_{n}=\{x\in\mathbb{R}:|f_{n}(x)|=\infty \}$ para cada $n\in\mathbb{N}$, $B=\{x\in\mathbb{R}:|f(x)|=\infty \}$ y $C=\{x\in\mathbb{R}: f_{n}(c)\mbox{ no converge a } f(x) \}$. Llamemos $F=\left( \bigcup_{n\in\mathbb{N}}A_{n}\right) \cup B\cup C$, entonces $m(F)=0$. Sea $\overline{E}=E\backslash F$. Si demostramos que $f_{n}\to f$ c.u. en $\overline{E}$, entonces se tiene que $f_{n}\to f$ c.u. en $E$. Entonces podemos suponer sin pérdida de generalidad que para todo $n\in\mathbb{N}$, $|f_{n}|$ es finita en $E$, que $|f|$ es finita y que $f_{n}\to f$ en $E$.
Fijemos $\epsilon>0$. Sea $$E_{n}^{m}=\bigcap_{k\geq n}\left\lbrace x\in\mathbb{R}: |f_{k}(x)-f(x)|<\frac{1}{m} \right\rbrace $$
para $m$ fijo, la sucesión $(E_{n}^{m})_{n\in\mathbb{N}}$, es una sucesión creciente; además, como $f_{n}(x)\to f(x)$ en $E$, se tiene que $E=\bigcup_{n\in\mathbb{N}} E_{n}^{m}$. Entonces, $(E\backslash E_{n}^{m})_{n\in\mathbb{N}}$ es una sucesión decreciente que tiende a vacío, es decir, $E\backslash E_{n}^{m}\to\emptyset$, para cada $m\in\mathbb{N}$. Como $E$ tiene medida finita, para cada $m$, existe $N_{m}$ tal que $m(E\backslash E_{n}^{m})<\frac{\epsilon}{2^{m}}$ para todo $n\geq N_{m}$. Sea $F_{\epsilon}=\bigcup_{m\in\mathbb{N}} E\backslash E_{N_{m}}^{m}$, entonces $m(F_{\epsilon})<\epsilon$. Se tiene que $f_{n}\to f$ en $E\backslash F_{\epsilon}=\left(\bigcap_{m\in\mathbb{N}} E_{N_{m}}^{m} \right) $. Sea $\xi>0$, tomemos $m\in\mathbb{N}$ tal que $\frac{1}{n}<\xi$, entonces para todo $k\geq N_{m}$ y para todo $x\in E\backslash F_{\epsilon}$ se tiene que $$|f_{k}(x)-f(x)<\xi.$$

:::

Definamos ahora otro tipo de convergencia y su respectiva definición de sucesión de Cauchy en medida.

::: {.definition #unnamed-chunk-207}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{R}$ medibles y finitas en c.t.p. Sea $f:\mathbb{R}\longrightarrow\overline{R}$ una función medible finita en c.t.p. Decimos que *$f_{n}$ converge a $f$ en medida* (y lo denotamos por $f_{n}\xrightarrow{m} f$) si para todo $\epsilon>0$ se tiene que $$\lim\limits_{n\to\infty} m\{x\in\mathbb{R}:|f_{n}(x)-f(x)|\geq\epsilon \}=0.$$

:::
Otra forma de expresarlo es: $f_{n}\xrightarrow{m} f$ si y solo si
$$\forall\epsilon>0\forall\xi>0\exists N\in\mathbb{N}(n\geq N \Rightarrow m\{x\in\mathbb{R}:|f_{n}(x)-f(x)|\geq\epsilon\}<\xi).$$

::: {.definition #unnamed-chunk-208}
Una sucesión $(f_{n})_{n\in\mathbb{N}}$ de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{R}$ medibles es *de Cauchy en medida* si y solo si para todo $\epsilon>0$ y todo $\xi>0$, existe $N\in\mathbb{N}$ tal que si $n,m>N$, entonces $m\{x\in\mathbb{R}:|f_{n}(x)-f_{m}(x)|\geq\epsilon\}<\xi.$

:::

::: {.remark}
La convergencia en casi todo punto no implica, en general, la convergencia en medida, salvo que la convergencia en c.t.p. esté dada en un conjunto de medida finita. El recíproco tampoco es cierto, es decir, la convergencia en medida no implica la convergencia en c.t.p.

:::

::: {.example #unnamed-chunk-210}
La sucesión $\chi_{[n,\infty)}(x)$ converge puntualmente (por lo tanto, en casi todo punto) a la función $f=0$. Pero	$$m\{x\in\mathbb{R}:|f_{n}(x)-f(x)|\geq \epsilon \}=m[n,\infty)=\infty\mbox{, para cualquier } \epsilon<1$$ por lo tanto, la sucesión no converge en medida.

Ahora, si consideramos la misma sucesión pero esta vez relativa a un conjunto de medida finita, esto es, $\chi_{[n,\infty)\cap A}(x)$, donde $A$ es un conjunto de medida finita, entonces se tiene que la sucesión converge en c.t.p de $A$ y converge en medida.

Por otro lado, consideremos *la sucesión que camina*. Está definida como $$f_{2^{p}+q}(x)\left\lbrace \begin{array}{ll}
	1&\mbox{ si } x\in\left( \frac{q}{2^{p}},\frac{q+1}{2^{p}}\right) \\
	0&\mbox{ en otro caso }
	\end{array}\right. \mbox{ para } p\in\mathbb{N}\mbox{ y } q=0,1,\cdots, 2^{p}-1.$$
	Para ilustrar mejor, estas son las primeras cinco funciones de la sucesión:
	$$f_{1}=\chi_{(0,1]},\; f_{2}=\chi_{\left( 0,\frac{1}{2}\right] },\; f_{3}=\chi_{\left( \frac{1}{2},1\right] },\; f_{4}=\chi_{\left( 0,\frac{1}{4}\right] },\; f_{5}=\chi_{\left( \frac{1}{4},\frac{1}{2}\right] } $$
Es claro que $f_{n}\xrightarrow{m} 0$, ya que para todo $0<\epsilon<1$, $m(\{x\in\mathbb{R}:|f_{n}(x)|\geq\epsilon \})=\frac{1}{p}$ (con $n=2^{p}+q$). Pero $f_{n}$ no converge a $f=0$ en ningún punto de $[0,1]$.

:::

Note que, aunque *la sucesión que camina* no converge a $f=0$, en casi todo punto de $[0,1]$, se puede hallar una subsucesión que si lo hace; a saber $f_{2^{p}+q}$, con $p\in\mathbb{N}$ y $q=0$.

::: {.proposition #unnamed-chunk-211}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones medibles finitas en c.t.p. que converge en medida a una función medible $f$. Entonces, existe una subsucesión $(f_{n_{k}})_{k\in\mathbb{N}}$ tal que $f_{n_{k}}\xrightarrow{k\to\infty} f$ en c.t.p.

:::
::: {.proof}
Como $f_{n}\xrightarrow{m} f$, para todo $k\in\mathbb{N}$, existe $n_{k}$ tal que si $n\geq n_{k}$, entonces $$m\{x\in\mathbb{R}: |f_{n}(x)-f(x)|\geq \frac{1}{2^{k}} \}<\frac{1}{2^{k}}.$$
Siempre puede tomarse $n_{k+1}>n_{k}$. Así, la subsucesión $(f_{n_{k}})_{k}$ es la buscada. En efecto, $(f_{n_{k}})_{k}$ converge a $f$ salvo en el conjunto $E=\bigcup_{k\in\mathbb{N}} E_{k}$, donde $E_{k}=\{x\in\mathbb{R}: |f_{n}(x)-f(x)|\geq \frac{1}{2^{k}} \}$ para cada $k\in\mathbb{N}$.

:::

## Espacios $L^{p}$

En esta sección estudiaremos un clase de espacios de funciones muy importantes, estas familias son los espacios $L^{p}$. Para esto vamos a denotar por $\mathfrak{M}$ al conjunto de funciones $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue, definidas en $\mathbb{R}$ y $\mathfrak{M}(A)$ al conjunto de funciones medibles Lebesgue definidas en un conjunto medible $A$, es decir, $f:A\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue.

Sea $1\leq p<\infty$ un número real. Definimos el conjunto $L^{p}=\{f\in\mathfrak{M}: \int|f|^{p}<\infty \}$. Si $p=1$, $L^{1}$ es el conjunto de funciones integrables Lebesgue (en $\mathbb{R}$). Si $A\in\mathcal{M}$, $L^{p}(A)=\{f\in\mathfrak{M}: \int_{A}|f|^{p}<\infty \}$.

::: {.proposition #unnamed-chunk-213}
$L^{p}$ es un espacio vectorial.

:::
::: {.proof}
Basta notar que $|f+g|^{p}\leq 2^{p}\max(|f|^{p},|g|^{p})\leq 2^{p}(|f|^{p}+|g|^{p})$. De las propiedades de la integral se obtiene el resultado.

:::

Sea $f\in L^{p}$, definimos $\|f\|_{p}=\left(\int |f|^{p} \right)^{\frac{1}{p}}$. Si esta función resulta ser una norma, el espacio $L^{p}$ sería un espacio normado; pero no es cierto en general que $\|f\|_{p}=0 \Leftrightarrow f=0$. Lo que si se puede demostrar es que $\|f\|_{p}=0 \Leftrightarrow f=0$  c.s. 

::: {.proposition #unnamed-chunk-215}
$\|f\|_{p}$ es una pseudo-norma en el espacio $L^{p}$, esto es:

(i.) $\|f\|_{p}\geq 0$ para todo $f\in L^{p}$,

(ii.) $\|f\|_{p}=0$ si y solo si $f=0$ casi siempre,

(iii.) $\|kf\|_{p}=|k|\|f\|_{p}$ para todo $k\in\mathbb{R}$ y todo $f\in L^{p}$,

(iv.) $\|f+g\|_{p}\leq \|f\|_{p}+\|g\|_{p}$ para todo $f, g\in L^{p}$ (Desigualdad de Minkowski).
	

:::

Las demostraciones de las primeras tres partes de esta proposición son sencillas. La desigualdad de Minkowski se demostrará como consecuencia de la Desigualdad de Hölder que demostraremos en lo que sigue.

Primero veamos el siguiente lema que será útil para demostrar el teorema.

::: {.lemma #unnamed-chunk-216}
Sean $a, b\geq 0$ números reales y $\frac{1}{p}+\frac{1}{q}=1$, con $p,q\in\mathbb{N}$ no núlos. Entonces $ab\leq\frac{a^{p}}{p}+\frac{b^{q}}{q}$. Además, si $b=a^{p-1}$, se tiene la igualdad.

:::
::: {.proof}
Sea $\phi(t)$ una función continua estrictamente creciente en $[0,\infty)$ que toma valor cero en cero, es decir,  $\phi(0)=0$. Sea $(a,b)$ un punto del plano ( con $a$ y $b$ como en las hipótesis). Entonces
$$ab\leq\int_{0}^{a} \phi(t)dt+\int_{0}^{b} \phi^{-1}(s)ds$$
y en el caso que $\phi(a)=b$ se tiene la igualdad, es decir,
$$ab=\int_{0}^{a} \phi(t)dt+\int_{0}^{b} \phi^{-1}(s)ds.$$
Tomando $\phi(t)=t^{p-1}$, entonces $\phi^{-1}(s)=s^{q-1}$, ya que $\frac{1}{p}+\frac{1}{q}=1$. Entonces 
$$ab\leq\int_{0}^{a} t^{p-1}dt+\int_{0}^{b} s^{q-1}ds=\frac{a^{p}}{p}+\frac{b^{q}}{q},$$
y en el caso que $b=a^{p-1}$ se tiene $$ab=\frac{a^{p}}{p}+\frac{b^{q}}{q}.$$

:::

::: {.theorem #unnamed-chunk-218 name="Desigualdad de Hölder"}
Sean $1<p,q<\infty$ tales que $\frac{1}{p}+\frac{1}{q}=1$. Entonces, si $f\in L^{p}$ y $g\in L^{q}$, se tiene que $fg\in L^{1}$ y $$\int|fg|\leq \|f\|_{p}\|g\|_{q}.$$
Además, $$\int|fg|=\|f\|_{p}+\|g\|_{q}\mbox{ si y solo si existen constantes } c,d\in\mathbb{R}\mbox{ tales que } c|f|^{p}=d|g|^{q}.$$

:::
::: {.proof}
Podemos suponer que $\|f\|_{p}>0$ y $\|g\|_{q}>0$, ya que en ese caso, $f=0$ c.s y $g=0$ c.s. de donde se obtiene el resultado fácilmente. Más aún, podemos suponer que $\|f\|_{p}=1$ y $\|g\|_{q}=1$, pues en otro caso, tomando $\hat{f}=\frac{f}{\|f\|_{p}}$ y $\hat{g}=\frac{g}{\|g\|_{q}}$, se obtiene el resultado.
Sabemos, por el lema anterior, que $$|f(x)g(x)|\leq \frac{|f|^{p}}{p}+\frac{|g|^{q}}{q}.$$
Integrando, obtenemos
$$\int |f(x)g(x)|dx\leq \frac{1}{p}\|f\|_{p}^{p}+\frac{1}{q}\|g\|_{q}^{q}=\frac{1}{p}+\frac{1}{q}=1=\|f\|_{p}\|g\|_{q}.$$

:::

::: {.remark}
Si $p=q=2$, la desigualdad anterior es la llamada *desigualdad de Cauchy-Schwarz*, esta es 
$$|u\cdot v|^{2}\leq (u\cdot u)(v\cdot v)$$
donde $u\cdot v$ representa el producto escalar entre los vectores $u$ y $v$.
Otra manera de representarla, suponiendo que los vectores $u=(a_{1},\cdots, a_{n})$ y $v=(b_{1},\cdots, b_{n})$ están en $\mathbb{R}^{n}$, es
$$\sum_{k=1}^{n} |a_{k}b_{k}|\leq (\sum_{k=1}^{n} |a_{k}|^{2})^{\frac{1}{2}}(\sum_{k=1}^{n} |b_{k}|^{2})^{\frac{1}{2}}.$$

:::
Dado un número real $p\geq 1$, decimos que $q\in\mathbb{R}$ es el *índice conjugado de $p$* si $\frac{1}{p}+\frac{1}{q}=1$. Estas son algunas propiedades de los índices conjugados que resultan muy útiles:

::: {.proposition #unnamed-chunk-221}
Sean $p$ y $q$ índices conjugados. Entonces:

(i.) $q=\frac{p}{p-1}$.

(ii.) $\frac{1}{p-1}=q-1$.

(iii.) $pq=p+q$.

(iv.) $(p-1)q=p$.

:::
La demostración es sencilla, solo requiere de manipulación algebraica de la igualdad $\frac{1}{p}+\frac{1}{q}=1$.

Ahora podemos demostrar la desigualdad de Minkowski.

::: {.theorem #unnamed-chunk-222 name="Desigualdad de Minkowski"}
Si $f,g\in L^{p}$ (con $p\geq 1$) entonces $\|f+g\|_{p}\leq \|f\|_{p}+\|g\|_{p}.$

:::
::: {.proof}
Si $p=1$, de la desigualdad triangular se sigue que $\int |f+g|\leq \int |f| +\int |g|$.
Supongamos que $p>1$. Entonces
$$\|f+g\|_{p}^{p}=\int |f+g|^{p}=\int |f+g||f+g|^{p-1}\leq \int |f||f+g|^{p-1}\int |g||f+g|^{p-1}$$
Sea $q\in\mathbb{R}$ tal que $\frac{1}{p}+\frac{1}{q}=1$. Como $p=q(p-1)$, se tiene que 
$$\int (|f+g|^{p-1})^{q}=\int |f+g|^{p}<\infty.$$
Luego, se tiene que si $f+g\in L^{p}$, entonces $|f+g|^{p-1}\in L^{q}$. Por la desigualdad de Hölder, se tiene que 
$$\|f+g\|^{p}_{p}\leq (\|f\|_{p}+\|g\|_{p})\|(f+g)^{p-1}\|_{q}.$$
Como se tiene que 
$$	\begin{array}{rl}
	\|(f+g)^{p-1}\|_{q}=&(\int ((f+g)^{p-1})^{q})^{\frac{1}{q}} \mbox{ y } (p-1)q=p\\
	=&(\int (f+g)^{p})^{\frac{1}{q}}\\
	=&\|f+g\|_{p}^{\frac{p}{q}} \mbox{ pero } \frac{p}{q}=p-1\\
	=&\|f+g\|_{p}^{p-1}
\end{array}.$$
Por lo tanto, 
$$	\begin{array}{ll}
	\|(f+g)\|_{p}^{p}&\leq(\|f\|_{p}+\|g\|_{p})\|f+g\|_{p}^{p-1}\Leftrightarrow\\
	\dfrac{\|(f+g)\|_{p}^{p}}{\|(f+g)\|_{p}^{p-1}}&\leq\|f\|_{p}+\|g\|_{p}\Leftrightarrow\\
	\|(f+g)\|_{p}&\leq \|f\|_{p}+\|g\|_{p}
\end{array}.$$

:::

::: {.definition #unnamed-chunk-224}
Sea $(f_{n})_{n}$ una sucesión de funciones en $L^{p}$. Decimos que $(f_{n})_{n}$ *converge en norma $p$* a una función $f\in L^{p}$ si y solo si $\|f_{n}-f\|\xrightarrow[n\to\infty]{}0$. Es decir $\int |f_{n}-f|^{p}\xrightarrow[n\to\infty]{}0$. Lo que se denota $f_{n}\xrightarrow[\|\,\|_{p}]{} f$.

:::

Hasta ahora, hemos demostrado que $L^{p}$ es un espacio vectorial y que la función $\|\cdot\|_{p}$ es una pseudonorma. Para ser una norma, le faltaría la propiedad: 
$$f=0\Leftrightarrow \|f\|_{p}=0$$
en cambio se tiene que 
$$f=0\Leftrightarrow \|f\|_{p}=0\mbox{ c.s.}$$

Si definimos la siguiente relación de equivalencia en $L^{p}$:
$$f\sim g\Leftrightarrow f=g$$ c.s.
y definimos las operaciones de suma y multiplicación por un escalar inducidas, en el espacio cociente $L^{p}/_{\sim}$,
$$\widetilde{f}+\widetilde{g}=\widetilde{f+g}\mbox{ y } k\widetilde{f}=\widetilde{kf}\mbox{ para cualquier } k\in\mathbb{R}$$
entonces $\|\cdot \|_{p}$ sería una norma en el espacio vectorial $\mathcal{L}_{p}=L_{p}/_{\sim}$. Además, la convergencia en norma $p$ es exactamente la convergencia a la métrica asociada a la norma $p$.

::: {.example #ejemplo522}
Considere la sucesión $f_{n}=n\chi_{(0,\frac{1}{n})}$. Se tiene que para todo $\epsilon>0$, $m(\{x\in\mathbb{R}:|f_{n}(x)|\geq\epsilon \})=\frac{1}{n}\xrightarrow[n\to\infty]{}0$ pero $\int|f|^{p}=n^{p-1}\xrightarrow[n\to\infty]{}\infty$, por lo tanto $f_{n}$ no converge a $0$ en norma $p$.

:::

::: {.remark}
La relación entre los tipos de convergencia:

(		\item[1.])1. La convergencia en c.t.p no implica, en general, la convergencia en norma $p$. Un ejemplo es la sucesión $f_{n}=\frac{1}{n}$, que converge uniformemente a $0$, por lo tanto en c.t.p. pero no converge en norma $p$.

(2.) El recíproco tampoco es cierto, un ejemplo es *la sucesión que camina*.

(3.) La convergencia en medida no implica la convergencia en norma $p$ (ver ejemplo anterior \@ref(exm:exemplo522).

(4.) Como consecuencia de la desigualdad de Chebychov, se tiene que la convergencia en norma $p$, implica la convergencia en medida.

:::
	
Note que la desigualdad de Chebychov  se traduciría en $L^{p}$, como sigue:
	$$m\{x\in\mathbb{R}: |f(x)|\geq\epsilon \}\leq\frac{1}{\epsilon^{p}}\|f\|_{p}^{p}\mbox{ para } f\in\L^{p}\mbox{ y }\epsilon>0.$$
El siguiente teorema es una generalización del teorema de convergencia dominada y es consecuencia de la desigualdad de Chevychov.

::: {.theorem #unnamed-chunk-226}
Sea $p\geq 1$ y sea $(f_{n})_{n}$ una sucesión de funciones medibles Lebesgue tal que existe una función $h$ tal que $|f_{n}|^{p}\leq h$ c.s. Si se cumplen alguna de las siguientes:


(1.) si existe una función $f$ tal que $f_{n}\to f$ c.s. o

(2.) si existe una función $f$ tal que $f_{n}\xrightarrow[]{m} f$.

Entonces, $f_{n}\xrightarrow[\|\,\|_{p}]{} f$. Además $\liminf_{n\to\infty} |f_{n}-f|^{p}=0$.

:::

Otra consecuencia de la desigualdad de Chebychov es que si una *sucesión es de Cauchy en norma $p$*, esto es que para todo $\epsilon>0$ existe $N_{\epsilon}\in\mathbb{N}$ tal que $n,m>N_{\epsilon}\Leftrightarrow \|f_{n}-f_{m}\|<\epsilon$. Entonces es de Cauchy en medida. 

Ahora veamos que el espacio $L^{p}$ es completo, es decir, que toda sucesión de Cauchy converge a un vector del espacio.

::: {.theorem #unnamed-chunk-227 name="Riesz-Fischer"}
Sea $1\leq p<\infty$. Si $(f_{n})_{n\geq 1}$ es de Cauchy en $L^{p}$, entonces existe $f$ en $L^{p}$ tal que $\|f_{n}-f\|_{p}\xrightarrow[n\to\infty]{}0$.

:::
::: {.proof}
Como $(f_{n})_{n}$ es una sucesión de Cauchy en $L^{p}$, entonces es de Cauchy en medida. Por lo tanto existe una función medible Lebesgue $f$ tal que $f_{n}\xrightarrow{m} f$. Luego, existe una subsucesión $(f_{n_{k}})_{k}$ que converge a $f$ c.s. lo que implica, por el lema de Fatou, que 
	$$\int |f|^{p}|=\int \lim_{k\to\infty} |f_{n_{k}}|^{p}\leq \liminf_{k\to\infty} \int| f_{n_{k}}|^{p}=\liminf_{k\to\infty} \| f_{n_{k}}\|^{p}_{p}<\infty$$
	por lo que $f\in L^{p}$. Ahora bien, como la sucesión $(f_{n})_{n}$ es de Cauchy en $L^{p}$, dado $\epsilon>0$, para $n$ y $n_{k}$ suficientemente grandes, se tiene que 
	$$\int |f_{n}-f|^{p}=\int \lim_{k\to\infty} |f_{n}-f_{n_{k}}|^{p}\leq \liminf_{k\to\infty}\int |f_{n}-f_{n_{k}}|^{p}<\epsilon$$
	por lo que $\|f_{n}-f\|_{p}\xrightarrow[n\to\infty]{}0$.

:::

Recuerde que un *espacio de Banach* es un espacio métrico completo. Ya demostramos que $\mathcal{L}^{p}$ es un espacio vectorial normado, considerando la métrica inducida por la norma $p$, $\mathcal{L}^{p}$ es un espacio métrico. Y por el resultado anterior, se tiene que es un espacio completo.

::: {.corollary #unnamed-chunk-229}
$\mathcal{L}^{p}$ es un espacio de Banach.

:::

## Espacios $L^{\infty}$

::: {.definition #unnamed-chunk-230}
Diremos que una función $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ es *esencialmente acotada* si existe $a\in\mathbb{R}$, $0<a$ tal que $m\{x\in\mathbb{R}: |f(x)|>a \}=0$. En este caso, decimos que $a$ es *una cota esencial de $f$*. Y definimos el *supremo esencial de $f$*, denotado por $sup.es.|f|$ como el ínfimo del conjunto de cotas esenciales, es decir, 
	$$sup.es.|f|=\inf\{a\in\mathbb{R}:m\{x\in\mathbb{R}: |f(x)|>a \}=0\}.$$

:::

::: {.remark}
Note que $sup.es.|f|$ es una cota esencial de $f$. Además, si $C=sup.es.|f|$, entonces $m\{x\in\mathbb{R}:|f(x)|>C \}=0$ por lo que $|f(x)|<C$ en c.s.

:::

Denotaremos $L^{\infty}$ al espacio de funciones esencialmente acotadas (es fácil demostrar que el conjunto de las funciones esencialmente acotadas, es un espacio vectorial) y definimos *la norma infinito* en este espacio como $$\|f\|_{\infty}=sup.es.|f| \mbox{para toda función} f\in L^{\infty}.$$ 
Al igual que la norma $p$, la norma infinito no es una norma en $L^{\infty}$ pero si en el espacio cociente $\mathcal{L}^{\infty}=L^{\infty}/_{\sim}$, con la relación de equivalencia 
$$f\sim g \Leftrightarrow f=g \mbox{ c.s.}$$

Es decir, si $f,g\in L^{\infty}$, entonces:

(1.) $\|f\|_{\infty}\geq 0$,

(2.) $\|f\|_{\infty}=0$ si y solo si $f=0$ c.s.,

(3.) $\|kf\|_{\infty}=k\|f\|_{\infty}$ para todo $k\in\mathbb{R}$ y

(4.) $\|f+g\|_{\infty}\leq \|f\|_{\infty}+\|g\|_{\infty}$.

Dada $g\in L^{\infty}$, entonces para toda  $f\in L^{1}$, se tiene que $|fg|$ es integrable. En efecto, sea $C=sup.es.|g|$, entonces
$$\int |fg|=\int |f||g|\leq C\int |f|.$$

Esto es la demostración de la siguiente

::: {.proposition #unnamed-chunk-232}
Si $f\in L^{1}$, $g\in L^{\infty}$; entonces $|fg|\in L^{1}$ y $$\int |fg|=\|f\|_{1}\|g\|_{\infty}.$$

:::

La noción de convergencia en $L^{\infty}$ es la natural. Una sucesión $(f_{n})_{n}\subseteq L^{\infty}$ *converge a $f\in L^{\infty}$ en norma infinito* si y solo si 
$$\|f_{n}-f\|_{\infty}\xrightarrow[n\to\infty]{}0.$$

Se puede demostar que $$\|f_{n}-f\|_{\infty}\xrightarrow[n\to\infty]{}0\Leftrightarrow f_{n}\xrightarrow[n\to\infty]{}f \mbox{c.s.}$$ por lo tanto, $\mathcal{L}^{\infty}$ es un espacio de Banach.

::: {.remark}
Para culminar esta sección, haremos las siguientes precisiones:

(1.) Si $m(A)<\infty$, $L^{p}(A)\supseteq L^{q}(A)$ siempre que $p<q$.

(2.) No ocurre en general que $L^{\infty}=\bigcap_{p=1}^{\infty} L^{p}$. La función $f(x)=|\log(x)|\chi_{(0,1]}(x)$ en $L^{p}$, para todo $1\leq p<\infty$ pero no esencialmente acotada, por lo tanto $f\notin L^{\infty}$.

:::

## Espacios de Hilbert

Le dedicaremos unas lineas al espacio $L^{2}$ por tener unas características especiales que lo diferencian de los espacios $L^{p}$ cuando $p\neq 2$. Este espacio es un tipo de espacio especial llamado Espacio de Hilbert, que se diferencia de los espacios de Banach.

Comencemos recordando que es un producto interno.

::: {.definition #unnamed-chunk-234}
Sea $X$ un espacio vectorial (sobre $\mathbb{R}$). Un *producto interno* en $X$ es una función $(\cdot,\cdot):X\times X\longrightarrow\mathbb{R}$ que cumple:

(i.) $(x,y)=(y,x)$ para todo $x,y\in X$,

(ii.) $(k_{1}x_{1}+k_{2}x_{2},y)=k_{1}(x_{1},y)+k_{2}(x_{2},y)$ para todo $k_{1}, k_{2}\in\mathbb{R}$ y $x_{1}, x_{2}, y\in X$ y

(iii.) $(x,x)\geq 0$ para todo $x\in X$ y $(x,x)=0$ si y solo si $x=0$.

:::

::: {.example #ejemplo532}
La función $(f,g)\mapsto \int_{a}^{b}f(t)g(t)dt$ es un producto interno en $\mathcal{L}^{2}$.

:::

Siempre que se tiene un producto interno definido en un espacio vectorial, se puede definir una norma a partir del producto interno:
$$\|x\|=\sqrt{(x,x)}.$$

::: {.definition #unnamed-chunk-235}
Dado un espacio vectorial $X$ con producto interno, decimos que $X$ es un *espacio de Hilbert* si $X$ es completo respecto a la norma inducida por el producto interno.

:::

::: {.example #unnamed-chunk-236}
$\mathbb{R}^{n}$ es un espacio de Hilbert con el producto interno $$(x,y)=\sum_{i=1}^{n} x_{i}y_{i}$$
donde $x=(x_{1},\cdots,x_{n})$ y $y=(y_{1},\cdots,y_{n})$.

:::

::: {.example #unnamed-chunk-237}
$\mathcal{L}^{2}$ es un espacio de Hilbert, con el producto interno definido en el ejemplo \@ref{exm:ejemplo532}.

:::

::: {.example #unnamed-chunk-238}
Sea $l^{2}$ el conjunto de sucesiones de numeros reales de cuadrados convergentes, es decir, $\sum_{i\in\mathbb{N}} |x_{i}|^{2}<\infty$. La función $(x,y)=\sum_{i=1}^{n}x_{i}y_{i}$, con $x=(x_{n})_{n},  y=(y_{n})_{n}\in l^{2}$ es un producto interno. Se puede demostrar que $l^{2}$ junto a esta función es un espacio de Hilbert. 

:::

::: {.proposition #unnamed-chunk-239}
Sea $X$ un espacio con producto interno. Dados $x,y\in X$, se cumple que $$|(x,y)|^{2}\leq (x,x)(y,y)$$

:::
::: {.proof}
Por definición de producto interno,
$$(x+\lambda y, x+ \lambda y)\geq 0$$
para cualquier escalar $\lambda\in\mathbb{R}$, en particular para $\lambda=-\frac{(x,y)}{y,y}$
Desarrollando en producto interno y usando la linealidad, se tiene que
$$\begin{array}{ll}
	0&\leq(x+\lambda y, x+\lambda y)\\
	&=(x,x)+2\lambda(x,y)+\lambda^{2}(y,y)\\
	&=(x,x)-2\frac{(x,y)^{2}}{(y,y)}+\frac{(x,y)^{2}}{(y,y)^{2}}(y,y)
\end{array}$$
de donde se sigue el resultado.

:::

Note que si $\mathcal{H}$ es un espacio de Hilbert, se cumplen las siguientes propiedades, que son una generalización de propiedades conocidas de $\mathbb{R}^{n}$:

(1.) **Ley del paralelogramo**: Si $x,y\in \mathcal{H}$, entonces $$\|x+y\|^{2}+\|x-y\|^{2}=2(\|x\|^{2}+\|y\|^{2}).$$

(2.) **Ley de los cosenos**: Dados $x,y\in \mathcal{H}$, definimos el ángulo entre $x$ e $y$, $\theta$, de la igualdad siguiente
$$\cos\theta=\frac{(x,y)}{\|x\|\|y\|}.$$
Luego, se tiene la propiedad:
$$\|x+y\|^{2}=\|x\|^{2}-2\|x\|\|y\|\cos\theta+\|y\|^{2}.$$

(3.) **Teorema de Pitágoras**: se dice que $x, y\in \mathcal{H}$ son *ortogonales* si $(x,y)=0$. Luego se sigue la propiedad:
$$\|x+y\|^{2}=\|x\|^{2}-2\|x\|\|y\|\cos\theta+\|y\|^{2}.$$
Más aún, sean $x_{1}, \cdots, x_{k}\in \mathcal{H}$, si $(x_{i},x_{j})=0$ siempre que $i\neq j$, entonces 
$$\left\|  \sum_{i=1}^{k}x_{i}\right\|  =\sum_{i=1}^{k}\|x_{i}\|.$$


También se pueden generalizar conceptos de base y de base ortogonal.

::: {.definition #unnamed-chunk-241}
Sea $\mathcal{H}$ un espacio de Hilbert. Un conjunto $E\subseteq \mathcal{H}$ es *linealmente independiente* si todos sus subconjuntos finitos lo son.

:::

::: {.definition #unnamed-chunk-242}
Sea $C\subseteq \mathcal{H}$ se llama *sistema ortogonal* si $(x,y)=0$ para todo $x,y\in A$. Si además se cumple que $\|x\|=1$ para todo $x\in C$, se dice que el sistema $C$ es *ortonormal*.

:::

Es obvio que todo sistema ortogonal es linealmente independiente.

::: {.definition #unnamed-chunk-243}
Dado un conjunto $C\subseteq\mathcal{H}$, el conjunto de todas las *combinaciones lineales finitas* de $C$ lo denotamos por  $$S(C)=\left\lbrace \sum_{i=1}^{n} c_{i}x_{i}: n\in\mathbb{N}, c_{i}\in\mathbb{R}\mbox{ y } x_{i}\in C \right\rbrace .$$
Decimos que $C$ es un *sistema completo* si $S(C)$ es denso en $\mathcal{H}$.

:::

El proceso de ortogonalización de Gram-Schmidt consiste en construír, a partir de una familia linealmente independiente de un espacio vectorial con producto interno, un sistema ortogonal, que además generan los mismos subespacios. Recordemos esto a detalle.

Sea $X$ un espacio vectorial con producto interno $(\cdot,\cdot)$. Sea $\{x_{1},x_{2},\cdots \}$ un conjunto linealmente independiente. Hallaremos $\{\phi_{1},\phi_{2},\cdots \}$ un sistema ortogonal con la propiedad siguiente: $\phi_{n}$ es combinación lineal de $x_{1},\cdots, x_{n}$ y $\left\langle x_{1},\cdots, x_{n}\right\rangle =\left\langle  \phi_{1},\cdots,\phi_{n}\right\rangle $, es decir, el subespacio generado por $\{x_{1},\cdots, x_{n}\}$ coincide con el subespacio generado por $\{\phi_{1},\cdots,\phi_{n}\}$.
El sistema ortogonal es construído así
$\phi_{1}=x_{1}$ y para $n>1$ se pone $\phi_{n}=x_{n}+\sum_{k=1}^{n-1}\frac{(x_{n},\phi_{k})}{\|\phi_{k}\|^{2}}\phi_{k}.$

::: {.example #unnamed-chunk-244}
Definamos las siguientes funciones en $L^{2}[0,1]$, para cada $n\in\mathbb{N}$
$$R_{n}(t)=(-1)^{k} \mbox{ si } t\in\frac{k}{2^{n}},\frac{k+1}{2^{n}} k=0,\cdots,2^{n}-1$$
	A $R_{n}$ se le llama la $n$-ésima *función de Rademacher*. Las funciones de Rademacher forman un sistema ortonormal en $L^{2}[0,1]$.

:::

::: {.theorem #unnamed-chunk-245}
Sea $\mathcal{H}$ un espacio de Hilbert. Si $\mathcal{H}$ es separable, es decir, contiene un subconjunto denso numerable; entonces todo sistema ortogonal en $\mathcal{H}$ es numerable.

:::

::: {.theorem #unnamed-chunk-246}
Sea $\mathcal{H}$ un espacio de Hilbert separable. Entonces $\mathcal{H}$ posee un sistema ortonormal completo.

:::
::: {.proof}
Sea $(x_{n})_{n}$ un subconjunto denso numerable de $\mathcal{H}$. Consideremos el subconjunto $(y_{n})_{n}\subseteq (x_{n})_{n}$ linealmente independiente maximal. Es claro que $(y_{n})_{n}$ es un sistema completo. Aplicando el proceso de ortogonalización de Gram-Schmidt y normalizando, se obtiene en sistema ortonormal completo.

:::

::: {.example #unnamed-chunk-248}
La familia $1, \cos x, \sen x,\cdots, \cos nx, \sen nx,\cdots$ es un sistema ortogonal completo. Y $\frac{1}{\sqrt{2\pi}},\frac{1}{\sqrt{\pi}}\cos x,\frac{1}{\sqrt{\pi}}\sen x, \cdots,\frac{1}{\sqrt{\pi}}\cos nx,\frac{1}{\sqrt{\pi}}\sen nx, \cdots$ es un sistema ortonormal completo.

:::

::: {.example #unnamed-chunk-249}
Los **polinomios de Legendre** $P_{n}(x)=\frac{1}{2^{n}n!}\frac{d^{n}}{dx^{n}}[(x^{2}-1)^{n}]$ con $n=0,1,2,\cdots$ son ortogonales en $L^{2}[-1,1]$. La familia $\sqrt{\frac{1}{2}(2n+1)}P_{n}(x)$ es una familia ortonormal.

:::

::: {.definition #unnamed-chunk-250}
Sea $\mathcal{H}$ un espacio de Hilbert separable y sea $(\phi_{n})_{n\in\mathbb{N}}$ un sistema ortonormal en $\mathcal{H}$. Sea $x\in\mathcal{H}$, los *coeficientes de Fourier* de $x$ respecto del sistema $(\phi_{n})_{n\in\mathbb{N}}$ se definen como sigue:
	$$\widehat{x}_{n}=(x,\phi_{n})$$
a cada $x_{n}$ se le llama el *$n$-ésimo coeficiente de Fourier* de $x$.

:::

En $\mathbb{R}^{n}$, la distancia de un punto a un plano es la longitud del segmento de recta perpendicular del punto al plano. Esta noción se puede generalizar en los espacios de Hilbert, como sigue.

::: {.proposition #unnamed-chunk-251}
Sea $(\phi_{n})_{n}$ un sistema ortonormal en $H$. Sean $x\in H$ y $\lambda_{1},\cdots, \lambda_{2}$ números reales cualesquiera. Entonces se tiene que 
$$\left\|x-\sum_{i=1}^{n}\widehat{x_{i}}\phi_{i} \right\|\leq \left\|x-\sum_{i=1}^{n}\lambda_{i}\phi_{i} \right\|.$$

:::
::: {.proof}
$$\begin{array}{ll}
	\left\|x-\sum_{i=1}^{n}\lambda_{i}\phi_{i} \right\|^{2}&=\left(x-\sum_{i=1}^{n}\lambda_{i}\phi_{i},x-\sum_{i=1}^{n}\lambda_{i}\phi_{i} \right)\\
	&=\|x\|^{2}-2\sum_{i=1}^{n}(x,\lambda_{i}\phi_{i})+\sum_{i=1}^{n}\sum_{j=1}^{n} (\lambda_{i}\phi_{i},\lambda_{j}\phi_{j})\\
	&=\|x\|^{2}-2\sum_{i=1}^{n}\lambda_{i}\hat{x_{i}}+\sum_{i=1}^{n} \lambda_{i}^{2}.
	\end{array}$$
	Es decir,
	$$\left\|x-\sum_{i=1}^{n}\lambda_{i}\phi_{i} \right\|^{2}=\|x\|^{2}-\sum_{i=1}^{n} \widehat{x_{i}}^{2}+\sum_{i=1}^{n} (\lambda_{i}-\widehat{x_{i}})^{2},$$
por lo tanto, $\left\|x-\sum_{i=1}^{n}\lambda_{i}\phi_{i} \right\|^{2}$ toma su valor mínimo cuando $\sum_{i=1}^{n} (\lambda_{i}-\widehat{x_{i}})^{2}=0$
esto es cuando $\lambda_{i}=\widehat{x_{i}}$ para todo $i$.

:::

Esta proposición nos dice que la mejor aproximación en norma a $x$ es la combinación lineal $\sum_{i=1}^{n} \widehat{x_{i}}\phi_{i}$, es decir, con los coeficientes de Fourier.

::: {.proposition #unnamed-chunk-253 name="Desigualdad de Bessel"}
Sean $\mathcal{H}$ un espacio de Hilbert separable y $(\phi_{n})_{n}$ un sistema ortonormal en $\mathcal{H}$. Dado $x\in\mathcal{H}$, se tiene que 
$$\sum_{k\in\mathbb{N}} (\widehat{x_{k}})^{2}\leq \|x\|^{2}.$$

:::
::: {.proof}
Tal como en la prueba de la proposición anterior, se tiene que 
$$\left\|x-\sum_{k=1}^{N}\widehat{x_{k}}\phi_{k} \right\|^{2}=\|x\|^{2}-\sum_{k=1}^{N} \widehat{x_{k}}^{2}\mbox{ para todo } N$$
de donde se sigue el resultado.

:::

Veamos una carcaterización de un sistema ortogonal completo.

::: {.theorem #unnamed-chunk-255}
Sea $\mathcal{H}$ un espacio de Hilbert y $(\phi_{n})_{n}$ un sistema ortonormal en $\mathcal{H}$. Las siguientes condiciones son equivalentes:

(i.) $(\phi_{n})$ es un sistema completo.

(ii.) Para todo $x\in\mathcal{H}$, las sumas parciales $\sum_{i=1}^{N} \widehat{x_{i}}\phi_{i}$ convergen a $x$ en norma, es decir,
		$$x=\sum_{i\in\mathbb{N}} (x,\phi_{i})\phi_{i}.$$
		
(iii.) Se tiene que $$\sum_{i\in\mathbb{N}} |(x,\phi_{i})|^{2}=\|x\|^{2} \mbox{ (Igualdad de Parseval)}.$$


:::
::: {.proof}
Es claro que $ii$ implica $i$. Ahora, supongamos que $(\phi_{n})$ es un sistema completo. Sea $x\in\mathcal{H}$. Dado $\epsilon>0$, existen $N\in\mathbb{N}$ y $c_{1}, \cdots, c_{N}$ tales que $\sum_{i=1}^{N} c_{i}\phi_{i}$ tal que 
$$\left\|x-\sum_{i=1}^{N} c_{i}\phi_{i} \right\| <\epsilon,$$
si $\sum_{i=1}^{N} (x,\phi_{i})\phi_{i}$ es la correspondiente suma parcial de Fourier de $x$, entonces
$$\left\| \sum_{i=1}^{N} (x,\phi_{i})\phi_{i} -x\right\| \leq \left\| x--\sum_{i=1}^{N} c_{i}\phi_{i} \right\|$$
de donde se obtiene $ii.$
Ahora, veamos que $ii$ es equivalente a $iii$; sea $S_{n}=\sum_{i=1}^{n} (x,\phi_{i})\phi_{i}$, entonces
$$\|S_{n}-x\|^{2}=\|x\|^{2}-\sum_{i=1}^{n} |(x,\phi_{i})|^{2}$$
esto es 
$$\|S_{n}-x\|^{2}\xrightarrow[n\to\infty]{} 0 \Leftrightarrow \sum_{i=1}^{n}|(x,\phi_{i})|^{2}\xrightarrow[n\to\infty]{}\|x\|^{2}.$$

:::

::: {.remark}
La serie $\sum_{i\in\mathbb{N}} (x,\phi_{i})\phi_{i}$ es llamada la serie de Fourier de $x$ respecto del sistema $(\phi_{n})_{n}$.
Se puede demostrar que las afirmaciones del teorema también son equivalentes a las siguientes dos proposiciones:

(iv.) Si $x,y\in\mathcal{H}$, entonces $(x,y)=\sum_{n} (x,\phi_{n})(y,\phi_{n})$.

(v.) Si $x\in\mathcal{H}$ es ortogonal a $\phi_{n}$ para todo $n$, entonces $x=0$.


Las condiciones $i$ y $v$ generalizan la noción de bases ortonormales de espacios de dimensión finita a espacios de Hilbert, razón por la cual se llaman *bases ortonormales* a los sistemas ortonormales completos.

:::

Para que una colección $(\beta_{n})_{n}$ de números reales sean los coeficientes de Fourier de un vector $x$ de un espacio de Hilbert $\mathcal{H}$, es necesario por la desigualdad de Bessel, que $\sum_{n\in\mathbb{N}} \beta^{2}<\infty$. El siguiente teorema nos indica que también es una condición suficiente. Por lo que existe una correspondecia biunívoca entre las sucesiones cuya serie de cuadrados es convergente y las bases ortonormales de un espacio de Hilbert.

::: {.theorem #unnamed-chunk-258 name="Riesz-Fischer"}
Sea $(\phi_{n})_{n\in\mathbb{N}}$ un sistema ortonormal en un espacio de Hilbert $\mathcal{H}$. Sea $(\beta_{n})_{n\in\mathbb{N}}$ una sucesión de números reales, tal que $\sum_{n\in\mathbb{N}} \beta^{2}<\infty$. Entonces existe $x\in\mathcal{H}$ cuyos coeficientes de Fourier son $\beta_{n}=(x,\phi_{n})$ y además las sumas parciales $\sum_{i=1}^{n}\beta_{i}\phi_{i}$ convergen a $x$ en norma.

:::
::: {.proof}
Sea $S_{n}=\sum_{i=1}^{n}\beta_{i}\phi_{i}$, entonces $\|S_{n+p}-S_{n}\|^{2}=\sum_{i=n+1}^{n+p}\beta_{i}^{2}$, por lo tanto $(S_{n})_{n\in\mathbb{N}}$ es de Cauchy en norma.	Como $\mathcal{H}$ es completo, existe $x\in\mathcal{H}$ tal que $S_{n}\xrightarrow[\|.\|]{} x$. Ahora bien, 
	$$(x_{i},\phi_{i})=(S_{n},\phi_{i})+(x-S_{n},\phi_{i})=\beta_{i}+(x-S_{n},\phi_{i})\mbox{ si } n\geq i.$$
Como
$$|(x-S_{n},\phi_{i})\leq \|x-S_{n}\|\|\phi_{i}\|=\|x-S_{n}\|\xrightarrow[n\to\infty]{}0,$$
entonces
$$(x_{i},\phi_{i})=\beta_{i}+\lim\limits_{n\to\infty} (x-S_{n},\phi_{i})=\beta_{i}\mbox{ para todo } i.$$

:::

::: {.corollary #unnamed-chunk-260}
Todo espacio de Hilbert $n$-dimensional es isomorfo a $\mathbb{R}^{n}$. Todo espacio de Hilbert separable, infinito dimensional es isomorfo a $l^{2}$.

:::

Demos una mirada a los funcionales lineales en los espacios de Hilbert.

::: {.definition #unnamed-chunk-261}
Sea $X$ un espacio vectorial normado sobre $\mathbb{R}$. Una función $T:X\longrightarrow\mathbb{R}$ es un *funcional lineal* si para todo $x,y\in X$ y para todo $\alpha,\beta\in\mathbb{R}$, $T(\alpha x+\beta y)=\alpha T(x)+\beta T(y)$. Decimos que $T$ *es continua en $x_{0}\in X$* si para todo $\epsilon>0$, existe $\delta>0$ tal que, si $\|x-x_{0}\|<\delta$, entonces $|T(x)-T(x_{0})|<\epsilon$. LLamamos a $T$ un *funcional acotado* si existe una constante $C$ tal que $|T(x)|<C\|x\|$ para todo $x\in X$

:::

::: {.remark}
Note que si $T$ es un funcional lineal continuo en un punto $x_{0}$, entonces lo es en todo punto del espacio vectorial.

:::

Veamos la relación entre la continuidad y la acotación:

::: {.lemma #unnamed-chunk-263}
Sea $T$ un funcional lineal en un espacio vectorial normado $X$. $T$ es continuo si y solo si $T$ es acotado.

:::
::: {.proof}
Supongamos que $T$ es continua en todo $x\in X$, en particular en $x_{0}=0$. Luego, existe $K>0$ tal que si $\|x\|\leq B$, entonces $|T(x)|\leq 1$. Como, para todo $x\in X$,
$$\left\|\frac{K}{\|x\|}x \right\| = K$$
por lo que 
$$|T(x)|=\frac{\|x\|}{K}T\left( \frac{B}{\|x\|}x\right) \leq \frac{1}{K}\|x\|$$
luego, $T$ es acotada.
Ahora, supongamos que $T$ es acotada. Sea $x_{0}\in X$ cualquiera, entonces
$$|T(x)-T(x_{0})|=|T(x-x_{0})|\leq K\|x-x_{0}\|.$$
Luego, dado $\epsilon>0$, tomando $\delta=\frac{\epsilon}{K}$, se obtiene que 
$$\|x-x_{0}\|<\delta\Rightarrow |T(x)-T(x_{0})|\leq K\|x-x_{0}\|\leq K\frac{\epsilon}{K}=\epsilon.$$

:::

::: {.definition #unnamed-chunk-265}
Sea $T$ un funcional lineal acotado en un espacio vectorial normado $X$. Llamamos norma del funcional $T$ a la menor cota $K$, y se denota por $\|T\|$. Es claro que:
$$\|T\|=\sup_{\substack{x\neq 0}}\frac{|T(x)|}{\|x\|}=\sup_{\substack{\|x\|=1}}{|T(x)|}.$$

:::
::: {.theorem #unnamed-chunk-266 name="Riesz"}
Sea $H$ un espacio de Hilbert separable y $T$ un funcional lineal acotado en $\mathcal{H}$. Entonces, existe $y\in\mathcal{H}$ tal que para todo $x\in\mathcal{H}$, $T(x)=(x,y)$. Además, se tiene que $\|T\|=\|y\|$.

:::
::: {.proof}
Sea $(\phi_{n})_{n}$ un sistema ortonormal completo en $\mathcal{H}$. Construímos la siguiente sucesión
$b_{n}=T(\phi_{n})$ para cada $n\in\mathbb{N}$. Entonces, para cada $n$, se tiene 
$$\begin{array}{ll}
	\sum_{k=1}^{n}b_{k}^{2}&=T(\sum_{k=1}^{n}b_{k}\phi_{k})\\
	&\leq \|T\|\left\|\sum_{k=1}^{n}b_{k}\phi_{k} \right\| \\
	&\leq \|T\|\left( \sum_{k=1}^{n}b_{k}^{2} \right) ^{\frac{1}{2}}
\end{array}.$$
Luego, para todo $n$, $\sum_{k=1}^{n}b_{k}^{2}\leq \|T\|^{2}$ y así $\sum_{k=1}^{n}b_{k}^{2}<\infty$. Por lo tanto, existe $y\in \mathcal{H}$ tal que 
$$y=\sum_{k=1}^{\infty}b_{k}\phi_{k}\mbox{ y que }\|y\|\leq\|T\|.$$
Sea $x\in\mathcal{H}$, entonces
$$x=\sum_{k\in\mathbb{N}}(x,\phi_{n})\phi_{n}$$
luego,
$$\begin{array}{ll}
	T(x)&=\lim\limits_{n\to\infty} T\left(\sum_{k=1}^{n}(x,\phi_{k})\phi_{k} \right) \\
	&=\lim\limits_{n\to\infty} \sum_{k=1}^{n}(x,\phi_{k})b_{k}  \\
	&=\lim\limits_{n\to\infty} \sum_{k=1}^{n}(x,\phi_{k})(y,\phi_{k}) \\
	&=(x,y)
\end{array}.$$
Ahora, por la desigualdad de Cauchy-Schwarz
$$T(x)=|(x,y)|\leq \|x\|\|y\|$$
por lo tanto $\|T\|\leq \|y\|$ y así se concluye que $\|T\|=\|y\|$.

:::

<!--chapter:end:051-tipos-de-convergencia.Rmd-->

# DIFERENCIACION E INTEGRACIÓN

En este capítulo estudiaremos las condiciones necesarias para obtener un resultado análogo al teorema fundamental del cálculo usando la integral de Lebesgue en lugar de la integral de Riemann. Para alcanzar este objetivo primero estudiaremos las funciones monótonas, las funciones de variación acotada y las funciones absolutamente continuas.

## Funciones monótonas

::: {.definition #unnamed-chunk-268}
Dada una función $f:(a,b)\longrightarrow\mathbb{R}$ y $x\in(a,b)$, definimos las *derivadas de Dini de $f$ en el punto $x$* como sigue:

(i.) $D^{+}f(x)=\limsup_{h\to 0^{+}}\frac{f(x+h)-f(x)}{h},$
  
(ii.) $D_{+}f(x)=\liminf_{h\to 0^{+}}\frac{f(x+h)-f(x)}{h},$
  
(iii.) $D^{-}f(x)=\limsup_{h\to 0^{+}}\frac{f(x)-f(x-h)}{h},$
  
(iv.) $D_{-}f(x)=\liminf_{h\to 0^{+}}\frac{f(x)-f(x-h)}{h},$

Diremos que $f$ es *derivable en $x$* si $D^{+}f(x)=D_{+}f(x)=D^{-}f(x)=D_{-}f(x)\in\mathbb{R}$. En este caso denotamos a este valor $Df(x)=f´(x)$.
Si $D^{+}f(x)=D_{+}f(x)$, decimos que $f$ *es derivable (Dini) por la derecha en $x$* y lo denotamos por $f´_{+}(x)$. Si $D^{-}f(x)=D_{-}f(x)$, decimos que $f$ *es derivable (Dini) por la izquierda en $x$* y lo denotamos por $f´_{-}(x)$.

:::

::: {.remark}
Las derivadas de Dini siempre existen, aunque pueden valer $\infty$ o $-\infty$.
Es claro que uan función $f$ es derivable en $x$ (en el sentido de Dini) si y solo si es derivable en el sentido usual, es decir, $f \mbox{ es derivable (Dini) en }x \mbox{ si y solo si } \lim\limits_{h\to 0}\frac{f(x+h)-f(x)}{h}\mbox{ existe}$.

:::

::: {.definition #unnamed-chunk-270}
Dado $E\subseteq\mathbb{R}$ un conjunto de números reales. Decimos que $\mathcal{I}$ una colección de intervalos no degenerados es un *cubrimiento de Vitali* de $E$ si para todo $\epsilon>0$ y para todo $x\in E$, existe un intervalo $I\in\mathcal{I}$ tal que $x\in I$ y $l(I)<\epsilon$.

:::

El siguiente teorema es conocido como el *Lema de Vitali*.

::: {.theorem #unnamed-chunk-271 name="Lema de Vitali"}
Sea $E\subseteq\mathbb{R}$ con $m^{\ast}(E)<\infty$. Si $\mathcal{I}$ es un cubrimiento de Vitali de $E$, entonces existe una familia numerable $(I_{n})_{n\in\mathbb{N}}\subseteq \mathcal{I}$ disjunta dos a dos, tal que $$m^{\ast}\left(E\backslash \bigcup_{n\in\mathbb{N}}I_{n} \right)=0.$$

:::
::: {.proof}
Sea $\mathcal{O}$ un conjunto abierto que contiene al conjunto $E$, es decir, $E\subseteq \mathcal{O}$. Podemos suponer, que $\forall I\in \mathcal{I}$ $i\subseteq\mathcal{O}$. En caso contrario, consideraremos la colección $\{I\in \mathcal{I}: I\subseteq\mathcal{O}\}$, que resulta ser también un cubrimiento de Vitali del conjunto $E$. Construíremos una colección numerable de intervalos que cumpla las condiciones deseadas. Supongamos, sin pérdida de generalidad, que los intervalos en $\mathcal{I}$ son cerrados, ya que la medida de los extremos de un intervalo es cero.
Sea $I_{1}\in\mathcal{I}$, cualquiera de los elementos de la familia. Si $E\subseteq I_{1}$, queda demostrado el teorema, ya que $m^{\ast}(E\backslash I_{1})=0$. Si este no es el caso, existe $x\in E\backslash I_{1}$; como $\mathcal{I}$ es un cubrimiento de Vitali, existe $I_{2}\in\mathcal{I}$, disjusto de $I_{1}$, tal que $x\in I_{2}$ y cuya longitud sea mayor a la mitad de la longitud de $I_{1}$, es decir $l(I_{2})>\frac{l(I_{1})}{2}$. Ahora, supongamos que hemos elegido $m$ intervalos disjuntos $I_{1},\cdots, I_{m}$. Si $E\subseteq \bigcup_{n\leq m} I_{n}$, se tiene el resultado. En caso contrario, existe $x\in E\backslash \bigcup_{n\leq m} I_{n}$. Elegimos $I_{m+1}\in\mathcal{I}$ disjunto de todos los intervalos anteriores, tal que $x\in I_{m+1}$ y $l(I_{m+1})>\frac{r_{m}}{2}$, donde 
$$r_{m}=\sup\left\lbrace l(J): x\in J \mbox{ y } J\cap I_{n}=\emptyset \forall n\in\{1,\cdots,m\} \right\rbrace $$
esto es posible ya que cada $I_{n}$ es cerrado. Siguiendo con este proceso, construímos la familia disjunta  $(I_{n})_{n\in\mathbb{N}}$ tal que $m^{\ast}\left(E\backslash \bigcup_{n\in\mathbb{N}}I_{n} \right)=0$. Supongamos que 
$$m^{\ast}\left(E\backslash \bigcup_{n\in\mathbb{N}}I_{n} \right)=\delta>0.$$
Como $m\left( \bigcup_{n\in\mathbb{N}} I_{n}\right)=\sum_{n\in\mathbb{N}}  l(I_{n})\leq m(\mathcal{O})<\infty$, existe $N\in\mathbb{N}$ tal que $\sum_{n>N}  l(I_{n})<\frac{\delta}{5}$. Sea $F=E\backslash\bigcup_{n\leq N} I_{n}$, entonces $m^{\ast}(F)\geq\delta$ (por monotonía). Por otro lado, para $x\in F$, existe $J\in\mathcal{I}$ disjunto de $bigcup_{n\leq N} I_{n}$ tal que $x\in J$. Además $J$ debe intersectar a algún $I_{k}$, con $k>N$. En caso contrario, como $l(J)\leq r_{p}<2l(I_{k+1})$, ya que $l(I_{k+1})\to 0$, cuando $k\to\infty$, $J$ sería degenerado. Sea $i$ el menor entero mayor que $N$ tal que $J\cap I_{i}\neq \emptyset$. Como $J\cap I_{n}=\emptyset$ para todo $n<i$, se tiene que $l(J)\leq r_{i-1}<2l(I_{i})$; sea $x_{i}$ el punto medio de $I_{i}$, entonces
$$|x-x_{i}|\leq l(J)+\frac{1}{2}l(I_{i})\leq \frac{5}{2} l(I_{i}).$$
Tomando intervalos  $H_{i}$, de centro $x_{i}$ y longitud $5l(I_{i})$, se tiene que $x\in H_{i}$, $F\subseteq \bigcup_{n\geq N+1} H_{n}$. Por lo tanto
$$m^{\ast}(F)\leq \sum_{n\geq N+1} l(H_{n})=5\sum_{n\geq N+1} l(I_{n})<\delta.$$

:::

::: {.remark}
Si la medida del conjunto es infinita, $m^{\ast}(E)=\infty$, se puede tomar $E=\bigcup_{i\in\mathbb{N}}E_{i}$ tal que cada $E_{i}$ tiene medida finita y $E_{i}\cap E_{j}=\emptyset$ siempre que $i\neq j$. Por lo que el teorema también es cierto si $m^{\ast}(E)=\infty$.

:::

En ocaciones el Lema de Vitali se enuncia como el siguiente resultado, que es un corolario inmediato del teorema anterior.

::: {.corollary #unnamed-chunk-274}
Sea $E\subseteq\mathbb{R}$ con $m^{\ast}(E)<\infty$. Si $\mathcal{I}$ es un cubrimiento de Vitali de $E$, entonces, para todo $\epsilon>0$, existe una colección finita $I_{1},\cdots, I_{N}$ de intervalos disjuntos de $\mathcal{I}$, tales que $$m^{\ast}\left(E\backslash\bigcup_{i=1}^{N}I_{i} \right) <\epsilon.$$

:::

::: {.theorem #unnamed-chunk-275 name="Lebesgue"}
Sea $f:(\alpha, \beta)\longrightarrow\mathbb{R}$ una función monótona creciente. Entonces $f$ es derivable en c.t.p de $(\alpha,\beta)$. La derivada de $f$, $f´$ es medible Lebesgue y se cumple que si $[a,b]\subseteq (\alpha,\beta)$, entonces
$$\int_{a}^{b} f´(x)dx\leq f(b)-f(a).$$

:::
::: {.proof}
Sea $E_{u,v}=\{x\in(\alpha,\beta): D^{+}f(x)>u>v>D_{-}f(x)\}$ para $u,v\in\mathbb{Q}$. Y consideremos 
$$E=\bigcup_{u,v\in\mathbb{Q}} E_{u,v}.$$
Probemos que $m^{\ast}(E_{u,v})=0$. Sea $s=m^{\ast}(E_{u,v})$ y $\epsilon>0$. Existe un abierto $\mathcal{O}$ tal que $E_{u,v}\subseteq\mathcal{O}$ y $m(\mathcal{O})<s+\epsilon$. Para cada $x\in E_{u,v}$, existe $h_{x}$ tal que $[x-h_{x},x]\subseteq\mathcal{O}$ y $f(x)-f(x-h_{x})<vh_{x}$. La colección de estos intervalos forman un cubrimiento de Vitali de $E_{u,v}$, por lo tanto existe una colección finita de dichos intervalos, $I_{1},\cdots, I_{N}$ tal que $m^{\ast}\left(E_{u,v}\backslash\bigcup_{i=1}^{N} I_{i} \right)<\epsilon$, más aún, podemos hallar una colección finita de estos intervalos tales que $A\subseteq \bigcup_{i=1}^{N}\overset{\circ}{I_{i}}$ y $m^{E_{u,v}\backslash A}<\epsilon$. De esta forma
$$\sum_{i=1}^{N} (f(x_{i})-f(x_{i}-h_{x_{i}}))<v\sum_{i=1}^{N} h_{x_{i}}<v m(\mathcal{O})<v(s+\epsilon).$$
Además, para cada $y\in A$, se tiene que $D^{+}f(y)>u$. Por lo que existe $h_{y}$ tal que $(y,y+h_{y})$ es subconjunto de algún $I_{i}$ y $f(y+h_{y})-f(y)>uh_{y}$. Con un procedimiento análogo, podemos hallar una colección finita de intervalos $J_{1},\cdots,J_{M}$ tales que contienen a un subconjunto de $A$ de medida exterior mayor que $s-2\epsilon$. Por lo tanto,
$$\sum_{i=1}^{M} (f(y_{i})-f(y_{i}-h_{y_{i}}))>u\sum_{i=1}^{M} h_{y_{i}}>u m(\mathcal{O})>u(s+2\epsilon).$$
Como cada $J_{j}$ está contenido en algún $I_{i}$, como $f$ es creciente
$$\sum_{i: J_{i}\subseteq I_{j}}f(y_{i}+h_{y_{i}})-f(y_{i})\leq f(x_{j})-f(x_{n}-h_{x_{n}})$$
sumando sobre $j$, se obtiene
$$\sum_{j=1}^{N} f(x_{j})-f(x_{n}-h_{x_{n}})\geq \sum_{i=1}^{M}f(y_{i}+h_{y_{i}})-f(y_{i})$$
de donde se tiene que $v(s+\epsilon)>u(s-2\epsilon)$, por lo tanto, como $u>v$, $s=0$.
Análogamente se muestra que $\{x\in(\alpha,\beta): D^{-+}f(x)>D_{+}f(x)\}$ tiene medida cero.
De esto se puede concluír que las derivadas de Dini coinciden en casi todo punto de $(\alpha,\beta)$, por lo tanto la función $f$ será derivable donde $g(x)=\frac{f(x+h)-f(x)}{h}$ sea finita.
Sea $g_{n}(x)=n\left(f\left(x+\frac{1}{n} \right) -f(x) \right) $, cada $g_{n}$ es medible y $g_{n}(x)\to g(x)$, por lo tanto $g$ es medible. Sea $[a,b]\subseteq(\alpha,\beta)$ y redefinamos $f(x)=f(b)$ siempre que $x>b$. Como $f$ es creciente, para cada $n$, $g_{n}\geq 0$. Por el lema de Fatou, se tiene 
$$\int_{a}^{b} g(x)dx\leq \liminf_{n\to\infty}\int_{a}^{b} g_{n}(x)dx=\liminf_{n\to\infty}\left( \int_{a}^{b}f\left(x+\frac{1}{n}\right)dx -\int_{a}^{b} f(x)dx\right)$$
Como $\int f\left( x+\frac{1}{n}\right) \chi_{[a,b]}(x)dx=\int f\left( x\right) \chi_{[a+\frac{1}{n},b+\frac{1}{n}]}(x)dx$, nos queda
$$\int_{a}^{b} g(x)dx\leq \liminf_{n\to\infty} \left[ n\int_{b}^{b+\frac{1}{n}} f(x)dx- n int_{a}^{a+\frac{1}{n}}f\left(x\right)dx \right]=\liminf_{n\to\infty} \left[ n\int_{b}^{b+\frac{1}{n}} f(b)dx- n int_{a}^{a+\frac{1}{n}}f\left(x\right)dx \right]$$
y como $f$ es una función creciente, se tiene que
$$\int_{a}^{b} g(x)dx\leq\liminf_{n\to\infty} \left[ nf(b)\frac{1}{n}- n int_{a}^{a+\frac{1}{n}}f(a)dx \right]=f(b)-f(a).$$
De aquí se concluye que $g$ es integrable en $[a,b]$ y así finita en c.t.p. de $[a,b]$, por lo tanto finita en c.t.p. de $(\alpha,\beta_{n})$. De esto se sigue que $f$ es derivable en c.t.p. de $(\alpha,\beta_{n})$ y que 
$$\int_{a}^{b} f´(x)dx\leq f(b)-f(a).$$

:::

::: {.remark}
Recordemos que si $\phi$ es la función de Cantor, se tiene que $\phi(1)-\phi(0)\neq 0$. Pero $\phi´=0$. Esto muestra que, en general, si $f$ es monótona, no puede asegurarse que $\int_{a}^{b}f´(x)dx=f(b)-f(a)$.

:::

Hay otra demostarción del teorema de derivación de Lebesgue, basado en el llamado "Lema del sol naciente".

Cerramos esta sección enunciando un teorema debido a Fubini, sobre derivación de series de funciones monótonas. La demostración se sigue del teorema de derivación de Lebesgue.

::: {.theorem #unnamed-chunk-278}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones monótonas crecientes definidas en $[a,b]$ tal que la serie $\sum_{n\in\mathbb{N}} f_{n}(x)$ converge puntualmente en $[a,b]$. Sea $f(x)=\sum_{n\in\mathbb{N}} f_{n}(x)$. Entonces 
$\sum_{n\in\mathbb{N}} f´_{n}(x)=f´(x)$ en c.t.p. de $[a,b]$.

:::

## Funciones de variación acotada

::: {.definition #unnamed-chunk-279}
Sea $f:[a,b]\longrightarrow\mathbb{R}$. Decimos que $f$ es una *función de variación acotada* en $[a,b]$ si
$$\underset{\rho\in Par[a,b]}{\sup}\sum_{i=1}^{n_{\rho}}|f(x_{i})-f(x_{i-1})|<\infty$$
	donde $Par[a,b]$ es el conjunto de todas las particiones de $[a,b]$ y $a=x_{0},\cdots,x_{n_{\rho}}=b$.

:::

::: {.remark}
Se puede demostrar fácilmente que las funciones monótonas son de variación acotada. Si $f$ es creciente y $\rho$ es la partición determinada por los puntos $a=x_{0},\cdots, x_{n}=b$, se tiene que 
$$\sum_{i=1}^{n}|f(x_{i})-f(x_{i-1})|=\sum_{i=1}^{n}f(x_{i})-f(x_{i-1})=f(b)-f(a)$$
Cuando la función es decreciente, la demostración es análoga.
Si una función $f$ es de variación acotada, entonces es acotada. Supongamos que $V=\sup_{\substack{\rho\in Par[a,b]}}\sum_{i=1}^{n_{\rho}}|f(x_{i})-f(x_{i-1})|$. Para la partición $x_{0}=a,x,x_{2}=b$, se tiene que $|f(x)-f(a)|+|f(b)-f(x)|\leq V$, por lo tanto $|f(x)-f(a)|\leq V$. De donde se sigue que $|f(x)|\leq f(a)+ V$. 
El recíproco no es cierto en general; un ejemplo es la función $sen\left(\frac{1}{x}\right)$ en el intervalo $(0,1]$, y $f(0)=0$. Basta notar que $\lim\limits_{k\to\infty}\sum_{i=1}^{k}|sen\left(\frac{1}{x_{i+1}}\right)-  sen\left(\frac{1}{x_{i}}\right)|\to\infty.$
Otra observación se deduce del teorema del valor medio. Si $f$ es continua en $[a,b]$, derivable en $(a,b)$ y su derivada $f´$ es acotada en $(a,b)$, entonces es $f$ es de variación acotada.

:::

::: {.definition #unnamed-chunk-281}
Dada $f:\mathbb{R}\longrightarrow\mathbb{R}$, la variación total de $f$ sobre un intervalo finito $I$, está defindo como $$V_{f}(I)=\sup_{\substack{\rho\in Par[I]}}\sum_{x_{i}\in\rho} |f(x_{i})-f(x_{i-1})|.$$

:::

::: {.remark}
Si $f$ es de variación acotada en $[a,b]$, para todo $c\in(a,b)$, se puede probar que $V_{f}(a,b)=V_{f}(a,c)+V_{f}(c,b)$.

:::

Considermos la función $x\mapsto V_{f}(a,x)$, para todo $x\in(a,b)$, cuando $f$ es de variación acotada en $[a,b]$. El siguiente resultado nos muestra un interesante hecho sobre esta función.

::: {.proposition #unnamed-chunk-283}
Sea $f$ de variación acotada en $[a,b]$. Sea $V:[a,b]\longrightarrow\mathbb{R}$ la función
$$V(x)=\left\lbrace \begin{array}{ll}
V_{f}(a,x)&\mbox{ si } a<x\leq b\\
0&\mbox{ si }x=a
\end{array}\right. $$
Se tiene que:

(i.) $V$ es creciente en $[a,b]$.

(ii.) $V-f$ es creciente en $[a,b]$.


:::
::: {.proof}
Sean $x,y\in[a,b]$ tales que $x\leq y$. Supongamos que $\rho$ es la partición $\{a=x_{0}<\cdots,x_{n}=x\}$, del intervalo $(a,x)$. Si completamos la partición con el punto $y$, se tiene que una partición del intervalo $(a,y)$ y
$$\sum_{i=1}^{n}|f(x_{i})-f(x_{i-1})|\leq \sum_{i=1}^{n}|f(x_{i})-f(x_{i-1})|+|f(y)-f(x)|\leq V_{f}(a,y)$$
como esto ocurre para cualquier partición $rho$ del intervalo $(a,x)$, se tiene que 
$$V_{f}(a,x)\leq V_{f}(a,y).$$
Por otro lado, como $f(y)-f(x)\leq V_{f}(x,y)$, se tiene que
$$(V-f)(y)-(V-f)(x)=V(y)-V(x)-(f(y)-f(x))\geq V_{f}(a,y)-V_{f}(a,x)-V_{f}(x,y)$$
Por la observación anterior, se sigue el resultado.

:::

De la proposición se sigue inmediatamente que si $f$ es de variación acotada en $[a,b]$, se escribe como diferencia de funciones monótonas crecientes. Ahora, si $f$ es la diferencia de funciones monótonas crecientes $g_{1}$ y $-g_{2}$, se tiene que $V_{f}[a,b]\leq V_{g_{1}}[a,b]-V_{g_{2}}[a,b]=g_{1}(b)-g_{1}(a)+g_{1}(b)-g_{1}(a)$. Esto lo resume el siguiente corolario.

::: {.corollary #unnamed-chunk-285}
Sea $f:[a,b]\longrightarrow\mathbb{R}$. Entonces $f$ es de variación acotada en $[a,b]$ si y solo si $f$ se escribe como diferencia de funciones monótonas.

:::

Del teorema de derivaciÓn de Lebesgue, se tiene que las funciones monótonas en $I=(\alpha,\beta)$ tienen derivada en c.t.p. de $I$ y que 
$$\int_{a}^{b}f´(x)dx\leq f(b)-f(a)\mbox{ para todo } [a,b]\subseteq I$$
luego, del corolario anterior se tiene el siguiente resultado

::: {.corollary #unnamed-chunk-286}
Sea $f:[a,b]\longrightarrow\mathbb{R}$ de variaciÓn acotada en $[a,b]$, entonces $f$ es derivable en c.t.p. de $[a,b]$

:::

## De la Integral indefinida.  Continuidad Absoluta

Que una función sea de variación acotada es una condición necesaria para que una función sea la integral indefinida de su integral.

::: {.proposition #unnamed-chunk-287}
Sea $f:[a,b]\longrightarrow\mathbb{R}$ integrable Lebesgue. Entonces la función 
$$F(x)=\int_{a}^{x} f(t)dt \mbox{ para todo } x\in[a,b]$$
es uniformemente continua y de variación acotada en $[a,b]$.

:::
::: {.proof}
Note que $$F(x)=\int_{a}^{x}f^{+}(t)dt-\int_{a}^{x}f^{-}(t)dt$$
es decir $F$ es la diferencia de dos funciones de variación acotada, por lo tanto $F$ es de variación acotada.
Por la continuaidad absoluta de la integral de Lebesgue, se sigue que $F$ es uniformemente continua.

:::

Podemos pensar que como $F$ es de variación acotada en $[a,b]$, entonces es derivable en casi todo punto de $[a,b]$, entonces ¿$F$ puede escribirse como la integral indefinida de su derivada? La respuesta es NO, ya que esto no es necesariamente cierto ni para una función continua. La función de Cantor es el contraejemplo de esto último.

::: {.lemma #unnamed-chunk-289}
Si $f$ es integrable en $[a,b]$ y para todo $x\in[a,b]$ $\int_{a}^{x} f(t)dt=0$. Entonces $f=0$ en c.t.p. de $[a,b]$.

:::
::: {.proof}
Consideremos el conjunto $E=\{x: f(x)>0 \}$. Supongamos que $m(E)>0$; entonces existe un conjunto cerrado $F\subseteq \mathbb{R}$ tal que $F\subseteq E$ y $m(F)>0$. Tomemos $O=(a,b)\backslash F$. Entonces 
$$\int_{a}^{b}f=\int_{F} f+\int_{O} f$$
por lo tanto
$$\int_{O}f=-\int_{F} f.$$
Como $F\subseteq E$  y es un conjunto de medida no nula, se tiene que $\int_{F} f\neq 0$.
Por otro lado, $O$ se puede escribir como una unión numerable y disjunta de intervalos abiertos, digamos $O=\bigcup_{n\in\mathbb{N}} (a_{n},b_{n})$ con $(a_{n},b_{n})\cap(a_{m},b_{m})=\emptyset$ siempre que $n\neq m$. Por lo tanto
$$\int_{O} f=\sum_{n\in\mathbb{N}} \int_{a_{n}}^{b_{n}} f\neq 0$$
lo que implica que existe $n\in\mathbb{N}$ tal que $\int_{a_{n}}^{b_{n}}f\neq 0$, por lo que $\int_{a}^{a_{n}}f\neq 0$ o $\int_{a}^{b_{n}} f\neq 0$ lo que es una contradicción.
Para el conjunto $\{x: f(x)<0 \}$, el razonamiento es análogo.

:::

::: {.theorem #unnamed-chunk-291}
Sea $f:[a,b]\longrightarrow\overline{\mathbb{R}}$ integrable Lebesgue. La función 
$$F(x)=c+\int_{a}^{x}f(t)dt, \mbox{ con } c\in\mathbb{R}$$ 
es derivable en casi todo punto de $[a,b]$ y $F´(x)=f(x)$ en c.t.p. de $[a,b]$.

:::
::: {.proof}
$F$ es derivable ya que es de variación acotada. Supongamos que $f$ es acotada en $[a,b]$. Sea $M\in\mathbb{R}$ la cota, es decir $|f(x)|\leq M$ para todo $x\in[a,b]$. Definamos, para cada $n\in \mathbb{N}$ una función 
$$f_{n}(x)=n\left[F\left(x+\frac{1}{n}\right)- F(x)\right].$$
Así, $f_{n}\to F´(x)$ cuando $n\to\infty$. Además
$$|f_{n}(x)=n\left|\int_{x}^{x+\frac{1}{n}} f(t)dt \right|\leq M n\frac{1}{n}=M.$$
Usando el teorema de convergencia dominada, para $d\in[a,b]$, se tiene que 
$$\begin{array}{ll}
\int_{a}^{d}F´(t)dt&=\lim\limits_{n\to\infty}\int_{a}^{d} f_{n}(x)dx\\
&=\lim\limits_{n\to\infty}\left[n\int_{d}^{d+\frac{1}{n}}F(x)dx -n\int_{a}^{a+\frac{1}{n}}F(x)dx\right]
\end{array}.$$
De la continuidad de $F$ se tiene que, dado $\epsilon>0$, sea $\delta>0$ tal que $|F(d)-F(d+x)|<\epsilon$. Entonces
$$\left|F(d)-\frac{1}{h}\int_{d}^{d+\frac{1}{h}}F(x)dx \right|\leq \frac{1}{h}\int_{d}^{d+\frac{1}{h}}|F(d)-F(x)|dx\leq h\frac{1}{h}\epsilon\mbox{ si }|h|<\delta$$
por lo tanto
$$F(d)=\lim\limits_{h\to 0}\frac{1}{h} \int_{d}^{d+h} F(x)dx.$$
Luego
$$\begin{array}{ll}
\int_{a}^{d}F´(t)dt&=\lim\limits_{n\to\infty}\int_{a}^{d} f_{n}(x)dx\\
&=F(d)-F(a)\\
&=\int_{a}^{d} f(x)dx
\end{array}.$$
Así, para todo $d\in[a,b]$ 
$$\int_{a}^{d} \left(F´(x)- f(x)\right) dx=0$$
Del lema anterior se tiene que $F´(x)=f(x)$ para casi todo punto de $[a,b]$.
Para el caso general, podemos suponer que $f\geq 0$. Definimos para cada $n\in\mathbb{N}$ $f_{n}=f\wedge n$. Entonces $f-f_{n}\geq 0$. Tenemos que $G_{n}(x)=\int_{a}^{x}(f-f_{n})(x)dx$ es creciente y por lo tanto derivable en c.t.p. Además $G´_{n}(x)\geq 0$. Del caso anterior, se tiene que
$$\frac{d}{dx}\int_{a}^{x} f_{n}(t)dt=f_{n}(x)\mbox{ en c.t.p.}$$
Luego $F´(x)=\frac{d}{dx}G_{n}+\frac{d}{dx}\int_{a}^{x} f_{n}(t)dt\geq f_{n}(x)$ c.s. Si $n\to\infty$, se sigue que $F´(x)\geq f(x)$ c.s. Y así
$$\int_{a}^{b} F´(x)d_{x}\geq \int_{a}^{b} f(x)dx=F(b)-F(a).$$
Por el teorema de derivación de Lebesgue, 
$$\int_{a}^{b} F´(x)d_{x}=F(b)-F(a)= \int_{a}^{b} f(x)dx.$$
Es decir,
$$\int_{a}^{b}(F´(x)-f(x))dx=0,$$
como $F´-f\geq 0$ se debe tener que 
$$F´(x)=f(x)\mbox{ c.s.}$$

:::

Este teorema no permite hallar una función $F$ integrable Lebesgue tal que $F´=f$ c.s. Pero puede haber más de una función que al derivarla sea igual a $f$ en casi todo punto. Supongamos que $F$ y $G$ son funciones tales que $F´=f$ c.s. y $G´=f$ c.s. entonces $(f-G)´=0$ en c.t.p. pero de esto no implica que $F=G+k$ c.s. donde $k$ es una constante. La función de Cantor es un ejemplo de esto.

::: {.definition #unnamed-chunk-293}
Dada $F:\mathbb{R}\longrightarrow\mathbb{R}$ una función continua y monótona, tal que $F´=0$ c.s. decimos que $F$ es una *función singular*.

:::

Si a una primitiva $F$, de una función integrable $f$ le sumamos una función singular $G$, obtenemos otra primitiva de $f$.

Por otro lado, para tener certeza de que para todo $x\in[a,b]$, $F(x)=F(a)+\int_{a}^{x} F´(t)dt$, cuando $F:[a,b]\longrightarrow\mathbb{R}$ es una función continua y derivable c.s. se debe pedir continuidad absoluta de la función $F$. Que $F$ sea de variación acotada es una condición necesaria, más no suficiente.

::: {.definition #unnamed-chunk-294}
Sea $I\subseteq\mathbb{R}$ un intervalo cualquiera. La función $f:I\longrightarrow\mathbb{R}$ es *absolutamente continua en un intervalo acotado* $[a,b]\subseteq I$ si para todo $\epsilon>0$, existe $\delta>0$ tal que si $(a_{i},b_{i})_{i=1}^{n}$ es una colección finita cualquiera de subintervalos disjuntos de $[a,b]$, tienen la propiedad:
$$\sum_{i=1}^{n} (b_{i}-a_{i})<\delta\Rightarrow \sum_{i=1}^{n}|f(b_{i})-f(a_{i})|<\epsilon.$$

:::

::: {.remark}
La continuidad absoluta implica la continuidad uniforme.

:::

La continuidad absoluta de la integral de Lebesgue, implica la continuidad absoluta de la integral indefinida, esto es,

::: {.proposition #unnamed-chunk-296}
Se $f$ es integrable Lebesgue en $[a,b]$ y $F(x)=F(a)+\int_{a}^{x} f(t)dt$, entonces $F$ es absolutamente continua.

:::
::: {.proof}
Sea $\epsilon>0$. Por la continuidad absoluta de la integral que, existe $\delta>0$ tal que 
$$m(A)<\delta\Rightarrow \int_{A} |f|dt<\epsilon\mbox{ para } A\subseteq[a,b].$$
Tomando $A=\bigcup_{i=1}^{n}(a_{i},b_{i})$, donde la familia $[(a_{i},b_{i})]_{i=1}^{n}$ es una familia disjunta de subintervalos tales que $\sum_{i=1}^{n}l(a_{i},b_{i})<\delta$, entonces 
$$\sum_{i=1}^{n}|F(b_{i})-F(a_{i})|=\sum_{i=1}^{n}\left| \int_{a_{i}}^{b_{i}}f(t)dt\right| \leq\sum_{i=1}^{n} \int_{a_{i}}^{b_{i}}|f(t)|dt=\int_{A}|f(t)|dt<\epsilon.$$

:::

Es fácil ver que una función absolutamente continua, es de variación acotada. 

::: {.proposition #unnamed-chunk-298}
Si $f$ es absolutamente continua en $[a,b]$, entonces es de variación acotada en $[a,b]$.

:::

::: {.lemma #unnamed-chunk-299}
Si $f$ es absolutamente continua en $[a,b]$ y $f´(x)=0$ en c.t.p. de $[a,b]$, entonces $f$ es constante.

:::
::: {.proof}
Sea $c\in[a,b]$. Sea $E\subseteq(a,c)$ tal que $m(E)=c-a$ y $f´(x)=0$ para todo $x\in E$. Sean $\epsilon$ y $\xi$ números reales positivos cualesquiera. Para cada $x\in E$ existe $h$ tal que $[x,x+h]\subseteq[a,c]$ y $|f(x+h)-f(x)|<\xi h$. Por el lema de Vitali, podemos hallar una colección finita $[x_{1},y_{1}],\cdots[x_{n},y_{n}]$ disjuntos dos a dos, tal que $E\backslash\subseteq\bigcup_{k=1}^{n}[x_{k},y_{k}]$ tiene medida menor que $\delta$ siendo este el que da cuenta de la continuidad absoluta de $f$ cuando consideramos el $\epsilon$ ya fijado. Podemos suponer que $a=y_{0}\leq x_{1}< y_{1}\geq \cdots\geq x_{n}<y_{n}=c=x_{n+1}$ y así $$\sum_{k=0}^{n} |x_{k+1}-y_{k}|<\delta.$$
Además, $$\sum_{k=1}^{n} |f(y_{k})-f(x_{k})|\leq \xi\sum_{k=1}^{n} (y_{k}-x_{k})<\xi(c-a)$$
Por otro lado, de la continuidad absoluta se tiene que
$$\sum_{k=0}^{n} |f(x_{k+1})-f(y_{k})|<\epsilon.$$
De este modo,
$$f(c)-f(a)=\sum_{k=0}^{n} |f(x_{k+1})-f(y_{k})|+\sum_{k=1}^{n} |f(y_{k})-f(x_{k})|\leq \epsilon+\xi(c-a).$$
De donde se sigue que $f(c)=f(a)$.

:::

Tenemos entonces que si $F:I\longrightarrow\mathbb{R}$ una función definida en un intervalo cualquiera $I$ es absolutamente continua, es de variación acotada y por lo tanto, es derivable en c.t.p. de $I$ y además puede escribirse como diferencia de funciones monótonas, esto es, $F=F_{1}-F_{2}$. Por lo que $|F´(x)|\leq F_{1}´(x)+F_{2}´(x)$ en c.t.p. Como $F_{1}´$ y $F_{2}´$ son integrables, entonces $F´$ también lo és. Con lo que se puede definir
$$G(x)=\int_{a}^{x} F´(t)dt\mbox{, para todo }[a,b]\subseteq I$$
con $G$ absolutamente continua. Sea $H=F-G$, entonces $H$ es absolutamente continua y $H´=F´-G´=0$ en c.t.p. Por el lema anterior, $H$ es constante. Así
$$F(x)=\int_{a}^{x} F^{'}(t)dt.$$
Ya se demostró que una integral indefinida, es decir, *una función $F:I\longrightarrow\mathbb{R}$ tal que existe $f:I\longrightarrow\mathbb{R}$ integrable tal que $F(b)-F(a)=\int_{a}^{b}f(t)dt$ para todo $[a,b]\subseteq I$*; es una función absolutamente continua.
Esto es una caracterización de las integrales indefinidas y es la demostración del siguiente teorema.

::: {.theorem #unnamed-chunk-301}
Una función $F:I\longrightarrow\mathbb{R}$ es una integral indefinida si y solo si es absolutamente continua.

:::

::: {.corollary #unnamed-chunk-302}
Toda función absolutamente continua es la integral indefinida de su derivada.

:::

## Cambio de variables

Este capítulo abordará de forma muy somera teoremas referidos al cambio de variables en la integral de Lebesgue.

Comencemos por la siguiente idea. Sea $(X,\mathcal{F},\mu)$ un espacio de medida y $(Y,\mathcal{G})$ un espacio medible. Sea $f:X\longrightarrow Y$ una función $\mathcal{F}$-medible. Definamos una medida en $Y$ de esta forma:
$$\nu(A)=\mu(f^{-1}(A))\mbox{ para cualquier } A\in\mathcal{G}.$$
En efecto, $\nu$ es una medida en $(Y,\mathcal{G})$. Como $f$ es medible, $f^{-1}(A)\in\mathcal{F}$ y $\mu(f^{-1}(A))\geq 0$, para todo $A\in\mathcal{G}$. Claramente, $\nu(\emptyset)=0$ y por último, como la función inversa se comporta bien bajo uniones, se tiene que $$\nu\left( \bigcup_{i\geq 1} E_{i}\right)=\mu\left(f^{-1}\left( \bigcup_{i\geq 1} E_{i}\right) \right)=\sum_{i\geq 1}\mu(f^{-1}(E_{i}))=\sum_{i\geq 1}\nu(E_{i})$$
cuando $(E_{i})_{i\geq 1}\subseteq \mathcal{G}$ es una familia disjunta.

::: {.theorem #unnamed-chunk-303}
Sea $f:(A,\mathcal{F},\mu)\longrightarrow(Y,\mathcal{G})$ medible respecto de $\mathcal{F}$ y $\mathcal{G}$. Sea $\nu=\mu\circ f^{-1}$. Entonces, si $g:(Y,\mathcal{G})\longrightarrow(\overline{\mathbb{R}},\mathcal{M})$ es una función medible, se tiene que 
	$$\int_{Y} g(y)d\nu(y)=\int_{X} g\circ f(x) d\mu(x).$$

:::
::: {.proof}
Comencemos por hacer la demostración para una función indicatriz. Supongamos que $g=\chi_{E}$ para algún conjunto medible $E\in\mathcal{G}$. Entonces
	$$(g\circ f)(x)=\left\lbrace\begin{array}{ll}
	1 &\mbox{ si } f(x)\in E\\
	0 &\mbox{ sino } 
	\end{array} \right.$$
Luego
	$$\int_{X} g\circ f(x) d\mu(x)=\mu(f^{-1}(E))=\nu(E)=\int_{Y} \chi_{E}(y)d\nu(y)=\int_{Y} g(y)d\nu(y).$$
Usando la linealidad de la integral se obtiene el resultado para funciones $\mathcal{G}$-simples. Si $g$ es medible no negativa, el resultado se obtiene aproximando $g$ por funciones simples. Y para el caso general, se escribe $g$ como la suma de funciones no negativas, esto es, $g=g^{+}+g^{-}$.

:::

::: {.theorem #unnamed-chunk-305}
Sea $F:[a,b]\longrightarrow\mathbb{R}$ medible, continua y creciente. Sea $g:\mathbb{R}\longrightarrow\mathbb{R}$ integrable Lebesgue en $[F(a),F(b)]$. Entonces
$$\int_{F(a)}^{F(b)} g(x)dx=\int_{a}^{b} g(F(t))dF(t)$$
donde $dF(t)$ denota la integral respecto de la medida de Stieltjes asociada a $F$.

:::
El esquema de la demostración es el siguiente:
Se considera la aplicación 
$$\left([a,b],\mathcal{M}\upharpoonright_{[a,b]}, dF\right)\longrightarrow\left(\left[F(a), F(b)\right],\mathcal{M}\right)$$
y se define la medida
$$\nu=dF\circ F^{-1}.$$
Del teorema anterior se obtiene el resultado.

::: {.remark}
Si $F$ es tal que $F(b)-F(a)=\int_{a}^{b} F´(t)dt$, entonces el teorema anterior concluye que 
$$\int_{F(a)}^{F(b)} g(x)dx=\int_{a}^{b} g(F(t))F´(t)d(t).$$

:::

<!--chapter:end:070-diferenciacion-e-integracion.Rmd-->

# INTEGRACIÓN EN $\mathbb{R}^{n}$

En este capítulo estudiaremos primero los conceptos básicos necesarios para construír la medida de Lebesgue en espacio producto $\mathbb{R}^{n}$. Esta construcción es análoga a lo hecho para construír la medida de Lebesgue en $\mathbb{R}$, razón por la cual se dejarán los detalles al lector. Luego estudiaremos las funciones medibles, las funciones integrables y el teorema de Fubini.

## Espacio Producto

En esta sección daremos un esquema de la construcción de la medida de Lebesgue en el espacio producto $\mathbb{R}^{n}$. Definiremos una medida en $\mathbb{R}^{n}$ que esxtienda la noción de área en el plano $\mathbb{R}^{2}$ y volumen en $\mathbb{R}^{3}$ (en $\mathbb{R}$, la medida extiende la nociónn de longitud) Para ello comenzaremos definiendo rectángulos en $\mathbb{R}^{n}$, conjunto que coinciden con los conocidos rectángulos del plano $\mathbb{R}^{2}$ y con los paralelepipedos en $\mathbb{R}^{3}$.

::: {.definition #unnamed-chunk-307}
Un *rectángulo* en $\mathbb{R}^{n}$ es un subconjunto $A\subseteq\mathbb{R}^{n}$ que es el producto cartesiano de intervalos de cualquier tipo $I_{1},\cdots, I_{n}$ de $\mathbb{R}$, es decir, $A=\prod_{i=1}^{n} I_{i}$.

:::

El conjunto de rectángulos de $\mathbb{R}^{n}$, que denotaremos por $\mathfrak{R}^{n}$, es una semiálgebra. Y el conjunto de rectángulos acotados de $\mathbb{R}^{n}$, que denotaremos por $\mathfrak{R}_{a}^{n}$, es una semianillo. Con cualquiera de estas clases podemos generar una $\sigma$-álgebra, la $\sigma$-álgebra de Borel de $\mathbb{R}^{n}$, que denotaremos por $\mathcal{B}(\mathbb{R}^{n})$.

Dados $p,q\in\mathbb{R}$, sea $n=p+q$. Sean $\mathcal{F}$ y $\mathcal{G}$ $\sigma$-álgebras en $\mathbb{R}^{p}$ y $\mathbb{R}^{q}$ respectivamente. Llamaremos *conjunto elemental* a los conjuntos de la forma $F\times G$, donde $F\in\mathcal{F}$ y $G\in\mathcal{G}$, es decir, a los elementos del conjunto $\mathcal{F}\times\mathcal{G}=\{H\subseteq\mathbb{R}^{n}:H=F\times G\mbox{ con } F\in\mathcal{F} \mbox{ y } G\in\mathcal{G} \}$.

::: {.remark}
$\mathcal{F}\times\mathcal{G}$ no es una $\sigma$-álgebra, más si un sistema $\pi$.

:::

::: {.definition #unnamed-chunk-309}
La $\sigma$-álgebra producto, denotada $\mathcal{F}\otimes\mathcal{G}$, es la generada por $\mathcal{F}\times\mathcal{G}$, esto es 
$$\mathcal{F}\otimes\mathcal{G}=\sigma(\mathcal{F}\times\mathcal{G}).$$

:::

::: {.remark}
$\mathcal{B}(\mathbb{R}^{n})=\mathcal{B}(\mathbb{R}^{p})\otimes\mathcal{B}(\mathbb{R}^{q})$, con $n=p+q$.

:::

::: {.definition #unnamed-chunk-311}
Sea $R\in\mathcal{R}_{a}^{n}$ un rectántugo acotado de $\mathbb{R}^{n}$, tal que $R=\prod_{i=1}^{n} I_{i}$. Definimos el área de $R$ como	$$l_{n}(R)=\prod_{i=1}^{n} l(I_{i})$$ donde $l$ es la longitud en $\mathbb{R}$.

:::

::: {.remark}
La función área, $l_{n}$, se puede extender al anillo generado por $\mathcal{R}_{a}^{n}$.
Si $R=R_{p}\times R_{q}$, con $R_{p}\in\mathcal{R}_{a}^{p}$ y $R_{q}\in\mathcal{R}_{a}^{q}$, entonces $l_{p+q}(R)=l_{p}(R_{p})l_{q}(R_{q})$.

:::

## Medida de Lebesgue en $\mathbb{R}^{n}$

::: {.definition #unnamed-chunk-313}
Sea $A\subseteq\mathbb{R}^{n}$. Definimos $$\mathfrak{R}_{a}^{n}(A)=\left\lbrace (R_{k})_{k}\subseteq\mathcal{R}_{a}^{n}: A\subseteq\bigcup_{k\in\mathbb{N}} R_{k}\right\rbrace $$
la familia de todas las sucesiones de rectángulos cuya unión contiene al conjunto $A$. Y *la medida exterior de $A$* la definimos como:
$$l^{\ast}_{n}(A)=\inf\left\lbrace\sum_{k}^{\inf}l_{n}(R_{k}): (R_{k})_{k}\in\mathfrak{R}_{a}^{n}(A) \right\rbrace .$$

:::

Denotemos $\mathcal{M}_{n}$ a los conjuntos $l^{\ast}_{n}$-medibles, esto es,
$$A\in\mathcal{M}_{n}\mbox{ si y solo si } \forall B\subseteq\mathbb{R}^{n}[l^{\ast}(B)=l^{\ast}(B\cap A)+l^{\ast}(B\cap A^{c})].$$
La función $l^{\ast}_{n}$ resulta ser una medida en $\mathcal{M}_{n}$, la llamaremos la medida de Lebesgue en $\mathcal{M}_{n}$. Para simplicidad, podemos denotar $l_{n}=l^{\ast}_{n}\upharpoonright \mathcal{M}_{n}$.

::: {.remark}
De forma análoga a lo hecho en $\mathbb{R}$, se tiene que:

(i.) $\mathcal{B}(\mathbb{R}^{n})\subseteq \mathcal{M}_{n}$.

(ii.) $\mathcal{M}_{n}=\sigma(\mathbb{R}^{n}, \mathcal{N})$, donde $\mathcal{N}$ es la colección de subconjuntos nulos.

(iii.) $M\in\mathcal{M}_{n}$ si y solo si $\exists B_{1}, B_{2}\in\mathcal{B}(\mathbb{R}^{n})$ tales que $B_{1}\subseteq M\subseteq B_{2}$ y $l_{n}(B_{2}\backslash B_{1})=0$.

:::

También se pueden demostrar los teoremas de aproximaciÓn:

(1.) Si $E\in\mathcal{M}_{n}$, dado $\epsilon>0$, existe un conjunto abierto $G\in\mathbb{R}^{n}$ tal que $E\subseteq G$ y $l_{n}(G\backslash E)<\epsilon$.

(2.) Si $E\in\mathcal{M}_{n}$, dado $\epsilon>0$, existe un conjunto cerrado $F\in\mathbb{R}^{n}$ tal que $F\subseteq E$ y $l_{n}(E\backslash F)<\epsilon$.

(3.) Si $E\in\mathcal{M}_{n}$, entonces existen conjuntos $F, G\in\mathbb{R}^{n}$, $F_{\sigma}$ y $G_{\delta}$ respectivamente, tales que $F\subseteq E\subseteq G$ y $l_{n}(G\backslash F)=0$.


::: {.proposition #proposicion79}
Sean $E\in\mathcal{B}(\mathbb{R}^{p})$ y $F\in\mathcal{B}(\mathbb{R}^{q})$. Se tiene que $l_{p+q}(E\times F)=l_{p}(E)l_{q}(F)$.

:::
::: {.proof}
Si $E$ y $F$ son conjuntos acotados, existen rectángulo acotados $J\in\mathcal{R}_{a}^{p}$ y $K\in\mathcal{R}_{a}^{q}$, tales que $E\subseteq J$ y $F\subseteq K$. Luego, existen sucesiones $(S_{i})_{i\in\mathbb{N}}\subseteq\mathcal{R}_{a}^{p}$ y $(T_{i})_{i\in\mathbb{N}}\subseteq\mathcal{R}_{a}^{q}$, tales que $$E\subseteq \bigcap S_{i}\subseteq J\mbox{ y }F\subseteq \bigcap T_{i}\subseteq K$$ y además
$$\sum l_{p}(S_{i})< l_{p}(E)+\epsilon \mbox{ y }\sum l_{q}(T_{i})< l_{q}(F)+\epsilon\mbox{ para todo } \epsilon>0.$$
Como $E\times F\subseteq\underset{i,j\in\mathbb{N}}{\bigcup}l_{p+q}(S_{i}\times T_{j})$, luego
$$\begin{array}{ll}
	l_{p+q}(E\times F)&\leq \underset{i,j\in\mathbb{N}}{\sum}l_{p+q}(S_{i}\times T_{j})\\
	&=\underset{i,j\in\mathbb{N}}{\sum}l_{p}(S_{i})l_{q}(T_{j})\\
	&=\underset{i\in\mathbb{N}}{\sum}l_{p}(S_{i})\underset{j\in\mathbb{N}}{\sum}l_{q}(T_{j})\\
	&< (l_{p}(E)+\epsilon)(l_{q}(F)+\epsilon)\mbox{ para todo } \epsilon>0
\end{array}$$
por lo tanto $l_{p+q}(E\times F)\leq l_{p}(E)l_{q}(F)$.
Como se tiene que 
$$J\times K=(E\times F) \cup [(J\backslash E)\times F]\cup [E\times(K\backslash F)]\cup [(J\backslash E)\times (K\backslash F)]$$
se sigue que 
$$l_{p+q}(J\times K)\leq l_{p}(E)l_{q}(F)+l_{p}(J\backslash E)l_{q}(F)+l_{p}(E)l_{q}(K\backslash F)+l_{p}(J\backslash E)l_{q}(K\backslash F).$$
Pero $J\times K$ es un rectángulo, por lo tanto
$$l_{p+q}(J\times K)=l_{p}(J)l_{q}(K)=[l_{p}(E)+l_{p}(J\backslash E)][l_{q}(F)+l_{q}(K\backslash F)]$$
Lo que implica que la desigualdad anterior debe ser una igualdad, así como todas las anteriores, es decir,
$$l_{p+q}(E\times F)=l_{p}(E)\times l_{q}(F).$$
En el caso de que $E$ o $F$ no sean acotados, consideramos sucesiones disjunta y crecientes de rectángulos acotados $(I_{n})\subseteq \mathbb{R}^{p}$ y $(H_{n})\subseteq \mathbb{R}^{q}$ tales que $\bigcup_{i\in\mathbb{N}} I_{i}=\mathbb{R}^{p}$ y $\bigcup_{j\in\mathbb{N}} H_{j}=\mathbb{R}^{q}$ y se escribe
$$E\times F=\bigcup_{i,j\in\mathbb{N}} (E\cap I_{i})\times(F\cap H_{j}).$$

:::

También se puede probar una proposición análoga para conjuntos medibles Lebesgue.


## Teorema de Fibini. Teorema de Tonelli

Si queremos integrar de forma iterada funciones en $\mathbb{R}^{n}=\mathbb{R}^{p}\times \mathbb{R}^{q}$, nos preguntamos cuáles son las condiciones para que se tenga la igualdad:
$$\int_{\mathbb{R}^{n}} f(x,y) dl_{n}=\int_{\mathbb{R}^{p}}\left(\int_{\mathbb{R}^{q}} f(x,y) dl_{p}(x)\right) dl_{q}(y)=\int_{\mathbb{R}^{q}}\left(\int_{\mathbb{R}^{p}} f(x,y) dl_{q}(y)\right) dl_{p}(x)$$
o más general
$$\int_{\mathbb{R}^{n}} f(x,y) dl_{n}=\int_{\mathbb{R}}\cdots\int_{\mathbb{R}} f(x_{1},\cdots,x_{n}) d_{x_{1}}\cdots d_{x_{n}}=\int_{\mathbb{R}}\cdots\int_{\mathbb{R}} f(x_{k_{1}},\cdots,x_{k_{n}}) d_{x_{k_{1}}}\cdots d_{x_{k_{n}}}$$
donde $k_{1},\cdots, k_{n}$ es una permutación de $1,\cdots,n$.

Pero la igualdad anterior puede escribirse en término de las secciones de una función $f$ de $\mathbb{R}^{n}$ en $\mathbb{R}$. Esto es:

$$\int_{\mathbb{R}^{n}} f dl_{n}=\int_{\mathbb{R}^{q}}\left(\int_{\mathbb{R}^{p}}f_{y}(x) dl_{q}\right) dl_{q}=\int_{\mathbb{R}^{p}}\left(\int_{\mathbb{R}^{q}}f_{x}(y) dl_{p}\right) dl_{p}.$$

Entonces debemos estudiar la medibilidad (sobre los espacios $\mathbb{R}^{p}$ y $\mathbb{R}^{q}$) de las secciones de la función medible $f$.

Comencemos por estudiar la medibilidad de las funciones indicatrices.

::: {.proposition #unnamed-chunk-316}
Si $E\in\mathcal{B}(\mathbb{R}^{n})$, con $n=p+q$. Entonces para todo $x\in\mathbb{R}^{p}$, $E_{x}\in\mathcal{B}(\mathbb{R}^{q})$ y para todo $x\in\mathbb{R}^{q}$, $E_{y}\in\mathcal{B}(\mathbb{R}^{p})$.

:::
::: {.proof}
Sea $H=\{E\in\mathcal{B}(\mathbb{R}):\forall x\in\mathbb{R}^{p}(E_{x}\in \mathcal{B}(\mathbb{R}^{q}))\wedge\forall y\in\mathbb{R}^{q}(E_{y}\in \mathcal{B}(\mathbb{R}^{p}))\}$. Claramente $\mathcal{B}(\mathbb{R}^{p})\times\mathcal{B}(\mathbb{R}^{q})\subseteq H$. Además se puede ver que $H$ es una $\sigma$-álgebra. Por lo tanto $\mathcal{B}(\mathbb{R}^{n})=\sigma(\mathcal{B}(\mathbb{R}^{p})\times\mathcal{B}(\mathbb{R}^{q}))\subseteq H$.

:::

::: {.proposition #unnamed-chunk-318}
Sea $A$ un conjunto Boreliano de $\mathcal{B}(\mathbb{R}^{p})\otimes\mathcal{B}(\mathbb{R}^{q})$. Entonces:

(i.) La función $x\mapsto l_{q}(A_{x})=\int \chi_{A_{x}}(y) dl_{q}(y)$ es $\mathcal{B}(\mathbb{R}^{p})$-medible.

(ii.) La función $y\mapsto l_{p}(A_{y})=\int \chi_{A_{y}}(x) dl_{q}(x)$ es $\mathcal{B}(\mathbb{R}^{q})$-medible.

(iii.) Se tiene que $l_{n}(A)=\int l_{q}(A_{x})dl_{p}(x)=\int l_{p}(A_{y})dl_{q}(y)$.

:::
::: {.proof}
Consideremos dos casos. El primero, cuando $A$ es subconjunto de un conjunto de medida finita, es decir, si $A\subseteq H=F\times G$ y $l_{n}(H)<\infty$. Definimos el conjunto,
$$M_{H}=\{A\subseteq H: \mbox{ se cumplen las condiciones $i$, $ii$ y $iii$} \}.$$
Veamos que $\mathcal{B}(H)\subseteq M_{H}$. La clase $[\mathcal{B}(\mathbb{R}^{p})\times\mathcal{B}(\mathbb{R}^{q})]\cap H$ es un sistema $\pi$ y genera a $\mathcal{B}(H)$. Sea $B=C\times D$, entonces 
$$\forall x\in C, B_{x}=D\mbox{ y }\forall x\notin C, B_{x}=\emptyset$$
y
$$\forall y\in D, B_{y}=C\mbox{ y }\forall y\notin D, B_{y}=\emptyset$$
por lo tanto,
$$x\mapsto l_{q}(B_{x})=l_{q}(D)\chi_{C}(x)\mbox{ y }$$
$$y\mapsto l_{p}(B_{y})=l_{p}(C)\chi_{D}(y)$$
son funciones simples, por lo tanto medibles. Por la proposición \@ref(prp:proposicion79), se tiene que $l_{n}(B)=l_{p}(C)l_{q}(D)$, de donde:
$$\begin{array}{lll}
	l_{n}(A)&=\int l_{q}(D)\chi_{C}(x)dl_{p}(x)&=\int l_{q}(A_{x})dl_{p}(x)\\
	&=\int l_{p}(C)\chi_{D}(y)dl_{q}(y)&=\int l_{p}(A_{y})dl_{q}(y)
\end{array}$$
Además, $M_{H}$ es una clase monótona. Por el teorema de la clase monótona, $\mathcal{B}(H)\subseteq M_{H}$.
En el caso que que $A$ sea un conjunto cualquiera. Tomando $(E_{n})\subseteq\mathcal{B}(\mathbb{R}^{p})$ tal que $l_{p}(E_{n})<\infty$ para cada $n$ y $E_{n}\uparrow \mathbb{R}^{p}$ y $(F_{n})\subseteq\mathcal{B}(\mathbb{R}^{q})$ tal que $l_{q}(F_{n})<\infty$  para cada $n$ y $F_{n}\uparrow \mathbb{R}^{q}$. Y $H_{n}=E_{n}\times F_{n}$, entonces, $A\cap H_{n}\uparrow A$. Por lo tanto, por el caso anterior, se tiene que $i$, $ii$ y $iii$ valen para cada $A\cap H_{n}$, por lo tanto para $A$.

:::

Una aplicación inmediata es que para hallar la medida de un conjunto boreliano en $\mathbb{R}^{p}\times \mathbb{R}^{q}$ se puede integrar sobre todas las secciones $x$, la medida de todas estas. Además,
$$\int l_{q}(A_{x})dl_{p}(x)=\int l_{p}(A_{y})dl_{q}(y)=0\mbox{ si y solo si } l_{q}(A_{x})=0\mbox{ c.s. y } l_{p}(A_{y}) \mbox{ c.s.}$$
Esto es el siguiente resultado.

::: {.proposition #unnamed-chunk-320}
Sea $A\in\mathcal{B}(\mathbb{R}^{n})$. Entonces, $l_{n}(A)=0$ si y solo si $l_{p}(A_{y})=0$ en c.t.p. de $\mathbb{R}^{q}$ si y solo si $l_{q}(A_{x})=0$ en c.t.p. de $\mathbb{R}^{p}$.

:::

Para los conjuntos medibles Lebesgue se tiene un resultado análogo a los visto hasta ahora para los conjuntos borelianos.

::: {.proposition #unnamed-chunk-321}
Sea $E$ un conjunto medible Lebesgue de $\mathbb{R}^{n}$. Entonces:

(i.) $E_{x}\in\mathcal{M}_{q}$ en c.t.p. $x\in\mathbb{R}^{p}$.

(ii.) $E_{y}\in\mathcal{M}_{p}$ en c.t.p. $x\in\mathbb{R}^{q}$.

(iii.) Las funciones $x\mapsto l_{q}(E_{x})$ y $y\mapsto l_{p}(E_{y})$ son funciones $\mathcal{M}_{p}$-medible y $\mathcal{M}_{q}$-medible, respectivamente. Además, 
$$l_{n}=\int l_{q}(E_{x})dl_{p}(x)=\int l_{p}(E_{y})dl_{q}(y).$$

:::
::: {.proof}
Sea $E$ un conjunto medible Lebesgue, entonces existen conjuntos borelianos $B_{1}$ y $B_{2}$, tales que $B_{1}\subseteq E\subseteq B_{2}$ y $l_{n}(B_{2}\backslash B_{1})$. Para todo, $x\in\mathbb{R}^{p}$, $B_{1_{x}}\subseteq E\subseteq B_{2_{x}}$ y $B_{1_{x}}, B_{2_{x}}\in\mathcal{B}(\mathbb{R}^{q})$. Por el corolario anterior, $l_{q}(B_{2_{x}}\backslash B_{1_{x}})=0$ en c.t.p. $x\in\mathbb{R}^{p}$. Por lo que $E_{x}\in\mathcal{M}_{q}$. La parte $ii.$ es análoga. Ahora, como $B_{1_{x}}\subseteq E_{x}\subseteq B_{2_{x}}$ y $l_{n}(B_{2}\backslash B_{1_{x}})=0$, las funciones $x\mapsto l_{q}(E_{x})$ y $x\mapsto l_{q}(B_{2_{x}})$ son iguales c.s. Además, $l_{n}(E)=l_{n}(B_{2})$, por lo tanto
$$l_{n}(E)=l_{n}(B_{2})=\int l_{q}(B_{2_{x}})dl_{p}(x)=\int l_{q}(E_{x})dl_{p}(x).$$
Análogamente,
$$l_{n}(E)=\int l_{p}(E_{y})dl_{q}(y).$$

:::

Estudiemos la medibilidad de las secciones de una función medible con siguiente teorema:

::: {.proposition #unnamed-chunk-323}
Sea $f:\mathbb{R}^{n}\longrightarrow \mathbb{R}$.

(i.)Si $f$ es medible Borel en $\mathbb{R}^{n}$, con $\mathcal{B}^{n}=\mathcal{B}(\mathbb{R}^{p})\otimes\mathcal{B}(\mathbb{R}^{q})$, entonces $$f_{x}\mbox{ es } \mathcal{B}(\mathbb{R}^{q})\mbox{ medible, para todo }x\in\mathbb{R}^{p}\mbox{ y }$$
		$$f_{y}\mbox{ es } \mathcal{B}(\mathbb{R}^{p})\mbox{ medible, para todo }y\in\mathbb{R}^{q}\mbox{   }$$
  
(ii.) Si $f$ es medible Lebesgue en $\mathbb{R}^{n}$, entonces
		$$f_{x}\mbox{ es } \mathcal{M}_{q}\mbox{ medible, en c.t.p. }x\in\mathbb{R}^{p}\mbox{ y }$$
		$$f_{y}\mbox{ es } \mathcal{M}_{p}\mbox{ medible, en c.t.p. }y\in\mathbb{R}^{q}\mbox{   }$$
	
:::
::: {.proof}
Sea $A\in\mathcal{B}(\mathbb{R})$;

(i.) $f^{-1}_{x}(A)=\{y\in\mathbb{R}^{q}:f_{x}(y)\in A \}=\{y\in\mathbb{R}^{q}:f(x,y)\in A \}=(f^{-1}(A))_{x}$. Si $f$ es medible Borel, $f^{-1}(A)\in\mathcal{B}(\mathbb{R}^{n})$, por lo tanto $f^{-1}_{x}(A)=(f^{-1}(A))_{x}\in\mathcal{B}(\mathbb{R}^{q})$. De forma análoga, $f^{-1}_{y}(A)=(f^{-1}(A))_{y}\in\mathcal{B}(\mathbb{R}^{p})$ siempre que $f$ sea medible Borel.

(ii.) Si $f$ es medible Lebesgue, $f^{-1}(A)\in\mathcal{M}_{n}$, entonces $(f^{-1}(A))_{x}\in\mathcal{M}_{q}$ en c.t.p. $x\in\mathbb{R}^{p}$, por lo tanto $f^{-1}_{x}$ es $\mathcal{M}_{q}$ medible. Análogamente, $f^{-1}_{y}$ es $\mathcal{M}_{p}$ medible, siempre que $f$ $\mathcal{M}_{n}$ medible.

:::

Culminaremos presentando el teorema de Tonelli y el teorema de Fubini.

::: {.theorem #unnamed-chunk-325 name="Fubini"}
Sea $\mathbb{R}^{n}=\mathbb{R}^{p}\times\mathbb{R}^{q}$.

(i.) Si $h:\mathbb{R}^{n}\longrightarrow\mathbb{R}^{+}$ es una función no negativa medible Lebesgue, entonces
$$\int_{\mathbb{R}} h dl_{n}=\int_{\mathbb{R}^{p}}\left(\int_{\mathbb{R}^{q}} h_{x}(y)dl_{q}(y) \right)dl_{p}(x)=\int_{\mathbb{R}^{q}}\left(\int_{\mathbb{R}^{p}} h_{y}(x)dl_{p}(x) \right)dl_{q}(y)$$
Estas integrales pueden valer infinito.

(ii.) Si $h:\mathbb{R}^{n}\longrightarrow\mathbb{R}$ es medible Lebesgue e integrable respecto a la medida $l_{n}$, entonces
		$$h_{x}: \mathbb{R}^{q}\longrightarrow\mathbb{R} \mbox{ es } l_{q}\mbox{ integrable para c.t.p. } x\in\mathbb{R}^{p}\mbox{ y }$$
		$$h_{y}: \mathbb{R}^{p}\longrightarrow\mathbb{R} \mbox{ es } l_{p}\mbox{ integrable para c.t.p. } y\in\mathbb{R}^{q}$$
y vale la igualdad $i.$
  
(iii.) Si $h:\mathbb{R}^{n}\longrightarrow\mathbb{R}$ es medible Lebesgue y algunas de las siguientes afirmaciones se simple:
		$$ \int\left(\int |h_{x}(y)|dl_{q}(y) \right)dl_{p}(x)<\infty\mbox{ o }$$
		$$ \int\left(\int |h_{y}(x)|dl_{p}(x) \right)dl_{q}(y)<\infty.$$
		Entonces $h$ es integrable respecto de $l_{n}$ y se cumple la igualdad $i.$

:::
::: {.proof}
Si $h$ es una función indicatriz, el resultado se obtiene de la proposición anterior. Si $h$ es simple no negativa, la linealidad de la integral y lo anterior permiten concluír el resultado.
Si $h\geq 0$, $\mathcal{M}_{n}$ medible, existe una sucesión $(h_{n})_{n\in\mathbb{N}}$ de funciones simples no negativas tales que $h_{n}\uparrow h$. Entonces las sucesiones $[(h_{x})_{n}]_{n\in\mathbb{N}}$ y $[(h_{y})_{n}]_{n\in\mathbb{N}}$ crecen a $h_{x}$ y $h_{y}$ respectivamente. Por el teorema de convergencia monótona
$$\begin{array}{ll}
\int h dl_{n}&=\lim\limits_{n\in\mathbb{N}}\int h_{n}dl_{n}\\
&=\lim\limits_{n\in\mathbb{N}}\int\left(\int h_{x_{n}}dl_{q} \right) dl_{p}\\
&=\int\left(\int \lim\limits_{n\in\mathbb{N}}h_{x_{n}}dl_{q}  \right) dl_{p}\\
&=\int\left(\int h_{x}dl_{q}  \right) dl_{p}\\
\end{array}$$
De forma análoga, $$\int h dl_{n}=\int \left(h_{y}dl_{p} \right) dl_{q}$$
lo que demuestra la parte $i$.
Supongamos que $h$ es $l_{n}$-integrable, entonces $\int h^{+}dl_{n}$ y $\int h^{-}dl_{n}$ son finitas. Sea $f^{+}(x)=\int h^{+}dl_{q}$ y $f^{-}(x)=\int h^{-}dl_{q}$. Entonces, $l_{p}\{x:f^{+}=\infty \}=l_{p}\{x:f^{-+}=\infty \}=0$, por lo tanto $h_{x}$ es $l_{q}$-integrable en c.t.p. Por la parte $i.$ se tiene que 
$$\begin{array}{ll}
\int hdl_{n}&=\int h^{+}dl_{n}-\int h^{-}dl_{n}\\
&=\int\left(\int h^{+}_{x} dl_{q} \right)dl_{p}-\int\left(\int h^{-}_{x} dl_{q} \right)dl_{p}\\
&=\int\left(\int h^{+}_{x}-h^{-}_{x}dl_{q} \right)dl_{p}\\
&=\int\left(\int h_{x}dl_{q} \right)dl_{p}
\end{array}$$
Análogamente,
$$\int hdl_{n}=\int\left(\int h_{y}dl_{p} \right)dl_{q}$$
lo que demuestra $ii.$
Por último, supongamos que $\int\left(\int |h_{x}|dl_{q} \right)dl_{p}<\infty$. Por $i.$ se tiene que 
$$\int|h|dl_{n}=\int\left(\int |h_{x}|dl_{q} \right)dl_{p}<\infty$$ por lo tanto $h$ es integrable. De $ii.$ se sigue el resultado.

:::

<!--chapter:end:080-integracion-en-espacio-producto.Rmd-->

\cleardoublepage 

# (APPENDIX) Apéndice {-}

# Software Tools

For those who are not familiar with software packages required for using R Markdown, we give a brief introduction to the installation and maintenance of these packages.

## R and R packages

R can be downloaded and installed from any CRAN (the Comprehensive R Archive Network) mirrors, e.g., https://cran.rstudio.com. Please note that there will be a few new releases of R every year, and you may want to upgrade R occasionally.

To install the **bookdown** package, you can type this in R:


```r
install.packages("bookdown")
```

This installs all required R packages. You can also choose to install all optional packages as well, if you do not care too much about whether these packages will actually be used to compile your book (such as **htmlwidgets**):


```r
install.packages("bookdown", dependencies = TRUE)
```

If you want to test the development version of **bookdown** on GitHub, you need to install **devtools** first:


```r
if (!requireNamespace('devtools')) install.packages('devtools')
devtools::install_github('rstudio/bookdown')
```

R packages are also often constantly updated on CRAN or GitHub, so you may want to update them once in a while:


```r
update.packages(ask = FALSE)
```

Although it is not required, the RStudio IDE can make a lot of things much easier when you work on R-related projects. The RStudio IDE can be downloaded from https://www.rstudio.com.

## Pandoc

An R Markdown document (`*.Rmd`) is first compiled to Markdown (`*.md`) through the **knitr** package, and then Markdown is compiled to other output formats (such as LaTeX or HTML) through Pandoc.\index{Pandoc} This process is automated by the **rmarkdown** package. You do not need to install **knitr** or **rmarkdown** separately, because they are the required packages of **bookdown** and will be automatically installed when you install **bookdown**. However, Pandoc is not an R package, so it will not be automatically installed when you install **bookdown**. You can follow the installation instructions on the Pandoc homepage (http://pandoc.org) to install Pandoc, but if you use the RStudio IDE, you do not really need to install Pandoc separately, because RStudio includes a copy of Pandoc. The Pandoc version number can be obtained via:


```r
rmarkdown::pandoc_version()
## [1] '2.19.2'
```

If you find this version too low and there are Pandoc features only in a later version, you can install the later version of Pandoc, and **rmarkdown** will call the newer version instead of its built-in version.

## LaTeX

LaTeX\index{LaTeX} is required only if you want to convert your book to PDF. The typical choice of the LaTeX distribution depends on your operating system. Windows users may consider MiKTeX (http://miktex.org), Mac OS X users can install MacTeX (http://www.tug.org/mactex/), and Linux users can install TeXLive (http://www.tug.org/texlive). See https://www.latex-project.org/get/ for more information about LaTeX and its installation.

Most LaTeX distributions provide a minimal/basic package and a full package. You can install the basic package if you have limited disk space and know how to install LaTeX packages later. The full package is often significantly larger in size, since it contains all LaTeX packages, and you are unlikely to run into the problem of missing packages in LaTeX.

LaTeX error messages may be obscure to beginners, but you may find solutions by searching for the error message online (you have good chances of ending up on [StackExchange](http://tex.stackexchange.com)). In fact, the LaTeX code converted from R Markdown should be safe enough and you should not frequently run into LaTeX problems unless you introduced raw LaTeX content in your Rmd documents. The most common LaTeX problem should be missing LaTeX packages, and the error may look like this:

```latex
! LaTeX Error: File `titling.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name: 
! Emergency stop.
<read *> 
         
l.107 ^^M

pandoc: Error producing PDF
Error: pandoc document conversion failed with error 43
Execution halted
```

This means you used a package that contains `titling.sty`, but it was not installed. LaTeX package names are often the same as the `*.sty` filenames, so in this case, you can try to install the `titling` package. Both MiKTeX and MacTeX provide a graphical user interface to manage packages. You can find the MiKTeX package manager from the start menu, and MacTeX's package manager from the application "TeX Live Utility". Type the name of the package, or the filename to search for the package and install it. TeXLive may be a little trickier: if you use the pre-built TeXLive packages of your Linux distribution, you need to search in the package repository and your keywords may match other non-LaTeX packages. Personally, I find it frustrating to use the pre-built collections of packages on Linux, and much easier to install TeXLive from source, in which case you can manage packages using the `tlmgr` command. For example, you can search for `titling.sty` from the TeXLive package repository:

```bash
tlmgr search --global --file titling.sty
# titling:
#	 texmf-dist/tex/latex/titling/titling.sty
```

Once you have figured out the package name, you can install it by:

```bash
tlmgr install titling  # may require sudo
```

LaTeX distributions and packages are also updated from time to time, and you may consider updating them especially when you run into LaTeX problems. You can find out the version of your LaTeX distribution by:



```r
system('pdflatex --version')
## pdfTeX 3.14159265-2.6-1.40.18 (TeX Live 2017)
## kpathsea version 6.2.3
## Copyright 2017 Han The Thanh (pdfTeX) et al.
## There is NO warranty.  Redistribution of this software is
## covered by the terms of both the pdfTeX copyright and
## the Lesser GNU General Public License.
## For more information about these matters, see the file
## named COPYING and the pdfTeX source.
## Primary author of pdfTeX: Han The Thanh (pdfTeX) et al.
## Compiled with libpng 1.6.29; using libpng 1.6.29
## Compiled with zlib 1.2.11; using zlib 1.2.11
## Compiled with xpdf version 3.04
```

<!--chapter:end:400-apendice.Rmd-->

# Referencias {-}




<!--chapter:end:500-references.Rmd-->

