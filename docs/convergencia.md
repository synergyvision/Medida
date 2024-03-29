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

Ya conocemos la convergencia puntual y la convergencia uniforme de sucesiones de funciones, pero se pueden definir otros tipos de convergencia. En este capítulo estuadiaremos los distintos tipos de convergencia, así como la relación entre ellas. Definiremos espacios $L^{p}$ y estudiaremos la convergencia en ellos. Finalmente estudiaremos someramente los espacios de Hilbert.

## Tipos de convergencia

Recordaremos las definiciones ya conocidas de convergencia puntual y uniforme y añadiremos a la lista otras definiciones de convergencia. La definición de sucesión de Cauchy depende de la convergencia, mas adelante veremos como se redefine según el tipo de convergencia.

::: {.definition #unnamed-chunk-1}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue. Sea $E\in\mathcal{M}$. 

(1.) Decimos que $\{f_{n}\}_{n}$ *converge puntualmente a una función $f$* en $E$, si y solo si para todo $x\in E$, $\lim\limits_{n\to\infty} f_{n}(x)=f(x)$. Es decir $\forall x\in E\forall\epsilon>0\exists N\in\mathbb{N}[n>N\Rightarrow |f_{n}(x)-f(x)|<\epsilon]$. Se suele escribir $f_{n}\to f$ puntualmente.

(2.) Decimos que $\{f_{n}\}_{n}$ *converge uniformemente* a una función $f$ en $E$, si y solo si para todo $\epsilon>0$, existe $N\in\mathbb{N}$ tal que para todo $x\in E$,   si $n>N$ entonces $|f_{n}(x)-f(x)|<\epsilon$. Es decir $\forall\epsilon>0\exists N\in\mathbb{N}[\forall x\in E(n>N\Rightarrow |f_{n}(x)-f(x)|<\epsilon)]$. Se escribe $f_{n}\to f$ uniformemente.

(3.) Decimos que $\{f_{n}\}_{n}$ *converge puntualmente* a una función $f$ *en casi todo punto de* $E$, si y solo si $\{f_{n}\}_{n}$ converge puntualmente a $f$ en un conjunto $F\subseteq E$ y $m(E\backslash F)=0$. Es decir	$m\{x\in E: \{f_{n}(x)\}_{n} \mbox{ no converge a } f(x) \}=0$. Se escribe $f_{n}\to f$ en c.t.p (casi todo punto) de $E$.

(4.) Decimos que $\{f_{n}\}_{n}$ *converge uniformemente* a una función $f$ *en casi todo punto de* $E$, si y solo si $\{f_{n}\}_{n}$ converge uniformemente a $f$ en $F\subseteq E$ y $m(E\backslash F)=0$. Se escribe $f_{n}\to f$ uniformemente en c.t.p. de $E$.

:::

::: {.example #unnamed-chunk-2}
La sucesión de las funciones $f_{n}(x)=x^{n}\chi_{[0,1]}$ converge puntualmente a la función $$f(x)=\left\lbrace\begin{array}{ll}
	0&\mbox{ si } 0\leq x<1\\
	1&\mbox{ si } x=1
\end{array}\right.$$ en el intervalo $[0,1]$. Por lo tanto, converge en casi todo punto de $[0,1]$. Pero no converge uniformemente en $[0,1]$. Tampoco se puede decir que converge uniformemente en casi todo punto de $[0,1]$ aunque el conjunto donde falla la convergencia se puede hacer tan pequeño como se quiera.

:::

::: {.definition #unnamed-chunk-3}
Decimos que $\{f_{n}\}_{n}$ *converge casi uniformemente* a una función $f$ en un conjunto medible $E$, si y solo si $\forall\epsilon>0$, existe $F\subseteq E$ tal que $\{f_{n}\}_{n}$ converge uniformemente a $f$ en $F$ y $m(E\backslash F)=0$. Se escribe $f_{n}\to f$ c.u. en $E$.

:::

::: {.remark}
Es claro que la convergencia uniforme implica la convergencia casi uniforme. Pero el recíproco no es cierto.

:::

::: {.proposition #unnamed-chunk-5}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue. Si $f_{n}\to f$ casi uniformemente en un conjunto medible $E$, entonces $f_{n}\to f$ en casi todo punto de $E$.

:::
::: {.proof}
Sea $F_{n}\subseteq E$ tal que $f_{n}\to f$ uniformemente en $E\backslash F_{n}$ y $m(F_{n})<\frac{1}{n}$. Tomando $F=\bigcap F_{n}$, se tiene que $m(F)=0$ y $f_{n}(x)\to f(x)$ en c.t.p de $E$.

:::

::: {.remark}
El recíproco de la proposición anterior, es falso tal como lo muestra el siguiente ejemplo.

:::

::: {.example #unnamed-chunk-8}
Sea $f_{n}=\chi_{[n,\infty)}$. Es claro que $f_{n}\to 0$ para todo $x\in\mathbb{R}$ pero $f_{n}$ no converge c.u. a $0$ en $\mathbb{R}$.

:::

::: {.theorem #unnamed-chunk-9 name="Egorov´s"}
Sea $E\in\mathcal{M}$ un conjunto de medida finita y sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles $f_{n}:E\longrightarrow\overline{\mathbb{R}}$ tales que, para cada $n\in\mathbb{N}$, $|f_{n}|<\infty$ en c.t.p de $E$. Sea $f:E\longrightarrow\overline{\mathbb{R}}$ una función finita en c.t.p. de $E$. Supongamos que $f_{n}\to f$ en c.t.p. de $E$. Entonces $f_{n}\to f$ c.u. en $E$.

:::
::: {.proof}
Sean $A_{n}=\{x\in\mathbb{R}:|f_{n}(x)|=\infty \}$ para cada $n\in\mathbb{N}$, $B=\{x\in\mathbb{R}:|f(x)|=\infty \}$ y $C=\{x\in\mathbb{R}: f_{n}(c)\mbox{ no converge a } f(x) \}$. Llamemos $F=\left( \bigcup_{n\in\mathbb{N}}A_{n}\right) \cup B\cup C$, entonces $m(F)=0$. Sea $\overline{E}=E\backslash F$. Si demostramos que $f_{n}\to f$ c.u. en $\overline{E}$, entonces se tiene que $f_{n}\to f$ c.u. en $E$. Entonces podemos suponer sin pérdida de generalidad que para todo $n\in\mathbb{N}$, $|f_{n}|$ es finita en $E$, que $|f|$ es finita y que $f_{n}\to f$ en $E$.
Fijemos $\epsilon>0$. Sea $$E_{n}^{m}=\bigcap_{k\geq n}\left\lbrace x\in\mathbb{R}: |f_{k}(x)-f(x)|<\frac{1}{m} \right\rbrace $$
para $m$ fijo, la sucesión $(E_{n}^{m})_{n\in\mathbb{N}}$, es una sucesión creciente; además, como $f_{n}(x)\to f(x)$ en $E$, se tiene que $E=\bigcup_{n\in\mathbb{N}} E_{n}^{m}$. Entonces, $(E\backslash E_{n}^{m})_{n\in\mathbb{N}}$ es una sucesión decreciente que tiende a vacío, es decir, $E\backslash E_{n}^{m}\to\emptyset$, para cada $m\in\mathbb{N}$. Como $E$ tiene medida finita, para cada $m$, existe $N_{m}$ tal que $m(E\backslash E_{n}^{m})<\frac{\epsilon}{2^{m}}$ para todo $n\geq N_{m}$. Sea $F_{\epsilon}=\bigcup_{m\in\mathbb{N}} E\backslash E_{N_{m}}^{m}$, entonces $m(F_{\epsilon})<\epsilon$. Se tiene que $f_{n}\to f$ en $E\backslash F_{\epsilon}=\left(\bigcap_{m\in\mathbb{N}} E_{N_{m}}^{m} \right) $. Sea $\xi>0$, tomemos $m\in\mathbb{N}$ tal que $\frac{1}{n}<\xi$, entonces para todo $k\geq N_{m}$ y para todo $x\in E\backslash F_{\epsilon}$ se tiene que $$|f_{k}(x)-f(x)<\xi.$$

:::

Definamos ahora otro tipo de convergencia y su respectiva definición de sucesión de Cauchy en medida.

::: {.definition #unnamed-chunk-11}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{R}$ medibles y finitas en c.t.p. Sea $f:\mathbb{R}\longrightarrow\overline{R}$ una función medible finita en c.t.p. Decimos que *$f_{n}$ converge a $f$ en medida* (y lo denotamos por $f_{n}\xrightarrow{m} f$) si para todo $\epsilon>0$ se tiene que $$\lim\limits_{n\to\infty} m\{x\in\mathbb{R}:|f_{n}(x)-f(x)|\geq\epsilon \}=0.$$

:::
Otra forma de expresarlo es: $f_{n}\xrightarrow{m} f$ si y solo si
$$\forall\epsilon>0\forall\xi>0\exists N\in\mathbb{N}(n\geq N \Rightarrow m\{x\in\mathbb{R}:|f_{n}(x)-f(x)|\geq\epsilon\}<\xi).$$

::: {.definition #unnamed-chunk-12}
Una sucesión $(f_{n})_{n\in\mathbb{N}}$ de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{R}$ medibles es *de Cauchy en medida* si y solo si para todo $\epsilon>0$ y todo $\xi>0$, existe $N\in\mathbb{N}$ tal que si $n,m>N$, entonces $m\{x\in\mathbb{R}:|f_{n}(x)-f_{m}(x)|\geq\epsilon\}<\xi.$

:::

::: {.remark}
La convergencia en casi todo punto no implica, en general, la convergencia en medida, salvo que la convergencia en c.t.p. esté dada en un conjunto de medida finita. El recíproco tampoco es cierto, es decir, la convergencia en medida no implica la convergencia en c.t.p.

:::

::: {.example #unnamed-chunk-14}
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

::: {.proposition #unnamed-chunk-15}
Sea $(f_{n})_{n\in\mathbb{N}}$ una sucesión de funciones medibles finitas en c.t.p. que converge en medida a una función medible $f$. Entonces, existe una subsucesión $(f_{n_{k}})_{k\in\mathbb{N}}$ tal que $f_{n_{k}}\xrightarrow{k\to\infty} f$ en c.t.p.

:::
::: {.proof}
Como $f_{n}\xrightarrow{m} f$, para todo $k\in\mathbb{N}$, existe $n_{k}$ tal que si $n\geq n_{k}$, entonces $$m\{x\in\mathbb{R}: |f_{n}(x)-f(x)|\geq \frac{1}{2^{k}} \}<\frac{1}{2^{k}}.$$
Siempre puede tomarse $n_{k+1}>n_{k}$. Así, la subsucesión $(f_{n_{k}})_{k}$ es la buscada. En efecto, $(f_{n_{k}})_{k}$ converge a $f$ salvo en el conjunto $E=\bigcup_{k\in\mathbb{N}} E_{k}$, donde $E_{k}=\{x\in\mathbb{R}: |f_{n}(x)-f(x)|\geq \frac{1}{2^{k}} \}$ para cada $k\in\mathbb{N}$.

:::

## Espacios $L^{p}$

En esta sección estudiaremos un clase de espacios de funciones muy importantes, estas familias son los espacios $L^{p}$. Para esto vamos a denotar por $\mathfrak{M}$ al conjunto de funciones $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue, definidas en $\mathbb{R}$ y $\mathfrak{M}(A)$ al conjunto de funciones medibles Lebesgue definidas en un conjunto medible $A$, es decir, $f:A\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue.

Sea $1\leq p<\infty$ un número real. Definimos el conjunto $L^{p}=\{f\in\mathfrak{M}: \int|f|^{p}<\infty \}$. Si $p=1$, $L^{1}$ es el conjunto de funciones integrables Lebesgue (en $\mathbb{R}$). Si $A\in\mathcal{M}$, $L^{p}(A)=\{f\in\mathfrak{M}: \int_{A}|f|^{p}<\infty \}$.

::: {.proposition #unnamed-chunk-17}
$L^{p}$ es un espacio vectorial.

:::
::: {.proof}
Basta notar que $|f+g|^{p}\leq 2^{p}\max(|f|^{p},|g|^{p})\leq 2^{p}(|f|^{p}+|g|^{p})$. De las propiedades de la integral se obtiene el resultado.

:::

Sea $f\in L^{p}$, definimos $\|f\|_{p}=\left(\int |f|^{p} \right)^{\frac{1}{p}}$. Si esta función resulta ser una norma, el espacio $L^{p}$ sería un espacio normado; pero no es cierto en general que $\|f\|_{p}=0 \Leftrightarrow f=0$. Lo que si se puede demostrar es que $\|f\|_{p}=0 \Leftrightarrow f=0$  c.s. 

::: {.proposition #unnamed-chunk-19}
$\|f\|_{p}$ es una pseudo-norma en el espacio $L^{p}$, esto es:

(i.) $\|f\|_{p}\geq 0$ para todo $f\in L^{p}$,

(ii.) $\|f\|_{p}=0$ si y solo si $f=0$ casi siempre,

(iii.) $\|kf\|_{p}=|k|\|f\|_{p}$ para todo $k\in\mathbb{R}$ y todo $f\in L^{p}$,

(iv.) $\|f+g\|_{p}\leq \|f\|_{p}+\|g\|_{p}$ para todo $f, g\in L^{p}$ (Desigualdad de Minkowski).
	

:::

Las demostraciones de las primeras tres partes de esta proposición son sencillas. La desigualdad de Minkowski se demostrará como consecuencia de la Desigualdad de Hölder que demostraremos en lo que sigue.

Primero veamos el siguiente lema que será útil para demostrar el teorema.

::: {.lemma #unnamed-chunk-20}
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

::: {.theorem #unnamed-chunk-22 name="Desigualdad de Hölder"}
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

::: {.proposition #unnamed-chunk-25}
Sean $p$ y $q$ índices conjugados. Entonces:

(i.) $q=\frac{p}{p-1}$.

(ii.) $\frac{1}{p-1}=q-1$.

(iii.) $pq=p+q$.

(iv.) $(p-1)q=p$.

:::
La demostración es sencilla, solo requiere de manipulación algebraica de la igualdad $\frac{1}{p}+\frac{1}{q}=1$.

Ahora podemos demostrar la desigualdad de Minkowski.

::: {.theorem #unnamed-chunk-26 name="Desigualdad de Minkowski"}
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

::: {.definition #unnamed-chunk-28}
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

::: {.theorem #unnamed-chunk-30}
Sea $p\geq 1$ y sea $(f_{n})_{n}$ una sucesión de funciones medibles Lebesgue tal que existe una función $h$ tal que $|f_{n}|^{p}\leq h$ c.s. Si se cumplen alguna de las siguientes:


(1.) si existe una función $f$ tal que $f_{n}\to f$ c.s. o

(2.) si existe una función $f$ tal que $f_{n}\xrightarrow[]{m} f$.

Entonces, $f_{n}\xrightarrow[\|\,\|_{p}]{} f$. Además $\liminf_{n\to\infty} |f_{n}-f|^{p}=0$.

:::

Otra consecuencia de la desigualdad de Chebychov es que si una *sucesión es de Cauchy en norma $p$*, esto es que para todo $\epsilon>0$ existe $N_{\epsilon}\in\mathbb{N}$ tal que $n,m>N_{\epsilon}\Leftrightarrow \|f_{n}-f_{m}\|<\epsilon$. Entonces es de Cauchy en medida. 

Ahora veamos que el espacio $L^{p}$ es completo, es decir, que toda sucesión de Cauchy converge a un vector del espacio.

::: {.theorem #unnamed-chunk-31 name="Riesz-Fischer"}
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

::: {.corollary #unnamed-chunk-33}
$\mathcal{L}^{p}$ es un espacio de Banach.

:::

## Espacios $L^{\infty}$

::: {.definition #unnamed-chunk-34}
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

::: {.proposition #unnamed-chunk-36}
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

::: {.definition #unnamed-chunk-38}
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

::: {.definition #unnamed-chunk-39}
Dado un espacio vectorial $X$ con producto interno, decimos que $X$ es un *espacio de Hilbert* si $X$ es completo respecto a la norma inducida por el producto interno.

:::

::: {.example #unnamed-chunk-40}
$\mathbb{R}^{n}$ es un espacio de Hilbert con el producto interno $$(x,y)=\sum_{i=1}^{n} x_{i}y_{i}$$
donde $x=(x_{1},\cdots,x_{n})$ y $y=(y_{1},\cdots,y_{n})$.

:::

::: {.example #unnamed-chunk-41}
$\mathcal{L}^{2}$ es un espacio de Hilbert, con el producto interno definido en el ejemplo \@ref{exm:ejemplo532}.

:::

::: {.example #unnamed-chunk-42}
Sea $l^{2}$ el conjunto de sucesiones de numeros reales de cuadrados convergentes, es decir, $\sum_{i\in\mathbb{N}} |x_{i}|^{2}<\infty$. La función $(x,y)=\sum_{i=1}^{n}x_{i}y_{i}$, con $x=(x_{n})_{n},  y=(y_{n})_{n}\in l^{2}$ es un producto interno. Se puede demostrar que $l^{2}$ junto a esta función es un espacio de Hilbert. 

:::

::: {.proposition #unnamed-chunk-43}
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

::: {.definition #unnamed-chunk-45}
Sea $\mathcal{H}$ un espacio de Hilbert. Un conjunto $E\subseteq \mathcal{H}$ es *linealmente independiente* si todos sus subconjuntos finitos lo son.

:::

::: {.definition #unnamed-chunk-46}
Sea $C\subseteq \mathcal{H}$ se llama *sistema ortogonal* si $(x,y)=0$ para todo $x,y\in A$. Si además se cumple que $\|x\|=1$ para todo $x\in C$, se dice que el sistema $C$ es *ortonormal*.

:::

Es obvio que todo sistema ortogonal es linealmente independiente.

::: {.definition #unnamed-chunk-47}
Dado un conjunto $C\subseteq\mathcal{H}$, el conjunto de todas las *combinaciones lineales finitas* de $C$ lo denotamos por  $$S(C)=\left\lbrace \sum_{i=1}^{n} c_{i}x_{i}: n\in\mathbb{N}, c_{i}\in\mathbb{R}\mbox{ y } x_{i}\in C \right\rbrace .$$
Decimos que $C$ es un *sistema completo* si $S(C)$ es denso en $\mathcal{H}$.

:::

El proceso de ortogonalización de Gram-Schmidt consiste en construír, a partir de una familia linealmente independiente de un espacio vectorial con producto interno, un sistema ortogonal, que además generan los mismos subespacios. Recordemos esto a detalle.

Sea $X$ un espacio vectorial con producto interno $(\cdot,\cdot)$. Sea $\{x_{1},x_{2},\cdots \}$ un conjunto linealmente independiente. Hallaremos $\{\phi_{1},\phi_{2},\cdots \}$ un sistema ortogonal con la propiedad siguiente: $\phi_{n}$ es combinación lineal de $x_{1},\cdots, x_{n}$ y $\left\langle x_{1},\cdots, x_{n}\right\rangle =\left\langle  \phi_{1},\cdots,\phi_{n}\right\rangle $, es decir, el subespacio generado por $\{x_{1},\cdots, x_{n}\}$ coincide con el subespacio generado por $\{\phi_{1},\cdots,\phi_{n}\}$.
El sistema ortogonal es construído así
$\phi_{1}=x_{1}$ y para $n>1$ se pone $\phi_{n}=x_{n}+\sum_{k=1}^{n-1}\frac{(x_{n},\phi_{k})}{\|\phi_{k}\|^{2}}\phi_{k}.$

::: {.example #unnamed-chunk-48}
Definamos las siguientes funciones en $L^{2}[0,1]$, para cada $n\in\mathbb{N}$
$$R_{n}(t)=(-1)^{k} \mbox{ si } t\in\frac{k}{2^{n}},\frac{k+1}{2^{n}} k=0,\cdots,2^{n}-1$$
	A $R_{n}$ se le llama la $n$-ésima *función de Rademacher*. Las funciones de Rademacher forman un sistema ortonormal en $L^{2}[0,1]$.

:::

::: {.theorem #unnamed-chunk-49}
Sea $\mathcal{H}$ un espacio de Hilbert. Si $\mathcal{H}$ es separable, es decir, contiene un subconjunto denso numerable; entonces todo sistema ortogonal en $\mathcal{H}$ es numerable.

:::

::: {.theorem #unnamed-chunk-50}
Sea $\mathcal{H}$ un espacio de Hilbert separable. Entonces $\mathcal{H}$ posee un sistema ortonormal completo.

:::
::: {.proof}
Sea $(x_{n})_{n}$ un subconjunto denso numerable de $\mathcal{H}$. Consideremos el subconjunto $(y_{n})_{n}\subseteq (x_{n})_{n}$ linealmente independiente maximal. Es claro que $(y_{n})_{n}$ es un sistema completo. Aplicando el proceso de ortogonalización de Gram-Schmidt y normalizando, se obtiene en sistema ortonormal completo.

:::

::: {.example #unnamed-chunk-52}
La familia $1, \cos x, \sen x,\cdots, \cos nx, \sen nx,\cdots$ es un sistema ortogonal completo. Y $\frac{1}{\sqrt{2\pi}},\frac{1}{\sqrt{\pi}}\cos x,\frac{1}{\sqrt{\pi}}\sen x, \cdots,\frac{1}{\sqrt{\pi}}\cos nx,\frac{1}{\sqrt{\pi}}\sen nx, \cdots$ es un sistema ortonormal completo.

:::

::: {.example #unnamed-chunk-53}
Los **polinomios de Legendre** $P_{n}(x)=\frac{1}{2^{n}n!}\frac{d^{n}}{dx^{n}}[(x^{2}-1)^{n}]$ con $n=0,1,2,\cdots$ son ortogonales en $L^{2}[-1,1]$. La familia $\sqrt{\frac{1}{2}(2n+1)}P_{n}(x)$ es una familia ortonormal.

:::

::: {.definition #unnamed-chunk-54}
Sea $\mathcal{H}$ un espacio de Hilbert separable y sea $(\phi_{n})_{n\in\mathbb{N}}$ un sistema ortonormal en $\mathcal{H}$. Sea $x\in\mathcal{H}$, los *coeficientes de Fourier* de $x$ respecto del sistema $(\phi_{n})_{n\in\mathbb{N}}$ se definen como sigue:
	$$\widehat{x}_{n}=(x,\phi_{n})$$
a cada $x_{n}$ se le llama el *$n$-ésimo coeficiente de Fourier* de $x$.

:::

En $\mathbb{R}^{n}$, la distancia de un punto a un plano es la longitud del segmento de recta perpendicular del punto al plano. Esta noción se puede generalizar en los espacios de Hilbert, como sigue.

::: {.proposition #unnamed-chunk-55}
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

::: {.proposition #unnamed-chunk-57 name="Desigualdad de Bessel"}
Sean $\mathcal{H}$ un espacio de Hilbert separable y $(\phi_{n})_{n}$ un sistema ortonormal en $\mathcal{H}$. Dado $x\in\mathcal{H}$, se tiene que 
$$\sum_{k\in\mathbb{N}} (\widehat{x_{k}})^{2}\leq \|x\|^{2}.$$

:::
::: {.proof}
Tal como en la prueba de la proposición anterior, se tiene que 
$$\left\|x-\sum_{k=1}^{N}\widehat{x_{k}}\phi_{k} \right\|^{2}=\|x\|^{2}-\sum_{k=1}^{N} \widehat{x_{k}}^{2}\mbox{ para todo } N$$
de donde se sigue el resultado.

:::

Veamos una carcaterización de un sistema ortogonal completo.

::: {.theorem #unnamed-chunk-59}
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

::: {.theorem #unnamed-chunk-62 name="Riesz-Fischer"}
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

::: {.corollary #unnamed-chunk-64}
Todo espacio de Hilbert $n$-dimensional es isomorfo a $\mathbb{R}^{n}$. Todo espacio de Hilbert separable, infinito dimensional es isomorfo a $l^{2}$.

:::

Demos una mirada a los funcionales lineales en los espacios de Hilbert.

::: {.definition #unnamed-chunk-65}
Sea $X$ un espacio vectorial normado sobre $\mathbb{R}$. Una función $T:X\longrightarrow\mathbb{R}$ es un *funcional lineal* si para todo $x,y\in X$ y para todo $\alpha,\beta\in\mathbb{R}$, $T(\alpha x+\beta y)=\alpha T(x)+\beta T(y)$. Decimos que $T$ *es continua en $x_{0}\in X$* si para todo $\epsilon>0$, existe $\delta>0$ tal que, si $\|x-x_{0}\|<\delta$, entonces $|T(x)-T(x_{0})|<\epsilon$. LLamamos a $T$ un *funcional acotado* si existe una constante $C$ tal que $|T(x)|<C\|x\|$ para todo $x\in X$

:::

::: {.remark}
Note que si $T$ es un funcional lineal continuo en un punto $x_{0}$, entonces lo es en todo punto del espacio vectorial.

:::

Veamos la relación entre la continuidad y la acotación:

::: {.lemma #unnamed-chunk-67}
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

::: {.definition #unnamed-chunk-69}
Sea $T$ un funcional lineal acotado en un espacio vectorial normado $X$. Llamamos norma del funcional $T$ a la menor cota $K$, y se denota por $\|T\|$. Es claro que:
$$\|T\|=\sup_{\substack{x\neq 0}}\frac{|T(x)|}{\|x\|}=\sup_{\substack{\|x\|=1}}{|T(x)|}.$$

:::
::: {.theorem #unnamed-chunk-70 name="Riesz"}
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

