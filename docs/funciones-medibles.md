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

Placeholder


## Preliminares
## Colecciones de Conjuntos
## El conjunto de Cantor
## Medida

<!--chapter:end:020-preliminares.Rmd-->


# LA MEDIDA DE LEBESGUE

Placeholder


## Construyendo la Medida de Lebesgue
## Unicidad de la medida de Lebesgue y otras propiedades
## Consideraciones
## La Medida de Stieltjes

<!--chapter:end:030-La-medida-de-Lebesgue.Rmd-->

# FUNCIONES MEDIBLES

En este capítulo estudiaremos las funciones medibles y sus propiedades. Luego definiremos las funciones simples, útiles para definir más adelante la integral de Lebesgue, que para este tipo de funciones, se define de forma muy intuitiva. Además, estudiaremos cuando una función se puede aproximar por funciones simples.

## Conceptos básicos

::: {.definition #unnamed-chunk-1}
Sea $f:\mathbb{R}\longrightarrow\mathbb{R}$. Se dice que $f$ es *medible Borel* cuando para todo conjunto boreliano $B$, se tiene que $f^{-1}(B)$ es un conjunto boreliano. Es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{B}(\mathbb{R})$.
Cuando para todo conjunto boreliano $B$, $f^{-1}(B)$ es un conjunto medible Lebesgue, $f$ se dice *medible Lebesgue*. Es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{M}$.
Más generalmente, dado un espacio medible $(X,\mathcal{A})$. Una función $f:X\longrightarrow\mathbb{R}$ es una función $\mathcal{A}$-medible, cuando para cada conjunto boreliano $B$, $f^{-1}\in\mathcal{A}$; es decir, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{A}$.

:::

Como $f^{-1}$ se comporta bien bajo complementación y uniones, en la definición anterior, basta verificar que un conjunto generador de la $\sigma$-álgebra de Borel, tiene imagenes inversas en la $\sigma$-álgebra del espacio dominio $X$ (en el caso del espacio $\mathbb{R}$, $\mathcal{B}(\mathbb{R})$ o $\mathcal{M}$). Para esto iniciamos con el siguiente lema.

::: {.lemma #unnamed-chunk-2}
Sea $\mathcal{C}$ una clase de subconjuntos que genera a $\mathcal{B}(\mathbb{R})$ y $f:(X,\mathcal{A})\longrightarrow\mathbb{R}$. Entonces, $f^{-1}(\mathcal{B}(\mathbb{R}))\subseteq\mathcal{A}$ si y solo si $f^{-1}(\mathcal{C})\subseteq\mathcal{F}$.

:::

::: {.proposition #unnamed-chunk-3}
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

::: {.example #unnamed-chunk-5}
Si $(X,\mathcal{A})$ es un espacio medible y $A\in\mathcal{A}$ entonces la función indicatriz $\chi_{A}$, es una función $\mathcal{A}$-medible.

:::

::: {.example #unnamed-chunk-6}
Las funciones continuas son medibles Borel:
Sea $X$ un espacio topológico y $f:X\longrightarrow \mathbb{R}$ una función continua. Entonces $f$ es medible Borel.

:::

::: {.example #unnamed-chunk-7}
Las funciones constantes son medibles: Si $(X,\mathcal{A})$ es un espacio medible y $\lambda\in\mathbb{R}$. La función $f:X\longrightarrow \mathbb{R}:x\mapsto \lambda$ es una función $\mathcal{A}$-medible.

:::

::: {.example #unnamed-chunk-8}
Las variables aleatorias son funciones medibles:
Si $(\omega,\mathcal{A}, P)$ es un espacio de probabilidad y $X:\omega\longrightarrow\mathbb{R}$ una variable aleatoria. Se tiene que $X$ es una función $\mathcal{A}$-medible.

:::

Podemos considerar funciones que tomen valores infinitos, esto es $f:X\longrightarrow \overline{\mathbb{R}}$. Y para estas funciones, la definición de medibilidad sería así: $f$ es una *función $\mathcal{A}$-medible* si y solo si:

(i.) $f^{-1}(B)\in\mathcal{A}$, para todo $B\in\mathcal{B}(\mathbb{R})$,

(	ii.) $f^{-1}(\infty)\in\mathcal{A}$ y

(iii.) $f^{-1}(-\infty)\in\mathcal{A}$.


::: {.proposition #unnamed-chunk-9}
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

::: {.proposition #unnamed-chunk-12}
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

::: {.proposition #unnamed-chunk-15}
Sean $f,g:X\longrightarrow\overline{\mathbb{R}}$ funciones $\mathcal{A}$-medibles. Entonces $\forall\epsilon>0$ se tiene que $\{x\in X: |f(x)-g(x)|>\epsilon \}\in\mathcal{A}$.

:::
::: {.proof}
Como $|f-g|$ es una función $\mathcal{A}$-medible y el intervalo $(\epsilon,\infty)$ es un conjunto Boreliano, se tiene el resultado.

:::

## Aproximaciones de funciones medibles

Recuerde que una función escalera es una combinación lineal de funciones indicadoras de intervalos $\mathbb{I}_{k}$
$$f=\sum_{k=1}^{n} C_{k}\chi_{\mathbb{I}_{k}}.$$
Si $\mathcal{A}$ es una $\sigma$-álgebra de $\mathbb{R}$ que contiene a los intervalos, entonces las funciones escaleras son funciones $\mathcal{A}$-medibles.

::: {.definition #unnamed-chunk-17}
Sea $(X,\mathcal{A})$ un espacio medible. Una función $f:X\longrightarrow\mathbb{R}$ de la forma  $$f(x)=\sum_{k=1}^{n} C_{k}\chi_{A_{k}}(x) \mbox{ donde } x_{k}\in\mathbb{R} \mbox{ y }A_{k}\in\mathcal{A}$$
es llamada *función $\mathcal{A}$-simple*. En el caso que la $\sigma$-álgebra sea la $\sigma$-álgebra de Borel, decimos que es una función simple, omitiendo la $\sigma$-álgebra.

:::

Es fácil ver que la suma y el producto de funciones $\mathcal{A}$-simples, son funciones $\mathcal{A}$-simples. Así como el producto de una función $\mathcal{A}$-simple por un escalar, resulta ser también una función $\mathcal{A}$-simple.

::: {.definition #unnamed-chunk-18}
Sea $(X,\mathcal{A},\mu)$ un espacio de medida y $f:X\longrightarrow \overline{R}$ diremos que $f$ cumple cierta propiedad $P$ *$\mu$-casi siempre* (abreviado $\mu$-c.s.) si y solo si $\{x\in X: f(x) \mbox{ no cumple } P \}\in\mathcal{A}$ y $\mu(\{x\in X: f(x) \mbox{ no cumple } P \})=0$. 

:::

También puede usarse la expresión *$P$ en casi todo punto*, aunque esta última no evidencia la referencia a la medida $\mu$, por lo que suele usarse cuando la medida es la de Borel o Lebesgue. Esto se abrevia $c.t.p$.

::: {.example #unnamed-chunk-19}
Sea $f=\chi_{\mathbb{R}-\mathbb{Q}}$. La propiedad *$f$ es constantemente igual a $1$* no es cierta. Pero si se cumple en casi todo punto, ya que $\{x\in \mathbb{R}: f(x)\neq 1 \}=\mathbb{Q}$.

:::

::: {.proposition #unnamed-chunk-20}
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

::: {.theorem #unnamed-chunk-23}
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

::: {.corollary #unnamed-chunk-25}
Sea $f:(X,\mathcal{A})\longrightarrow (\mathbb{R},\mathcal{B}(\mathbb{R}))$ $\mathcal{A}$-medible. Entonces existe una sucesión de funciones simples $\{f_{n}\}_{n}$ tal que $f_{n}(x)\rightarrow f(x)$ para cada $x\in X$. Además, si $f$ es una función acotada, la convergencia es uniforme.

:::

Otro corolario del teorema es

::: {.corollary #unnamed-chunk-26}
Sea $f:(X,\mathcal{A})\longrightarrow (\mathbb{R},\mathcal{B}(\mathbb{R}))$ $\mathcal{A}$-medible y acotada. Entonces $\forall\epsilon>0$ existe una sucesión de funciones simples $\{f_{n}\}_{n}$ tal que $|f_{n}(x)-f(x)|$ para todo $x\in X$.

:::

Una aplicación de este teorema consiste en la aproximación de funciones medibles por funciones escaleras y por funciones continuas:

::: {.theorem #unnamed-chunk-27}
Sea $f$ una función medible Lebesgue (o medible Borel) definida en el intervalo $[a,b]$. Si $f$ es finita en casi todo punto, entonces para todo $\epsilon>0$, existe una función escalera $g$ y una función continua $h$ tales que $$|f-g|<\epsilon\mbox{ y } |f-h|<\epsilon$$ salvo en un conjunto de medida menor que $\epsilon$. Además, si existen $m, M\in\mathbb{R}$ tales que $m\leq f\leq M$, entonces $g$ y $h$ se pueden elegir acotadas por $m$ y $M$, es decir, $m\leq g,h\leq M$.

:::

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

