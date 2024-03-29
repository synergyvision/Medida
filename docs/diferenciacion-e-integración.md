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

En este capítulo estudiaremos las condiciones necesarias para obtener un resultado análogo al teorema fundamental del cálculo usando la integral de Lebesgue en lugar de la integral de Riemann. Para alcanzar este objetivo primero estudiaremos las funciones monótonas, las funciones de variación acotada y las funciones absolutamente continuas.

## Funciones monótonas

::: {.definition #unnamed-chunk-1}
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

::: {.definition #unnamed-chunk-3}
Dado $E\subseteq\mathbb{R}$ un conjunto de números reales. Decimos que $\mathcal{I}$ una colección de intervalos no degenerados es un *cubrimiento de Vitali* de $E$ si para todo $\epsilon>0$ y para todo $x\in E$, existe un intervalo $I\in\mathcal{I}$ tal que $x\in I$ y $l(I)<\epsilon$.

:::

El siguiente teorema es conocido como el *Lema de Vitali*.

::: {.theorem #unnamed-chunk-4 name="Lema de Vitali"}
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

::: {.corollary #unnamed-chunk-7}
Sea $E\subseteq\mathbb{R}$ con $m^{\ast}(E)<\infty$. Si $\mathcal{I}$ es un cubrimiento de Vitali de $E$, entonces, para todo $\epsilon>0$, existe una colección finita $I_{1},\cdots, I_{N}$ de intervalos disjuntos de $\mathcal{I}$, tales que $$m^{\ast}\left(E\backslash\bigcup_{i=1}^{N}I_{i} \right) <\epsilon.$$

:::

::: {.theorem #unnamed-chunk-8 name="Lebesgue"}
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

::: {.theorem #unnamed-chunk-11}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones monótonas crecientes definidas en $[a,b]$ tal que la serie $\sum_{n\in\mathbb{N}} f_{n}(x)$ converge puntualmente en $[a,b]$. Sea $f(x)=\sum_{n\in\mathbb{N}} f_{n}(x)$. Entonces 
$\sum_{n\in\mathbb{N}} f´_{n}(x)=f´(x)$ en c.t.p. de $[a,b]$.

:::

## Funciones de variación acotada

::: {.definition #unnamed-chunk-12}
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

::: {.definition #unnamed-chunk-14}
Dada $f:\mathbb{R}\longrightarrow\mathbb{R}$, la variación total de $f$ sobre un intervalo finito $I$, está defindo como $$V_{f}(I)=\sup_{\substack{\rho\in Par[I]}}\sum_{x_{i}\in\rho} |f(x_{i})-f(x_{i-1})|.$$

:::

::: {.remark}
Si $f$ es de variación acotada en $[a,b]$, para todo $c\in(a,b)$, se puede probar que $V_{f}(a,b)=V_{f}(a,c)+V_{f}(c,b)$.

:::

Considermos la función $x\mapsto V_{f}(a,x)$, para todo $x\in(a,b)$, cuando $f$ es de variación acotada en $[a,b]$. El siguiente resultado nos muestra un interesante hecho sobre esta función.

::: {.proposition #unnamed-chunk-16}
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

::: {.corollary #unnamed-chunk-18}
Sea $f:[a,b]\longrightarrow\mathbb{R}$. Entonces $f$ es de variación acotada en $[a,b]$ si y solo si $f$ se escribe como diferencia de funciones monótonas.

:::

Del teorema de derivaciÓn de Lebesgue, se tiene que las funciones monótonas en $I=(\alpha,\beta)$ tienen derivada en c.t.p. de $I$ y que 
$$\int_{a}^{b}f´(x)dx\leq f(b)-f(a)\mbox{ para todo } [a,b]\subseteq I$$
luego, del corolario anterior se tiene el siguiente resultado

::: {.corollary #unnamed-chunk-19}
Sea $f:[a,b]\longrightarrow\mathbb{R}$ de variaciÓn acotada en $[a,b]$, entonces $f$ es derivable en c.t.p. de $[a,b]$

:::

## De la Integral indefinida.  Continuidad Absoluta

Que una función sea de variación acotada es una condición necesaria para que una función sea la integral indefinida de su integral.

::: {.proposition #unnamed-chunk-20}
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

::: {.lemma #unnamed-chunk-22}
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

::: {.theorem #unnamed-chunk-24}
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

::: {.definition #unnamed-chunk-26}
Dada $F:\mathbb{R}\longrightarrow\mathbb{R}$ una función continua y monótona, tal que $F´=0$ c.s. decimos que $F$ es una *función singular*.

:::

Si a una primitiva $F$, de una función integrable $f$ le sumamos una función singular $G$, obtenemos otra primitiva de $f$.

Por otro lado, para tener certeza de que para todo $x\in[a,b]$, $F(x)=F(a)+\int_{a}^{x} F´(t)dt$, cuando $F:[a,b]\longrightarrow\mathbb{R}$ es una función continua y derivable c.s. se debe pedir continuidad absoluta de la función $F$. Que $F$ sea de variación acotada es una condición necesaria, más no suficiente.

::: {.definition #unnamed-chunk-27}
Sea $I\subseteq\mathbb{R}$ un intervalo cualquiera. La función $f:I\longrightarrow\mathbb{R}$ es *absolutamente continua en un intervalo acotado* $[a,b]\subseteq I$ si para todo $\epsilon>0$, existe $\delta>0$ tal que si $(a_{i},b_{i})_{i=1}^{n}$ es una colección finita cualquiera de subintervalos disjuntos de $[a,b]$, tienen la propiedad:
$$\sum_{i=1}^{n} (b_{i}-a_{i})<\delta\Rightarrow \sum_{i=1}^{n}|f(b_{i})-f(a_{i})|<\epsilon.$$

:::

::: {.remark}
La continuidad absoluta implica la continuidad uniforme.

:::

La continuidad absoluta de la integral de Lebesgue, implica la continuidad absoluta de la integral indefinida, esto es,

::: {.proposition #unnamed-chunk-29}
Se $f$ es integrable Lebesgue en $[a,b]$ y $F(x)=F(a)+\int_{a}^{x} f(t)dt$, entonces $F$ es absolutamente continua.

:::
::: {.proof}
Sea $\epsilon>0$. Por la continuidad absoluta de la integral que, existe $\delta>0$ tal que 
$$m(A)<\delta\Rightarrow \int_{A} |f|dt<\epsilon\mbox{ para } A\subseteq[a,b].$$
Tomando $A=\bigcup_{i=1}^{n}(a_{i},b_{i})$, donde la familia $[(a_{i},b_{i})]_{i=1}^{n}$ es una familia disjunta de subintervalos tales que $\sum_{i=1}^{n}l(a_{i},b_{i})<\delta$, entonces 
$$\sum_{i=1}^{n}|F(b_{i})-F(a_{i})|=\sum_{i=1}^{n}\left| \int_{a_{i}}^{b_{i}}f(t)dt\right| \leq\sum_{i=1}^{n} \int_{a_{i}}^{b_{i}}|f(t)|dt=\int_{A}|f(t)|dt<\epsilon.$$

:::

Es fácil ver que una función absolutamente continua, es de variación acotada. 

::: {.proposition #unnamed-chunk-31}
Si $f$ es absolutamente continua en $[a,b]$, entonces es de variación acotada en $[a,b]$.

:::

::: {.lemma #unnamed-chunk-32}
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

::: {.theorem #unnamed-chunk-34}
Una función $F:I\longrightarrow\mathbb{R}$ es una integral indefinida si y solo si es absolutamente continua.

:::

::: {.corollary #unnamed-chunk-35}
Toda función absolutamente continua es la integral indefinida de su derivada.

:::

## Cambio de variables

Este capítulo abordará de forma muy somera teoremas referidos al cambio de variables en la integral de Lebesgue.

Comencemos por la siguiente idea. Sea $(X,\mathcal{F},\mu)$ un espacio de medida y $(Y,\mathcal{G})$ un espacio medible. Sea $f:X\longrightarrow Y$ una función $\mathcal{F}$-medible. Definamos una medida en $Y$ de esta forma:
$$\nu(A)=\mu(f^{-1}(A))\mbox{ para cualquier } A\in\mathcal{G}.$$
En efecto, $\nu$ es una medida en $(Y,\mathcal{G})$. Como $f$ es medible, $f^{-1}(A)\in\mathcal{F}$ y $\mu(f^{-1}(A))\geq 0$, para todo $A\in\mathcal{G}$. Claramente, $\nu(\emptyset)=0$ y por último, como la función inversa se comporta bien bajo uniones, se tiene que $$\nu\left( \bigcup_{i\geq 1} E_{i}\right)=\mu\left(f^{-1}\left( \bigcup_{i\geq 1} E_{i}\right) \right)=\sum_{i\geq 1}\mu(f^{-1}(E_{i}))=\sum_{i\geq 1}\nu(E_{i})$$
cuando $(E_{i})_{i\geq 1}\subseteq \mathcal{G}$ es una familia disjunta.

::: {.theorem #unnamed-chunk-36}
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

::: {.theorem #unnamed-chunk-38}
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

