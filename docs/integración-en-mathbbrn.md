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

Placeholder


## Funciones monótonas
## Funciones de variación acotada
## De la Integral indefinida.  Continuidad Absoluta
## Cambio de variables

<!--chapter:end:070-diferenciacion-e-integracion.Rmd-->

# INTEGRACIÓN EN $\mathbb{R}^{n}$

En este capítulo estudiaremos primero los conceptos básicos necesarios para construír la medida de Lebesgue en espacio producto $\mathbb{R}^{n}$. Esta construcción es análoga a lo hecho para construír la medida de Lebesgue en $\mathbb{R}$, razón por la cual se dejarán los detalles al lector. Luego estudiaremos las funciones medibles, las funciones integrables y el teorema de Fubini.

## Espacio Producto

En esta sección daremos un esquema de la construcción de la medida de Lebesgue en el espacio producto $\mathbb{R}^{n}$. Definiremos una medida en $\mathbb{R}^{n}$ que esxtienda la noción de área en el plano $\mathbb{R}^{2}$ y volumen en $\mathbb{R}^{3}$ (en $\mathbb{R}$, la medida extiende la nociónn de longitud) Para ello comenzaremos definiendo rectángulos en $\mathbb{R}^{n}$, conjunto que coinciden con los conocidos rectángulos del plano $\mathbb{R}^{2}$ y con los paralelepipedos en $\mathbb{R}^{3}$.

::: {.definition #unnamed-chunk-1}
Un *rectángulo* en $\mathbb{R}^{n}$ es un subconjunto $A\subseteq\mathbb{R}^{n}$ que es el producto cartesiano de intervalos de cualquier tipo $I_{1},\cdots, I_{n}$ de $\mathbb{R}$, es decir, $A=\prod_{i=1}^{n} I_{i}$.

:::

El conjunto de rectángulos de $\mathbb{R}^{n}$, que denotaremos por $\mathfrak{R}^{n}$, es una semiálgebra. Y el conjunto de rectángulos acotados de $\mathbb{R}^{n}$, que denotaremos por $\mathfrak{R}_{a}^{n}$, es una semianillo. Con cualquiera de estas clases podemos generar una $\sigma$-álgebra, la $\sigma$-álgebra de Borel de $\mathbb{R}^{n}$, que denotaremos por $\mathcal{B}(\mathbb{R}^{n})$.

Dados $p,q\in\mathbb{R}$, sea $n=p+q$. Sean $\mathcal{F}$ y $\mathcal{G}$ $\sigma$-álgebras en $\mathbb{R}^{p}$ y $\mathbb{R}^{q}$ respectivamente. Llamaremos *conjunto elemental* a los conjuntos de la forma $F\times G$, donde $F\in\mathcal{F}$ y $G\in\mathcal{G}$, es decir, a los elementos del conjunto $\mathcal{F}\times\mathcal{G}=\{H\subseteq\mathbb{R}^{n}:H=F\times G\mbox{ con } F\in\mathcal{F} \mbox{ y } G\in\mathcal{G} \}$.

::: {.remark}
$\mathcal{F}\times\mathcal{G}$ no es una $\sigma$-álgebra, más si un sistema $\pi$.

:::

::: {.definition #unnamed-chunk-3}
La $\sigma$-álgebra producto, denotada $\mathcal{F}\otimes\mathcal{G}$, es la generada por $\mathcal{F}\times\mathcal{G}$, esto es 
$$\mathcal{F}\otimes\mathcal{G}=\sigma(\mathcal{F}\times\mathcal{G}).$$

:::

::: {.remark}
$\mathcal{B}(\mathbb{R}^{n})=\mathcal{B}(\mathbb{R}^{p})\otimes\mathcal{B}(\mathbb{R}^{q})$, con $n=p+q$.

:::

::: {.definition #unnamed-chunk-5}
Sea $R\in\mathcal{R}_{a}^{n}$ un rectántugo acotado de $\mathbb{R}^{n}$, tal que $R=\prod_{i=1}^{n} I_{i}$. Definimos el área de $R$ como	$$l_{n}(R)=\prod_{i=1}^{n} l(I_{i})$$ donde $l$ es la longitud en $\mathbb{R}$.

:::

::: {.remark}
La función área, $l_{n}$, se puede extender al anillo generado por $\mathcal{R}_{a}^{n}$.
Si $R=R_{p}\times R_{q}$, con $R_{p}\in\mathcal{R}_{a}^{p}$ y $R_{q}\in\mathcal{R}_{a}^{q}$, entonces $l_{p+q}(R)=l_{p}(R_{p})l_{q}(R_{q})$.

:::

## Medida de Lebesgue en $\mathbb{R}^{n}$

::: {.definition #unnamed-chunk-7}
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

::: {.proposition #unnamed-chunk-10}
Si $E\in\mathcal{B}(\mathbb{R}^{n})$, con $n=p+q$. Entonces para todo $x\in\mathbb{R}^{p}$, $E_{x}\in\mathcal{B}(\mathbb{R}^{q})$ y para todo $x\in\mathbb{R}^{q}$, $E_{y}\in\mathcal{B}(\mathbb{R}^{p})$.

:::
::: {.proof}
Sea $H=\{E\in\mathcal{B}(\mathbb{R}):\forall x\in\mathbb{R}^{p}(E_{x}\in \mathcal{B}(\mathbb{R}^{q}))\wedge\forall y\in\mathbb{R}^{q}(E_{y}\in \mathcal{B}(\mathbb{R}^{p}))\}$. Claramente $\mathcal{B}(\mathbb{R}^{p})\times\mathcal{B}(\mathbb{R}^{q})\subseteq H$. Además se puede ver que $H$ es una $\sigma$-álgebra. Por lo tanto $\mathcal{B}(\mathbb{R}^{n})=\sigma(\mathcal{B}(\mathbb{R}^{p})\times\mathcal{B}(\mathbb{R}^{q}))\subseteq H$.

:::

::: {.proposition #unnamed-chunk-12}
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

::: {.proposition #unnamed-chunk-14}
Sea $A\in\mathcal{B}(\mathbb{R}^{n})$. Entonces, $l_{n}(A)=0$ si y solo si $l_{p}(A_{y})=0$ en c.t.p. de $\mathbb{R}^{q}$ si y solo si $l_{q}(A_{x})=0$ en c.t.p. de $\mathbb{R}^{p}$.

:::

Para los conjuntos medibles Lebesgue se tiene un resultado análogo a los visto hasta ahora para los conjuntos borelianos.

::: {.proposition #unnamed-chunk-15}
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

::: {.proposition #unnamed-chunk-17}
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

::: {.theorem #unnamed-chunk-19 name="Fubini"}
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


# (APPENDIX) Apéndice {-}
# Software Tools

Placeholder


## R and R packages
## Pandoc
## LaTeX

<!--chapter:end:400-apendice.Rmd-->

# Referencias {-}




<!--chapter:end:500-references.Rmd-->

