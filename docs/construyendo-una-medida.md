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

Placeholder


## ¿Por qué  leer este libro? {-}
## Estructura del libro {-}
## Información sobre los programas y convenciones {-}
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

::: {.definition #unnamed-chunk-1}
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

::: {.example #unnamed-chunk-3}
La sucesión $x_{n}=(-1)^{n}$, no tiene límite. Note que $a_{n}=\sup_{k\geq n} x_{k}=1$, por lo tanto $\limsup_{n\to\infty} x_{n}=\inf_{n\geq 1} a_{n}=1$; y $b_{n}=\inf_{k\geq n} x_{k}=-1$, por lo tanto $\liminf_{n\to\infty} x_{n}=\inf_{n\geq 1} b_{n}=-1$.

:::

::: {.example #unnamed-chunk-4}
Definamos $x_{n}=n$ si $n$ es par y $x_{n}=0$ si $n$ es impar. Luego $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n}x_{k}=0$. Por lo tanto, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$. De donde concluímos que el límite de $(x_{n})_{n}$ no existe.

:::

::: {.example #unnamed-chunk-5}
Sea $(x_{n})_{n}$ definida por $x_{n}=\tan^{2}(n(\pi/4))$. Sean $a_{n}=\sup_{k\geq n} x_{k}=\infty$ y $b_{n}=\inf_{k\geq n} x_{k}=0$. Entonces, $\limsup_{n\to\infty} x_{n}=\infty$ y $\liminf_{n\to\infty} x_{n}=0$.

:::

::: {.example #unnamed-chunk-6}
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

::: {.definition #unnamed-chunk-7}
Una sucesión $(A_{n})_{n\geq 1}$ es una sucesión *monótona creciente (*monótona decreciente*) si para todo $n\geq 1$, se tiene que $A_{n}\subseteq A_{n+1}$ ($A_{n}\supseteq A_{n+1}$) y se denota $A_{n}\downarrow$. Diremos que una sucesión es *monótona* si es monótona creciente o monótona decreciente.

:::

::: {.remark}
Sea $(A_{n})$ una sucesión monótona.

(1) Si $A_{n}\uparrow$, entonces $A=\bigcup_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\uparrow A$, esto último también se lee $A_{n}$ crece a $A$.

(2) Si $A_{n}\downarrow$, entonces $A=\bigcap_{n\geq 1} A_{n}$ es el límite de $(A_{n})$ y se denota $\lim_{n} A_{n}=A$ o por $A_{n}\downarrow A$, esto último tambin se lee $A_{n}$ decrece a $A$.
Para una sucesión cualquiera $(A_{n})$, las sucesiones $B_{n}=\bigcap_{k\geq n} A_{k}$ y $C_{n}=\bigcup_{k\geq n} A_{k}$, son sucesiones monótonas, creciente y decreciente respectivamente. Por lo que los límites de estas sucesiones existen. Y son $\lim_{n} B_{n}=\bigcup_{n\geq 1} B_{n}$ ya que $B_{n}\uparrow$ y $\lim_{n} C_{n}=\bigcap_{n\geq 1} C_{n}$ ya que $B_{n}\downarrow$.

:::

::: {.definition #unnamed-chunk-9}
Sea $(A_{n})_{n\geq 1}$ una sucesión. Decimos que el *límite inferior* de $(A_{n})_{n}$ es el límite de la sucesión $B_{n}=\bigcap_{k\geq n} A_{k}$, es decir $\liminf_{n\geq 1} A_{n}:=\lim_{n\geq 1} B_{n}=\bigcup_{n\geq 1} B_{n}=\bigcup_{n\geq 1} \bigcap_{k\geq n} A_{n}$. De forma análoga, decimos que el *límite superior* de $(A_{n})_{n}$ es el límite de la sucesión $C_{n}=\bigcup_{k\geq n} A_{k}$, es decir $\limsup_{n\geq 1} A_{n}:=\lim_{n\geq 1} C_{n}=\bigcap_{n\geq 1} C_{n}=\bigcap_{n\geq 1} \bigcup_{k\geq n} A_{n}$. Si $\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$. Decimos que $(A_{n})$ *tiene límite* y escribimos $\lim_{n\geq 1}A_{n}=\liminf_{n\geq 1} A_{n}=\limsup_{n\geq 1} A_{n}$.

:::

::: {.example #unnamed-chunk-10}
La sucesión del ejemplo \@ref(exm:ejemplo17) es una sucesión creciente y su límite es $\lim A_{n}=\mathbb{R}$. 
La sucesión del ejemplo \@ref(exm:ejemplo18) es una sucesión decreciente y su límite es $\lim_{n\geq 1} A_{n}=(-1,0]$. 

:::

::: {.example #unnamed-chunk-11}
La sucesión del ejemplo \@ref(exm:ejemplo19) no es creciente ni decreciente. Entonces $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\{0\}$ y $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\{0\}$. Luego la sucesión tiene límite y es $\lim_{n\geq 1} A_{n}=\{0\}$.

:::

::: {.example #unnamed-chunk-12}
Sea $A_{n}=[0-(1/n),n] $, para cada $n\geq 1$. Sea $B_{n}=\bigcap_{k\geq n} [0-1/k,k]=(0,n]$ y $C_{n}=\bigcup_{k\geq n} [0-1/n,n]=[-1/k,\infty)$. Con lo que se tiene que $\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1} B_{n}=(0,\infty)$ y  $\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1} C_{n}=(0,\infty)$.

:::

::: {.example #unnamed-chunk-13}
Sea $A_{n}=(r+ 1/n, s+ 1/r)$ para cada $n\geq 1$ y $r$ y $s$ números reales cualesquiera. Entonces $$\liminf_{n\geq 1} A_{n}=\bigcup_{n\geq 1}\bigcap_{k\geq n} A_{n}=\bigcup_{n\geq 1} (r+ 1/n, s]=(r,s]$$ y $$\limsup_{n\geq 1} A_{n}=\bigcap_{n\geq 1}\bigcup_{k\geq n} A_{n}=\bigcap_{n\geq 1} (r, s+ 1/n)=(r,s].$$
  
:::

::: {.definition #unnamed-chunk-14}
Sea $A$ un subconjunto de $\Omega$. La *función característica* (o *función indicatriz* o *indicadora*) de $A$ es la función $\chi_{A}:\Omega\longrightarrow \{0,1\}$, definida por:
	$$\chi_{A}=\left\lbrace \begin{array}{cc}
	1&\mbox{ si } x\in A\\
	0&\mbox{ si } x\notin A
	\end{array}\right.$$
	  
:::

También se suele denotar con $\mathbb{I}_{A}$.

Veamos algunas propiedades de la función característica:

::: {.proposition #unnamed-chunk-15}
$\chi_{A}$ es sobreyectiva si y solo si $A$ es un subconjunto propio de $\Omega$.
:::
::: {.proof}
$\chi_{A}$ es sobreyectiva si y solo si existen $x, y\in \Omega$ tales que $\chi_{A}(x)=0$ y $\chi_{A}(y)=1$ si y solo si $x\notin A$ y $y\in A$, equivalentemente $A\subseteq \Omega$ y $A\neq \Omega$.

:::

::: {.proposition #unnamed-chunk-17}
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

::: {.definition #unnamed-chunk-20}
Dado un espacio topológico $(X,\tau)$, decimos que $A\subseteq X$ es un conjunto $G_{\delta}$ si $A$ es intersección numerable de abiertos, esto es, $A=\bigcap_{n\in\mathbb{N}} G_{n}$ con $G_{n}\in\tau$. Decimos que $A$ es un conjunto  $F_{\sigma}$ si es unión numerable de conjuntos cerrados, esto es, $A=\bigcup_{n\in\mathbb{N}} F_{n}$ con $F_{n}^{c}\in\tau$.

:::

Se pueden definir de forma análoga conjuntos $F_{\sigma\delta}$, $G_{\delta\sigma}$, $F_{\sigma\delta\sigma}$, etc.
Por ejemplo, $A$ es un conjunto $F_{\sigma\delta}$ si es intersecci\'on numerable de conjuntos $F_{\sigma}$.

::: {.example #unnamed-chunk-21}
El conjunto de los puntos de continuidad de una función cualquiera, es un conjunto $G_{\delta}$.
Y el conjunto de puntos de discontinuidad es una función dada, es un conjunto $F_{\sigma}$.

:::

Para las siguientes definiciones, sea $\Omega$ un conjunto no vacío. Sea $\mathcal{C}$ una familia de subconjuntos de $\Omega$. Entonces:
::: {.definition #unnamed-chunk-22}
$\mathcal{C}$ es un *semianillo* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\forall B,C\in\mathcal{C}$ $\exists (A_{k})_{1}^{n}\subseteq \mathcal{C}$ disjuntos dos a dos tales que $B-C=\bigcup_{k=1}^{n} A_{k}$.

:::

::: {.definition #unnamed-chunk-23}
$\mathcal{C}$ es un *semiálgebra* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\forall B\in\mathcal{C}$ $\exists (A_{k})_{1}^{n}\subseteq \mathcal{C}$ disjuntos dos a dos tales que $B^{c}=\bigcup_{k=1}^{n} A_{k}$.

:::

::: {.definition #unnamed-chunk-24}
$\mathcal{C}$ es un *anillo* si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.) $\mathcal{C}$ es cerrado bajo intersecciones, es decir, $\forall A,B\in\mathcal{C}$, $A\cap B\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo uniones, es decir, $\forall A,B\in\mathcal{C}$, $A\cup B\in\mathcal{C}$.

(iv.) $\mathcal{C}$ es cerrado bajo diferencia de conjuntos, es decir, $\forall A,B\in\mathcal{C}$, $A-B\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-25}
$\mathcal{C}$ es un *$\sigma$-anillo* si

(i.)  $\mathcal{C}$ es un anillo.

(ii.) $\mathcal{C}$ es cerrado bajo uniones numerables, es decir, $\forall (A_{k})_{k=1}^{n}\subseteq\mathcal{C}$, $\bigcup_{k=1\geq n}A_{k}\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo intersecciones numerables, es decir, $\forall (A_{k})_{k=1}^{n}\subseteq\mathcal{C}$, $\bigcap_{k=1\geq n}A_{k}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-26}
$\mathcal{C}$ es un *álgebra* si

(i.)  $\mathcal{C}$ es un anillo.

(ii.) $\mathcal{C}$ es cerrado bajo complementación, $\forall A\in\mathcal{C}$, $A^{c}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-27}
$\mathcal{C}$ es una *$\sigma$-álgebra* si

(i.)  $\mathcal{C}$ es un álgera.
(ii.) $\mathcal{C}$ es cerrado bajo uniones numerebles y bajo interseccines numerables.

:::

::: {.definition #unnamed-chunk-28}
$\mathcal{C}$ es una *clase monótona* si es cerrado bajo límites monótonos, es decir

(i.) toda sucesión creciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcup_{n\geq 1}A_{n}\in\mathcal{C}$ y

(ii.) toda sucesión decreciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcap_{n\geq 1}A_{n}\in\mathcal{C}$.

:::

::: {.definition #unnamed-chunk-29}
	$\mathcal{C}$ es un *sistema $\pi$* si es cerrado bajo intersecciones.

:::

::: {.definition #unnamed-chunk-30}
$\mathcal{C}$ es un *sistema $\lambda$* (*clase-$\sigma$ aditiva* o *sistema de Dynkin*) si

(i.)  $\emptyset\in\mathcal{C}$.

(ii.)  para todo $A,B\in\mathcal{C}$, si $A\subseteq B$, entonces $B\backslash A\in\mathcal{C}$.

(iii.) $\mathcal{C}$ es cerrado bajo límites crecientes, es decir, para toda sucesión creciente $(A_{n})_{n\in\mathbb{N}}\subseteq \mathcal{C}$, se tiene que $\bigcup_{n\geq 1}A_{n}\in\mathcal{C}$.

:::

::: {.example #unnamed-chunk-31}
Sea $\Omega\neq \emptyset$, $\mathcal{C}=\{A\subseteq\Omega: A \mbox{ es finito o }A^{c} \mbox{ es finito} \}$ es un álgebra. Si $\Omega$ es finito, $\mathcal{C}$ es una $\sigma$-álgebra.

:::

::: {.example #unnamed-chunk-32}
Sea $\Omega\neq \emptyset$. Sea $\mathcal{C}=\{A\subseteq :A \mbox{ es numerable o } A^{c} \mbox{ numerable } \}$ es una $\sigma$-álgebra.

:::

::: {.example #unnamed-chunk-33}
Sea $\mathcal{I}=\{(a,b]\subseteq\mathbb{R}: a\geq b \}$. Sea $\mathcal{C}=\left\lbrace \bigcup_{i\geq n} I_{i}:I_{i}\in \mathcal{I} \mbox{ y } n\in\mathbb{N} \right\rbrace$ es un anillo pero no es un álgebra.
Ahora, dado $\tilde{\mathcal{I}}=\{(a,\infty):a\in\mathbb{R}\}$; la colección $\tilde{\mathcal{C}}=\left\lbrace \bigcup_{i\geq n} I_{i}:I_{i}\in \mathcal{I}\cup\tilde{\mathcal{I}} \mbox{ y } n\in\mathbb{N}\right\rbrace $ es un álgebra pero no es una $\sigma$-álgebra.

:::

::: {.remark}
Dada una colección arbitraria de conjunto $\mathcal{F}$, la intersección de los conjuntos de $\mathcal{F}$, se denota $\bigcap\mathcal{F}$.

:::

::: {.proposition #unnamed-chunk-35}
La intersección arbitraria de anillos, es un anillo.

:::
::: {.proof}
Sea $I$ un conjunto arbitrario de índices, sea $\mathcal{F}=\{\mathcal{C}_{\alpha}: \alpha\in I\}$ una familia de anillos. Como $\emptyset\in\mathcal{C}_{\alpha}$ para todo $\alpha\in I$, entonces $\emptyset\in\bigcap_{\alpha\in I} \mathcal{C}_{\alpha}$. Sean $A, B\in \bigcup\mathcal{F}$, entonces $A, B\in\mathcal{C}_{\alpha}$ para todo $\alpha\in I$. Como cada $\mathcal{C}_{\alpha}$ es un anillo se sigue el resultado.

:::

::: {.remark}
La proposición anterior es cierta para intersecció arbitraria de álgebras, de $\sigma$-anillos, $\sigma$-álgebras, clases monótonas y sistemas $\pi$.

:::

::: {.definition #unnamed-chunk-38}
Dada una familia $\mathcal{D}$ de subconjuntos de $\Omega$. La colección $\mathcal{R}(\mathcal{D})=\bigcap\{R\subseteq\wp(\Omega): R\mbox{ es un anillo y }\mathcal{D}\subseteq R\}$ es un anillo y diremos que es el \textit{anillo generado por $\mathcal{D}$}. 

:::

De forma análoga se define el $\sigma$-anillo generado, el álgebra generada, el $\sigma$-anillo generado y la clase monótona generada por una familia cualquiera $\mathcal{D}\subseteq\wp(\Omega)$.

::: {.example #unnamed-chunk-39}
Sea $(\Omega,\tau)$ un espacio topológico. $\sigma(\tau)$ es la sigma álgebra generada por la colección de conjuntos abiertos $\tau$, llamada *$\sigma$-álgebra de Borel*. Suele denotarse por $\mathcal{B}(\Omega)$. A los conjuntos que la conforman, se les llama *conjuntos Borelianos* del espacio $\Omega$.

:::

::: {.remark}
Note que los conjuntos $F_{\sigma}$, $G_{\delta}$, $F_{\sigma\delta}$, etc. son conjuntos Borelianos.
Podemos considerar el espacio topológico $\overline{\mathbb{R}}=\mathbb{R}\cup\{-\infty,\infty\}$ y en este espacio definir la $\sigma$-álgebra de Borel.

:::

::: {.proposition #unnamed-chunk-41}
Sea $(\Omega, \tau)$ un espacio toplológico. Sea $\mathcal{C}$ la colección de cerrados de $\Omega$. Entonces $\sigma(\mathcal{C})=\mathcal{B}(\Omega)$.

:::
::: {.proof}
Veamos que $\tau\subseteq\sigma(\mathcal{C})$. Cada conjunto abierto $A=(A^{c})^{c}\in\sigma(\mathcal{C})$, ya que $A^{c}$ es un cerrado. Por lo tanto $\mathcal{B}(\Omega)\subseteq \sigma(\mathcal{C})$. Análogamente, se demuestra que $\sigma(\mathcal{C})\subseteq\mathcal{B}(\Omega)$.

:::

Recuerdemos que un espacio topológico es segundo numerable si tiene una base numerable.


::: {.proposition #unnamed-chunk-43}
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

::: {.proposition #unnamed-chunk-45}
	El conjunto de Cantor es cerrado.

:::

::: {.proposition #unnamed-chunk-46}
El conjunto de Cantor es perfecto.

:::

Por lo tanto

::: {.proposition #unnamed-chunk-47}
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

::: {.definition #unnamed-chunk-50}
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

::: {.definition #unnamed-chunk-51}
Sea $\mathcal{C}\subseteq\wp(\Omega)$, una función $\mu:\mathcal{C}\longrightarrow \overline{\mathbb{R}}$ es *finitamente aditiva* si:

(i.) $\mu(\emptyset)=0$,
(ii.) Para todo $A,B\in\mathcal{C}$, tales que $A$ y $B$ son disjuntos, $A\cup B\in\mathcal{C}$ y $\mu(A)$ y $\mu(B)$ están definidos. Se tiene que $\mu(A\cup B)=\mu(A)+\mu(B)$.

es *$\sigma$-aditiva* si:

(i.) $\mu(\emptyset)=0$,

(ii.) Para todo $(A_{i})_{i\in\mathbb{N}}\in\mathcal{C}$ colección disjunta, tal que $\bigcup_{i\in\mathbb{N}}A_{i}$ se tiene que $\mu\left( \bigcup_{i\in\mathbb{N}}A_{i}\right) =\sum_{i\in\mathbb{N}}\mu(A_{i})$.

:::


Es natural definir funciones en colecciones con al menos estructura de anillo, para que la función tenga la propiedad de aditividad.


::: {.definition #unnamed-chunk-52}
	Sea $\mathcal{A}\in\wp(\Omega)$ una $\sigma$-álgebra. Al par ($\Omega$,$\mathcal{A}$) se le llama *espacio medible*. Además, una función $\mu:\mathcal{A}\longrightarrow \overline{\mathbb{R}^{+}}$ es una *medida sobre* ($\Omega$,$\mathcal{A}$) si y solo si:

(i.) Para todo $A\in\mathcal{A}$, $\mu(A)\geq 0$.

(ii.) $\mu(\emptyset)=0$,

(iii.) $\mu$ es $\sigma$-aditiva.

El trío $(\Omega,\mathcal{A},\mu)$ se llama *espacios de medida* y a $\mu(A)$ *medida de $A$*.

:::

Las medidas suelen definirse en clases que tienen estructura de $\sigma$-álgebras o al menos de $\sigma$-anillo. Note que como una medida está definida en $\overline{\mathbb{R}}$, la suma $\sum_{i\in\mathbb{N}}\mu(A_{i})$ siempre está definida.

Decimos que una medida tiene la propiedad de monotonía cuando para todo $A, B\in \mathcal{A}$ se tiene que si $A\subseteq B$, entonces $\mu(A)\leq\mu(B)$.
 
::: {.proposition #unnamed-chunk-53}
Toda medida $\mu$ tiene la propiedad de monotonía.

:::
::: {.proof}
Sea $\mathcal{A}$ una $\sigma$-álgebra y sea $\mu$ una medida en $(\Omega,\mathcal{A})$. Sean $A,B\in\mathcal{A}$ tales $A\subseteq B$. Podemos escribir $B=A\cup B$ como una unión disjunta, esto es, $B=A\cup (B\backslash A)$, por $\sigma$-aditividad ( basta aditividad finita) se tiene que $$\mu(B)=\mu(A\cup B)=\mu(A\cup (B\backslash A))=\mu(A)+\mu(B\backslash A)$$ como $\mu$ es una función no negativa, se tiene el resultado.

:::

Del resultado anterior y bajo las mismas hipótesis, se sigue que si $\mu(B)<\infty$, entonces $\mu(B-A)=\mu(B)-\mu(A)$.

::: {.definition #unnamed-chunk-55}
Una medida $\mu$ sobre $(\Omega,\mathcal{A})$ se dice *finita* si $\mu(\Omega)<\infty$. Si $\mu(\Omega)=1$ se dice que $\mu$ es una *medida de probabilidad*; la medida suele denotarse $P$ en lugar de $\mu$ . En este caso, decimos que $(\Omega,\mathcal{A},P)$ es un *espacio de probabilidad* y $P(A)$ es *la probabilidad de $A$*, para cualquier $A\in\mathcal{A}$.

:::
 
Note que una medida es finita si y solo si es acotada. Si $\mu(\Omega)<\infty$, por monotonía se tiene que $\forall A\subseteq\Omega$, $\mu(A)\leq\mu(\Omega)$. Recíprocamente, si $\forall A\subseteq\Omega$ $\mu(A)\leq C\leq\infty$ para alg\'un $C\in\mathbb{R}$, en particular $\mu(\Omega)\leq C\leq \infty$. 
 
::: {.definition #unnamed-chunk-56}
Una medida $\mu$ sobre $(\Omega,\mathcal{A})$, es $\sigma$-finita si existe una colección disjunta numerable $(A_{n})_{n\in\mathbb{N}}\subseteq\mathcal{A}$, tal que $\Omega=\bigcup_{n\in\mathbb{N}} A_{n}$ y $\mu(A_{n})\leq \infty$ para todo $n\in\mathbb{N}$.

:::

::: {.example #unnamed-chunk-57}
*La medida de contar*. La función $\mu:\wp(\Omega)\longrightarrow \overline{\mathbb{R}^{+}}$, definida por $$\mu(A)=\left\lbrace \begin{array}{cc}
	|A|& \mbox{ si } A \mbox{ es un conjunto finito}\\
	\infty& \mbox{ en otro caso}
	\end{array}\right.$$
	$\mu$ es una medida sobre $(\Omega,\wp(\Omega))$. Si $\Omega$ es un conjunto finito, $\mu$ es una medida finita. Si $\Omega$ es numerable, $\mu$ es $\sigma$-finita.

:::

::: {.example #unnamed-chunk-58}
Sea $P=\{(a,b]: a\leq b\in\mathbb{R}\}$. La función *longitud* es la dada por $l:P\longrightarrow \mathbb{R}$ donde $l((a,b])=b-a$. Esta función es una medida finita. Si extendemos $l$ al anillo generado $\mathcal{R}(P)$, de forma natural, obtenemos una función finitamente aditiva.

:::

::: {.example #unnamed-chunk-59}
Sea $\Omega$ un conjunto infinito y $E=\{x_{1},x_{2},\cdots\}\subseteq\Omega$ un subconjunto numerable de $\Omega$. Sea $(\lambda_{i})_{i\mathbb{N}}$ una sucesión numerable de números reales positivos. Sea $\mu:\wp(\Omega)$$\longrightarrow\mathbb{R}$ definida por $\mu(A)=\sum_{x_{i}\in A}\lambda_{i}$, $\mu$ es una medida, es finita si la serie $\sum_{i\geq 1}\lambda_{i}$ converge. Este tipo de medidas se les llama medidas discretas.

:::

::: {.proposition #unnamed-chunk-60}
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

::: {.proposition #unnamed-chunk-62}
Sea $(\Omega,\mathcal{A})$ es un espacio medible y $\mu:\mathcal{A}\longrightarrow\mathbb{R}^{+}$ una medida finita, finitamente aditiva. Entonces $\mu$ es $\sigma$-aditiva si y solo si para todo $(E_{n})_{n}\subseteq\wp(\mathcal{A})$ decreciente, se tiene que $\mu\left( \bigcap_{n\geq 1} F_{n}\right) =\lim_{n}\downarrow \mu(F_{n})$. La notación $\lim_{n}\downarrow \mu(F_{n})$ denota límite decreciente, es decir, el límite de una sucesión decreciente.

:::

La demostración de esta proposición es análoga a la anterior.

::: {.remark}
En la proposición para sucesiones decrecientes, se pueden remplazar las hipótesis por *si toda sucesión decreciente $(F_{n})_{n\geq 1}$ tal que $\bigcap_{n\geq 1} F_{n}=\emptyset$, entonces $\lim_{n} \mu(F_{n})=0$*.
Si $\mu$ no es una medida finita, la proposición no es cierta. Aunque si se pide que $\mu\left( \bigcap_{n\geq 1}F_{n}\right) =\lim_{n} \mu(F_{n})$ para toda sucesión $(F_{n})$ decreciente tal que $\mu(F_{n})<\infty$ para algún $n$.

:::

A continuación veremos algunos *teoremas de clases monótonas*, que aunque son varios, llevan el mismo nombre porque son similares. Pero antes presentamos un lema útil para la demostración de estos teoremas.

::: {.lemma #unnamed-chunk-64}
Si una clase de conjuntos $\mathcal{A}$ es a la vez un anillo y una clase monótona entonces $\mathcal{C}$ es un $\sigma$-anillo.

:::

::: {.proof}
Como $\mathcal{C}$ es un anillo, basta ver que es cerrado bajo uniones e intersecciones numerables. Sea $(A_{n})_{n\geq 1} \subseteq \mathcal{C}$. Definamos la siguiente clase monótona creciente a partir de la sucesión $(A_{n})_{n\geq 1}$: $C_{n}=\bigcup_{i=1}^{n} A_{i}$ para todo $n\in\mathbb{N}$. Como $\mathcal{C}$ es un anillo, cada $C_{n}\in\mathcal{C}$. Por construcción, $(C-{n})_{n\geq 1}$ es una sucesión creciente, y como $\mathcal{C}$ es una clase monótona, $\bigcup_{n\geq 1} A_{n}=\bigcup_{n\geq 1} C_{n}\in\mathcal{C}$. De forma análoga se demuestra que $\mathcal{C}$ es cerrado bajo intersecciones numerables.

:::

::: {.theorem #unnamed-chunk-66}
Sea $\mathcal{R}$ un anillo. Entonces el $\sigma$-anillo generado por $\mathcal{R}$ coincide con la clase monótona generada por $\mathcal{R}$. Es decir, $\sigma_{\mathcal{R}}(\mathcal{R})=\mathcal{M}(\mathcal{R})$.

:::
::: {.proof}
(i.) Es obvio que $\mathcal{M}(\mathcal{R})\subseteq\sigma_{\mathcal{R}}(\mathcal{R})$.

 (ii.) Ahora veamos que $\sigma_{\mathcal{R}}(\mathcal{R})=\mathcal{M}(\mathcal{R})$. Primero probemos que $\mathcal{M}(\mathcal{R})$ es un anillo y del lema anterior obtendremos el resultado. Sea $F\in\mathcal{R}$ y definamos $L(F)=\{E\in\mathcal{M}(\mathcal{R}): E\backslash F, F\backslash E, E\cup F, E\cap F\in\mathcal{M}(\mathcal{R}) \}$. $L(F)$ es una clase monótona. En efecto, sea $(E_{n})_{n\geq 1}\subseteq L(F)$ una sucesión creciente. Como $(E_{n}-F)_{n\geq 1}$ es una sucesión creciente en $\mathcal{M}(\mathcal{R})$ y  $\left( \bigcup_{n\geq 1} E_{n} \right) -F= \bigcup_{n\geq 1}(E_{n}-F)$, entonces $\left( \bigcup_{n\geq 1} E_{n}\right)-F\in\mathcal{M}(\mathcal{R})$. Demostrar que $F\backslash (E_{n})_{n\geq 1}, (E_{n})_{n\geq 1}\cup F, (E_{n})_{n\geq 1}\cap F$ pertenecen a $\mathcal{M}(\mathcal{R})$, es análogo. Para sucesiones decrecientes, es análogo. Con lo que se demuestra que $\mathcal{M}(\mathcal{R})$ es una clase monótona. Además, $\mathcal{R}\subseteq L(F)$.
Sea $L=\{F\in\mathcal{M}(\mathcal{R}): E\backslash F, F\backslash E, E\cup F, E\cap F\in\mathcal{M}(\mathcal{R})\}$. Es claro que $L(F)\subseteq L$, por lo tanto, $\mathcal{R}\subseteq L$. Es claro que $L$ es una clase monótona; por el lema anterior, se tiene que $L=\mathcal{M}(\mathcal{R})=\sigma_{\mathcal{R}}(\mathcal{R})$.

:::

::: {.theorem #unnamed-chunk-68}
	Sea $\mathcal{A}$ un álgebra y $\mathcal{M}$ una clase monótona tal que $\mathcal{A}\subseteq\mathcal{M}$, entonces $\sigma(\mathcal{A})\subseteq\mathcal{M}$.

:::
::: {.proof}
 	Veamos que $\sigma(\mathcal{A})=\mathcal{M}(\mathcal{A})\subseteq\mathcal{M}$. Es claro que $\sigma(\mathcal{A})$ es una clase monótona, por lo tanto, $\sigma(\mathcal{A})\subseteq\mathcal{M}(\mathcal{A})$. Ahora, dado $A\in\mathcal{M}(\mathcal{A})$, entonces $A\in\mathcal{A}$ o es límite de una sucesión monótona de $\mathcal{A}$. Por lo tanto $A\in\sigma(\mathcal{A})$.

:::

Otro teorema de este tipo es el siguiente:

::: {.theorem #unnamed-chunk-70}
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

Placeholder


## Construyendo la Medida de Lebesgue
## Unicidad de la medida de Lebesgue y otras propiedades
## Consideraciones
## La Medida de Stieltjes

<!--chapter:end:030-La-medida-de-Lebesgue.Rmd-->


# FUNCIONES MEDIBLES

Placeholder


## Conceptos básicos
## Aproximaciones de funciones medibles

<!--chapter:end:040-funciones-medibles.Rmd-->


# LA INTEGRAL DE LEBESGUE

Placeholder


## Conceptos básicos
## Intercambio de límites con la integral
## Teoremas de Aproximación
## Más sobre la Integral de Lebesgue

<!--chapter:end:050-la-integral-de-lebesgue.Rmd-->


# CONVERGENCIA

Placeholder


## Tipos de convergencia
## Espacios $L^{p}$
## Espacios $L^{\infty}$
## Espacios de Hilbert

<!--chapter:end:051-tipos-de-convergencia.Rmd-->


# DIFERENCIACION E INTEGRACIÓN

Placeholder


## Funciones monótonas
## Funciones de variación acotada
## De la Integral indefinida.  Continuidad Absoluta
## Cambio de variables

<!--chapter:end:070-diferenciacion-e-integracion.Rmd-->


# INTEGRACIÓN EN $\mathbb{R}^{n}$

Placeholder


## Espacio Producto
## Medida de Lebesgue en $\mathbb{R}^{n}$
## Teorema de Fibini. Teorema de Tonelli

<!--chapter:end:080-integracion-en-espacio-producto.Rmd-->


# (APPENDIX) Apéndice {-}
# Software Tools

Placeholder


## R and R packages
## Pandoc
## LaTeX

<!--chapter:end:400-apendice.Rmd-->

# Referencias {-}




<!--chapter:end:500-references.Rmd-->

