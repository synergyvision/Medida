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

En este capítulo definiremos la integral de Lebesgue para funciones medibles y función integrable. Lo haremos definiendo la integral de forma natural para las funciones mas sencillas (las funciones escalera y simples) hasta llegar a funciones mas generales. Luego mostraremos algunos resultados importantes de intercambio entre integral y límite así como teoremas de aproximaciones de funciones integrables por funciones simples y continuas. 

## Conceptos básicos

Para una función escalera no negativa $$f(x)=\sum_{i=1}^{n} k_{i} \chi_{I_{i}}, \mbox{ donde } I_{i} \mbox{ son intervalos y } k_{i}\geq 0\mbox{ escalares }$$ es de esperar que la integral sea la suma de las áreas de los rectángulos de base $l(I_{i})$ y alto $k_{i}$. Con esta misma idea es que definiremos la integral de Lebesgue para funciones simples. En este caso no tenemos necesariamente rectángulos, recuerde que las funciones simples son combinaciones lineales de indicatrices de conjuntos medibles. Por analogía, podemos considerar la medida de los conjuntos, que en el caso de ser intervalos, coincide con la longitud de estos.

::: {.definition #unnamed-chunk-1}
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

::: {.definition #unnamed-chunk-3}
Diremos que una función simple no negativa $f$ es *integrable-Lebesgue* cuando $\int_{\mathbb{R}} f$ sea finita.

:::

::: {.example #unnamed-chunk-4}
La función indicatriz del conjunto de los racionales del intervalo $[0,1]$, es integrable-Lebesgue. Efectivamente, $$\int_{\mathbb{R}} \chi_{\mathbb{Q}\cap[0,1]}=m(\mathbb{Q}\cap[0,1])=0.$$
Como también lo es $\chi_{[0,1]\backslash\mathbb{Q}}$.

:::

::: {.example #unnamed-chunk-5}
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

::: {.proposition #unnamed-chunk-6}
Sean $f$ y $g$ funciones no negativas, entonces

(i.) $\int_{\mathbb{R}} f\geq 0$,

(ii.) si $f\geq g$, entonces $\int_{\mathbb{R}} f\geq \int_{\mathbb{R}} g$.

:::
::: {.proof}
De la definición de integral de Lebesgue, se tiene directamente que $\int_{\mathbb{R}} f\geq 0$. Considerando $g-f$, se sigue el resultado ii.

:::

::: {.definition #unnamed-chunk-8}
Dados $f:\mathbb{R}\longrightarrow\mathbb{R}$ una función simple no negativa y un conjunto medible $A\in\mathbb{M}$, definimos \textit{la integral de Lebesgue de $f$ sobre $A$} como sigue:
	$$\int_{A} f=\int_{\mathbb{R}} f \chi_{A}.$$ 

:::

::: {.proposition #unnamed-chunk-9}
Sea $f:\mathbb{R}\longrightarrow\mathbb{R}$ una función simple no negativa, se tiene $$\int_{A} f\leq \int_{\mathbb{R}} f.$$

:::
::: {.proof}
Basta notar que $f \chi_{A}\leq f$.

:::

En lugar de escribir $\int_{<a,b>} f$, cuando $<a,b>$ es un intervalo, escribiremos $\int_{a}^{b} f$.

Recuerde que para una función medible Lebesgue y no negativa existe una sucesión creciente $\{f_{n}\}_{n}$ de funciones simples no negativas tales que $\lim\limits_{n} f_{n}(x)=f(x)$ (este límite es puntual en casi todo punto y puede valer $+\infty$). De este hecho definiremos la integral de Lebesgue de funciones medibles no negativas.

::: {.definition #unnamed-chunk-11}
Dadas una función medible no negativa $f$ y una sucesión creciente de funciones simples no negativas que la aproximan, esto es, $\lim\limits_{n} f_{n}(x)=f(x)$. La *integral de Lebesgue de la función $f$* es
	$$\int_{\mathbb{R}} f=\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::

También se denota la integral de Lebesgue con $\int_{\mathbb{R}} f(x)d(x)$ o $\int_{\mathbb{R}} f dm$.

::: {.remark}
Se puede probar que si $\{g_{n}\}$ es otra sucesión creciente de funciones simples no negativas, tal que $\lim\limits_{n} g_{n}(x)=f(x)$ (puntual en casi todo punto) entonces $\lim\limits_{n\to\infty} \int_{\mathbb{R}} g_{n}=\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}$.

:::

::: {.proposition #unnamed-chunk-13}
Si $f:\mathbb{R}\longrightarrow \overline{\mathbb{R}}$ es medible Lebesgue no negativa, entonces
	$$\int_{\mathbb{R}} f=\sup_{\substack{\phi\mbox{ simple }\\0\leq\phi\leq f}} \int_{\mathbb{R}} \phi.$$

:::

Es sencillo ver que la integral de Lebesgue de una función medible no negativa, es lineal. Esto se sigue de la linealidad del límite y de la proposición \@ref(thm:prop36). De igual forma se puede probar que la integral de Lebesgue es monótona.

::: {.proposition #unnamed-chunk-14}
Sean $f, g:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue no negativas. Sea $\lambda\geq 0$ un escalar, entonces 

(i.) $\int_{\mathbb{R}} \lambda f + g=\lambda\int_{\mathbb{R}} f + \int_{\mathbb{R}} g$, y 
(ii.) Si $f\leq g$, entonces $\int_{\mathbb{R}} f\leq \int_{\mathbb{R}} g$.

:::

::: {.definition #unnamed-chunk-15}
Decimos que una función $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue no negativa, es *integrable Lebesgue en $\mathbb{R}$* cuando $\int_{\mathbb{R}} f$ es finita. 

:::

::: {.proposition #unnamed-chunk-16}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue no negativa. Si $f$ es integrable Lebesgue en $\mathbb{R}$, entonces $f$ es finita en casi todo punto.

:::
::: {.proof}
Sea $A=\{x\in\mathbb{R}: f(x)=+\infty \}$. Para cualquier $n\in\mathbb{N}$, se tiene que $f(x)\geq n$ siempre que $x\in A$. Entonces,	$$n m(A)=n\int_{\mathbb{R}} \chi_{A}=\int_{\mathbb{R}} n\chi_{A}\leq\int_{\mathbb{R}} f.$$
	De donde se tiene que 
	$$0\leq m(A)\leq\frac{1}{n}\int_{\mathbb{R}} f$$
	para todo $n\in\mathbb{R}$. Por lo tanto se tiene que $m(A)=0$.

:::

::: {.definition #unnamed-chunk-18}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue no negativa y sea $A\in\mathcal{M}$ un conjunto medible Lebesgue. Definimos *la integral de Lebesgue de $f$ en $A$* como $$\int_{A} f=\int_{\mathbb{R}} f \chi_{A}.$$
Y decimos que \textit{$f$ es integrable en $A$} cuando $\int_{A} f$ es finita.

:::

::: {.remark}
Se puede demostrar que si $f$ es una función medible Lebesgue no negativa, entonces $\int_{A} f\leq \int_{\mathbb{R}} f$.

:::

::: {.proposition #unnamed-chunk-20}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue no negativa. Si $A\in\mathcal{M}$ es un conjunto de medida nula, entonces $\int_{A} f=0$. 

:::

Cuando $f$ es una función simple no negativa, el resultado se sigue inmediatamente. El caso general, se sigue de la definición de integral.

::: {.lemma #unnamed-chunk-21}
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

::: {.proposition #unnamed-chunk-23}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. $f$ es integrable Lebesgue si y solo si $|f|$ es integrable Lebesgue. Además, $$|\int_{\mathbb{R}} f|\leq \int_{\mathbb{R}} |f|.$$

:::
::: {.proof}
Por la linealidad de la integral y como $f=f^{+}-f^{-}$, se tiene que $f$ es integrable Lebesgue si y solo si $f^{+}$ y $f^{-}$ lo son.
Como $|f|=f^{+}+f^{-}$, se tiene que $|f|$ es integrable Lebesgue si y solo si $f^{+}$ y $f^{-}$ lo son. De donde se sigue que $f$ es integrable Lebesgue si y solo si $|f|$ es integrable Lebesgue.
Además, $$\left| \int_{\mathbb{R}} f\right| =\left| \int_{\mathbb{R}} f^{+} - \int_{\mathbb{R}} f^{-}\right| \leq \left| \int_{\mathbb{R}} f^{+}\right| + \left| \int_{\mathbb{R}} f^{-}\right|=\int_{\mathbb{R}} f^{+} + \int_{\mathbb{R}} f^{-}=\int_{\mathbb{R}} |f|$$

:::

## Intercambio de límites con la integral

Es importante notar que no siempre conmutan la integral y el límite, como lo muestran los siguientes ejemplos.

::: {.example #unnamed-chunk-25}
Sea $f_{n}=n\chi(0,\frac{1}{n})$, para cada $n\in\mathbb{N}$. Es claro que $f_{n}\rightarrow 0$   cuando $n\to\infty$. Por lo tanto $\int_{\mathbb{R}} \lim\limits_{n\to\infty} f_{n}=0$. Pero $\int_{\mathbb{R}} f_{n}=1$ por lo que $\lim\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}=1$.

:::

En el ejemplo anterior, la convergencia no es uniforme y la sucesión no es monótona. Veamos un ejemplo donde la convergencia si es uniforme.

::: {.example #unnamed-chunk-26}
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

::: {.example #unnamed-chunk-28}
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

::: {.corollary #unnamed-chunk-30}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles Lebesgue no negativas, $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$. Sea $f(x)=\sum_{n=1}^{\infty} f_{n}(x)$. Entonces $\int_{\mathbb{R}}f=\sum_{n=1}^{\infty}\int_{\mathbb{R}} f_{n}$.

:::

::: {.lemma #unnamed-chunk-31 name="Fatou"}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones medibles Lebesgue no negativas, $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$. Entonces
$$\int_{\mathbb{R}}\liminf_{n\to\infty} f_{n}\leq \liminf_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::
::: {.proof}
Para cada $n\in\mathbb{N}$, sea $g_{n}=\inf\limits_{k\geq n} f_{k}$. Entonces para cada $n$, $0\geq g_{n}\geq f_{n}$, $\{g_{n}\}_{n}$ es una sucesión creciente de funciones medibles Lebesgue y $\lim\limits_{n\to\infty} g_{n}=\liminf\limits_{n\to\infty} f_{n}$. Por el teorema de Beppo-Levy @ref{thm:BeppoLevy} (convergencia monótona) se tiene que
$$\int_{\mathbb{R}} \liminf\limits_{n\to\infty} f_{n}=\int_{\mathbb{R}} \lim\limits_{n\to\infty} g_{n}=\lim\limits_{n\to\infty}\int_{\mathbb{R}} g_{n}=\liminf\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}.$$

:::

La desigualdad del lema de Fatou puede, en algunos casos, ser estricta tal como lo muestra el siguiente ejemplo.

::: {.example #unnamed-chunk-33}
Consideremos la siguiente sucesión, para cada $n$, sea $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$, definida así
$$f_{n}(x)=\left\lbrace \begin{array}{ll}
	4n^{2}x&\mbox{ si } 0\leq x\leq\frac{1}{2n}\\
	-4n^{2}x+4n&\mbox{ si } \frac{1}{2n}< x\leq\frac{1}{n}\\
	0&\mbox{ en otro caso}
\end{array}\right. $$
Para la sucesión $\{f_{n}\}$, se tiene que $\liminf\limits_{n\to\infty} f_{n}=\lim\limits_{n\to\infty} f_{n}=0$ en casi todo punto, por lo tanto, $\int_{\mathbb{R}}\liminf\limits_{n\to\infty} f_{n}=0$. Pero $\int_{\mathbb{R}} f_{n}=1$, por lo tanto $\liminf\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}=1$.

:::

Hasta ahora hemos definido la integral de Lebesgue para funciones simples (y funciones escalera) de la forma mas natural, y para funciones medibles no negativas, vía la aproximaciónn por funciones simples, echando mano del teorema de aproximación. Ahora definamos la integral de Lebesgue para una función medible cualquiera.

::: {.definition #unnamed-chunk-34}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. Decimos que *$f$ es integrable Lebesgue en $\mathbb{R}$* si y solo si $f^{+}$ y $f^{-}$ son integrables Lebesgue en $\mathbb{R}$ y definimos 
$$\int_{\mathbb{R}} f=\int_{\mathbb{R}} f^{+}-\int_{\mathbb{R}} f^{-}.$$
Si $A\in\mathcal{M}$, decimos que \textit{$f$ es integrable Lebesgue en $A$} si $f \chi_{A}$ es integrable Lebesgue en $\mathbb{R}$ y definimos 
$$\int_{\mathbb{A}} f=\int_{\mathbb{R}} f \chi_{A}.$$

:::

Ya se han demostrado varias propiedades de la integral de Lebesgue para funciones medibles no negativas. Es fácil, a partir de las propiedades ya demostradas, ver que 

::: {.proposition #unnamed-chunk-35}
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

::: {.proposition #unnamed-chunk-37}
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

::: {.proposition #unnamed-chunk-41 name="Desigualdad de Chebychov"}
Sea $f:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medible Lebesgue. Si $|f|\geq\lambda> 0$ en $A\in\mathcal{M}$. Entonces $$\lambda m(A)\geq\int_{\mathbb{R}} |f|.$$.

:::
::: {.proof}
Como $$\int_{\mathbb{R}}|f|\geq \int_{A}|f|\geq \lambda m(A).$$

:::

::: {.proposition #unnamed-chunk-43}
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

::: {.theorem #unnamed-chunk-45}
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

::: {.corollary #unnamed-chunk-47}
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

::: {.example #unnamed-chunk-50}
Consideremos la siguiente sucesión de funciones integrables Lebesgue,
$$f_{n}(x)=\left\lbrace\begin{array}{ll}
	-4n^{2}x&\mbox{ si } x\in[0,\frac{1}{2n}]\\
	4n^{2}x-4n&\mbox{ si } x\in(\frac{1}{2n},\frac{1}{n}]\\
	0&\mbox{ en otro caso}
\end{array} \right. \mbox{ para cada } n\in\mathbb{N}.$$
En este caso se tiene que $\lim\limits_{n\to\infty} f_{n}=0$, pero $\int_{\mathbb{R}} f_{n}=-1$ por lo que $\lim\limits_{n\to\infty} \int_{\mathbb{R}}f_{n}=1\neq\int_{\mathbb{R}}\lim\limits_{n\to\infty} f_{n}$. Es de hacer notar que no existe función alguna que domine inferiormente a la sucesión. Es decir, no existe uan función $h$ tal que $f_{n}\geq h$ para todo $n\in\mathbb{N}$.

:::

Con un argumente análogo al usado en el corolario anterior, tomando $g_{n}=h-f_{n}$, se tiene el siguiente corolario.

::: {.corollary #unnamed-chunk-51}
Sean $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue dominada superiormente por una función integrable Lebesgue $g:\longrightarrow\mathbb{R}$, es decir,$f_{n}\leq g$. Entonces $$\int_{\mathbb{R}} \limsup\limits_{n\to\infty} f_{n}\geq \limsup\limits_{n\to\infty} \int_{\mathbb{R}} f_{n}.$$

:::

## Teoremas de Aproximación

::: {.theorem #unnamed-chunk-52 name="Convergencia dominada de Lebesgue"}
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

::: {.corollary #unnamed-chunk-54}
Sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ medibles Lebesgue, tales que $\lim\limits_{n\to\infty} f_{n}(x)=f(x)$. Sea $A\in\mathcal{M}$ un conjunto de medida finita y supongamos que existe $M\in\mathbb{R}$ tal que $|f_{n}(x)|\leq M$ para todo $n\in\mathbb{N}$ y todo $x\in A$. Entonces $$\lim\limits_{n\to\infty}\int_{A} f_{n}=\int_{A} f.$$

:::
::: {.proof}
Sea $g=M\chi_{A}$. Como $m(A)<\infty$, $g$ es integrable. Ahora, $\{f_{n}\chi_{A}\}_{n}$ y $g$ cumplen con las hipótesis del teorema de convergencia dominada de Lebesgue, por lo tanto
$$\lim\limits_{n\to\infty}\int_{\mathbb{R}} f_{n}\chi_{A}=\int_{\mathbb{R}} f\chi_{A}.$$

:::

::: {.corollary #unnamed-chunk-56}
Sea $<a,b>$ un intervalo finito cualquiera de $\mathbb{R}$. Y sea $\{f_{n}\}_{n}$ una sucesión de funciones $f_{n}:<a,b>\longrightarrow\mathbb{R}$ medibles Lebesgue. Supongamos que $f_{n}\xrightarrow[n\to\infty]{} f(x)$ en $<a,b>$. Entonces
	$$\int_{a}^{b} |f_{n}-f|\xrightarrow[n\to\infty]{} 0.$$

:::
::: {.proof}
Dado $\epsilon>0$, por la convergencia uniforme, existe $N\in\mathbb{N}$ tal que si $n\geq N$ entonces $|f_{n}(x)-f(x)|<\epsilon$ para todo $x\in<a,b>$. Por lo tanto $|f_{n}-f|<\epsilon\chi_{<a,b>}$. Como $\epsilon\chi_{<a,b>}$ es integrable Lebesgue, del teorema de CDL se concluye que $$\lim\limits_{n\to\infty}\int_{a}^{b}|f_{n}-f|=0.$$

:::

## Más sobre la Integral de Lebesgue

Presentamos dos teoremas que son consecuencia inmedianta del teorema de convergencia dominada de Lebesgue. Son una formulación del teorema de convergencia dominada de Lebesgue para familias no numerables de funciones.

::: {.theorem #unnamed-chunk-58}
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

::: {.theorem #unnamed-chunk-60}
Sean $-\infty\leq a<b\leq +\infty$. Para cada $t\in(a,b)$, sea $f_{t}:\mathbb{R}\longrightarrow\overline{\mathbb{R}}$ una función medible Lebesgue. Entonces, si para todo $t\in(a,b)$, $|f_{t}|\leq g$, donde $g$ es una función integrable Lebesgue y $f_{t}\to f$ cuando $t\to a^{+}$ o $t\to b^{-}$. Entonces $f$ es integrable Lebesgue y 
$$\int_{\mathbb{R}} f_{t}dx=\int_{\mathbb{R}} f dx.$$

:::

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

