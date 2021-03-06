# Autovalores y autovectores
En este capítulo estudiaremos los autovalores y autovectores asociados a una matriz. Recordemos que cada transformación lineal tiene una matriz asociada dada una base de los espacios involucrados. Estudiaremos estos objetos con la intención de separar los operadores lineales sobre espacios vectoriales de dimensión finita que tienen asociadas matrices mas simples de aquellas que no. Una matriz particularmente simple es una matriz diagonal, solo superada en simplicidad por aquellas que son múltiplos escalares de la matriz identidad. Si $T$ es un operador lineal sobre un espacio vectorial $V$ de dimensión $n$ y $\mathcal{B}=\{\alpha_{1},\alpha_{2},\cdots,\alpha_{n}\}$ una base ordenada de $V$ para la que la matriz $[T]_{\mathcal{B}}$ es una matriz diagonal, digamos
$$D=[T]_{\mathcal{B}}=\left(\begin{array}{ccccc}
c_{1}&0&0&\cdots&0\\
0&c_{2}&0&\cdots&0\\
0&0&c_{3}&\cdots&0\\
\vdots&\vdots&\vdots&&\vdots\\
0&0&0&\cdots&c_{n}
\end{array} \right)$$
es una matriz simple, nos permite determinar fácilmente el rango y el espacio nulo del operador, en efecto, como $T\alpha_{k}=c_{k}\alpha_{k}$ para cada $k\leq n$, entonces el rango de la transformación es el subespacio generado por aquellos $\alpha_{k}$ para los que $T\alpha_{k}\neq 0$ es decir, para aquellos $c_{k}\neq 0$. Y el espacio nulo es el gerado por el resto de los $\alpha_{k}$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>Sea $V$ un espacio vectorial sobre un cuerpo $\mathbb{F}$ y sea $T$ un operador lineal sobre $V$. Un *valor propio* de $T$ es un escalar $c$ de $\mathbb{F}$ tal que existe un vector no nulo $\alpha\in V$ con el que $T\alpha=c\alpha$. En este caso, decimos que un tal $\alpha$ es un *vector propio* de $T$ asociado a $c$. Al conjunto de todos los $\alpha$ tales que $T\alpha=c\alpha$ se llama *espacio propio asociado* a $c$.
</div>\EndKnitrBlock{definition}

Sea $T$ un operador lineal sobre un espacio vectorial $V$ de dimensión finita, la definición anterior se afirma que dado un valor propio $c$, el conjunto de vectores tales que $T\alpha=c\alpha$ es un subespacio vectorial de $V$. En efecto, dados $\alpha$ y $\beta$ tales que $T\alpha=c\alpha$ y $T\beta=c\beta$, y un escalar $k$, entonces $T(k\alpha+\beta)=kT\alpha+T\beta=c(k\alpha+\beta)$. De esto podemos deducir fácilmente el siguiente resultado:
\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-2"><strong>(\#thm:unnamed-chunk-2) </strong></span>Sea $T$ un operador lineal sobre un espacio vectorial $V$ de dimensión finita y sea $c$ un escalar. Entonces las siguientes afirmaciones son equivalentes:
[i.] $c$ es un valor propio de $T$.
[ii.] El operador $T-cI$ es no invertible (es singular).
[iii.] $det(T-cI)=0$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $c$ un escalar. Entonces, si $c$ es un valor propio, el espacio propio asociado a $c$ es el espacio nulo del operador $T-cI$, efectivamente, para cada vector $\alpha$, $T\alpha=c\alpha$ si y solo si $(T-cI)\alpha=0$. Luego, $c$ es vector propio si y solo si el espacio nulo de $T-cI$ es distinto al subespacio nulo, equivalentemente, si $T-cI$ no es invertible. Ahora, como $V$ es de dimensión finita, $T-cI$ es singular si y solo si $det (T-cI)=0$.
</div>\EndKnitrBlock{proof}
La última equivalencia es especialmente útil para el calculo de los valores propios de una transformación, como veremos ahora.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-4"><strong>(\#def:unnamed-chunk-4) </strong></span>Sea $A$ una matriz $n\times n$ sobre un cuerpo $\mathbb{F}$, un *valor propio* de $A$ en $\mathbb{F}$ es un escalar $c\in\mathbb{F}$ tal que la matriz $cI-A$ es singular (no invertible). Llamaremos polinomio característico de $A$ al polinomio $det(xI-A)$.
</div>\EndKnitrBlock{definition}

Como $c$ es un valor propio de $A$ si y solo si $det(cI-A)=0$, entonces encontrar las raices del polinomio $f$ es equivalente a encontrar los valores propios de $A$.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-5"><strong>(\#lem:unnamed-chunk-5) </strong></span>Las matrices semejantes tienen el mismo polinomio característico.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $B=P^{-1}AP$. Entonces
$$\begin{array}{rl}
det(xI-B)=&det(xI-P^{-1}AP)\\
=&det(P^{-1}(xI-A)P)\\
=&det(P^{-1})det(xI-A)det(P)\\
=&det(xI-A)
\end{array}.$$
</div>\EndKnitrBlock{proof}

Con el resultado anterior podemos definir el polinomio característico de un operador lineal $T$ como el polinomio característico de una matriz de $T$ en cualquier base ordenada del espacio $V$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-7"><strong>(\#def:unnamed-chunk-7) </strong></span>Sea $V$ un espacio vectorial de dimensión finita $n$. Y $T$ un operador lineal sobre $V$. Sea $\mathcal{B}$ una base ordenada de $V$. El *polinómio característico* de $T$ es $f=det(xI-A)$ donde $A=[T]_{\mathcal{B}}$ es la matriz de $T$ en la base $\mathcal{B}$. Las raices de este polinomio se llamarán *valores propios* de $T$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Note que un operador lineal $T$ (así como toda matriz $n\times n$) tiene a lo sumo $n$ valores propios. Pero pudiese ser que no tenga ningún valor propio.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-9"><strong>(\#exm:unnamed-chunk-9) </strong></span>Consideremos el espacio vectorial $\mathbb{R}^{2}$. Sea $T$ la transformación lineal representada en la base canónica por la matriz
$$\left(\begin{array}{cc}
0&1\\
-1&0
\end{array} \right).$$
El polinomio característico de $T$ (y de $A$) es 
$$det(xI-A)=\left| \begin{array}{cc}
0&1\\
-1&0
\end{array}\right|=x^{2}+1$$ que no tiene raices reales, por lo tanto $T$ no tiene valores propios. Si consideramos al mismo operador sobre $\mathbb{C}^{2}$, entonces el polinomio característico tendría dos raíces, $i$ y $-i$, así mismo el operador $T$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejemplo78"><strong>(\#exm:ejemplo78) </strong></span>Sea $$A=\left(\begin{array}{ccc}
1&2&3\\
0&0&2\\
0&1&1
\end{array} \right)$$
su polinomio característico es $$f(x)=det(xI-A)=\left| \begin{array}{ccc}
x-1&-2&-3\\
0&x&-2\\
0&-1&x-1
\end{array}\right|=(x-1)(x+1)(x-2)$$
como las raíces de $f$ son $-1$, $1$ y $2$, entonces estos son los tres valores propios de la matriz $A$ (y de la transformación que esta representa). Hallemos los espacios propios correspondientes a cada valor propio.
El espacio propio asociado a $-1$ es igual al espacio nulo de la transformación $A+I$. Es decir, el espacio constituido por los vectores que satisfacen $(A+I)\alpha=0$.
Procedemos a reducir la matriz $$A+I=\left(\begin{array}{ccc}
2&2&3\\
0&1&2\\
0&1&2
\end{array} \right)$$ la que nos permite concluír que el espacio nulo de la transformación $A+I$ es $V(-1)=\{(x,-4x,2x)\in \mathbb{R}^{3}: x\in\mathbb{R}\}$ o equivalentemente $V(-1)=\left\langle (1,-4,2) \right\rangle$.
De forma análoga se calculan los espacios propios asociados a los valor propios $1$ y $2$, obteniendo $V(1)=\left\langle(1,0,0)\right\rangle$ y $V(2)=\left\langle(5,1,1)\right\rangle$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejemplo79"><strong>(\#exm:ejemplo79) </strong></span>Sea $$A=\left(\begin{array}{ccc}
1&2&0\\
0&1&2\\
0&0&1
\end{array} \right)$$
su polinomio característico es $$f(x)=det(xI-A)=\left| \begin{array}{ccc}
x-1&-2&0\\
0&x-1&-2\\
0&0&x-1
\end{array}\right|=(x-1)^{3}$$
Este polinomio tiene una única raíz, $1$. Así la matriz $A$ tiene solo un valor propio y el espacio propio asociado es $V(1)=\left\langle(1,0,0)\right\rangle$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-10"><strong>(\#def:unnamed-chunk-10) </strong></span>Sea $V$ un espacio de dimensión finita y $T$ un operador lineal sobre $V$. Diremos que $T$ es  *diagonalizable* si existe una base de $V$ formada por vectores propios de $T$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}En el caso que un operador $T$ sea diagonalizable, se tiene que $[T]_{\mathcal{B}}$ es una matriz diagonal. En efecto, supongamos que $V$ es un espacio de dimensión $n$; si $\mathcal{B}=\{\alpha_{1},\alpha_{2},\cdots,\alpha_{n}\}$ es la base de vectores propios, entonces $T\alpha_{i}=c_{i}\alpha_{i}$, donde $c_{i}$ es un valor propio (asociado a $\alpha_{i}$) para cada $i\leq n$. Luego la matriz de $T$ en esta base es 
$$[T]_{\mathcal{B}}=\left( \begin{array}{cccc}
c_{1}&0&\cdots&0\\
0&c_{2}&\cdots&0\\
\vdots&\vdots&&\vdots\\
0&0&\cdots&c_{n}
\end{array}\right).$$
Es importante notar que no es imperante que todos los escalares $c_{1},c_{2},\cdots,c_{n}$ sean distintos.
La definición es equivalente a pedir que el conjunto de vectores propios generen a $V$.
Supongamos que $T$ es diagonalizable y que $\mathcal{B}$ es la base que lo evidencia. Si listamos los valores propios distintos de $T$, $c_{1},c_{2},\cdots,c_{k}$, y para cada valor propio $c_{i}$, $d_{i}$ representa las veces que se repite $c_{i}$ en la matriz $[T]_{\mathcal{B}}$, entonces podemos ordenar la base de tal forma que la matriz asociada sea
$$[T]_{\mathcal{B}}=\left(\begin{array}{cccc}
c_{1}I_{1}&0&\cdots&0\\
0&c_{2}I_{2}&\cdots&0\\
\vdots&\vdots&&\vdots\\
0&0&\cdots&c_{k}I_{k}
\end{array} \right)$$
donde cada matris $I_{i}$ es de orden $d_{i}\times d_{i}$.
Note que el polinomio característico de la matriz anterior tiene la forma $f=(x-c_{1})^{d_{1}}\cdots (x-c_{k})^{d_{k}}$
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-12"><strong>(\#lem:unnamed-chunk-12) </strong></span>Sea $T$ un operador sobre un espacio $V$ de dimensión finita tal que $T\alpha=c\alpha$, para $\alpha\in V$ y un escalar $c$. Entonces, para cualquier polinomio $f$ se tiene que $f(T)\alpha=f(c)\alpha$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Recuerde que $f(T)$ es el operador lineal $f_{0}+f_{1}T+\cdots+f_{n}T^{n}$, donde $f$ es el polinomio $f=f_{0}x^{0}+f_{1}x+\cdots+f_{n}x^{n}$. Es claro que $f(T)\alpha=f_{0}I\alpha+f_{1}T\alpha+\cdots+f_{n}T^{n}\alpha=f_{0}\alpha+f_{1}c\alpha+\cdots+f_{n}c^{n}\alpha=f(c)\alpha$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-14"><strong>(\#lem:unnamed-chunk-14) </strong></span>Sea $T$ un operador lineal sobre un espacio de dimensión finita. Sean $c_{1},c_{2},\cdots,c_{k}$ los valores propios de distintos de $T$. Sea $W_{i}$ el espacio propio asociado a $c_{i}$, para cada $i\leq k$. El espacio $W=\sum_{i=1}^{k} W_{i}$ tiene dimensión $\sum_{i=1}^{k} dim W_{i}$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sabemos que $dim W\leq\sum_{i=1}^{k} W_{i}$. Veamos que los $k$ subespacios $W_{i}$ son independientes, es decir, $W_{i}\cap W_{j}=\{0\}$ si $i\neq j$, con lo que obtendríamos el resultado.
Sea $\beta_{i}\in W_{i}$ para cada $i$, y tomemos $\beta_{1}+\beta_{2}+\cdots+\beta_{k}=0$. Sea $f$ un polinomio, como $T\beta_{i}=c_{i}\beta_{i}$, entonces
$$\begin{array}{rl}
f(c_{1})\beta_{1}+\cdots+f(c_{k})\beta_{k}=&f(T)\beta_{1}+\cdots+f(T)\beta_{k}\\
&f(T)0\\
&0
\end{array}$$
Tomando los polinomios $f_{1},\cdots,f_{k}$ tales que 
$$f_{i}(c_{j})=\delta_{ij}=\left\lbrace \begin{array}{ll}
1,&i=j\\
0,&i\neq j
\end{array} \right.$$
por lo que $$\begin{array}{rl}
0=&f_{i}(T)0\\
=&\sum_{j}\delta_{ij}\beta_{j}\\
=&\beta_{i}
\end{array}$$
con lo que concluímos que la colección de vectores $\beta_{1},\beta_{2},\cdots,\beta_{k}$ son l.i.
Ahora, supongamos que $\mathcal{B}_{i}$ es una base de $W_{i}$. Tomemos $\mathcal{B}=\bigcup_{i\leq k}\mathcal{B}_{i}$. Por lo anterior tenemos que $dim W$ es exactamente $\sum_{i=1}^{k} W_{i}$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-16"><strong>(\#thm:unnamed-chunk-16) </strong></span>Sea $T$ un operador lineal sobre un espacio vectorial $V$ de dimensión finita. Sean $c_{1},\cdots,c_{k}$ los valores propios distintos de $T$ y para cada $i\leq k$ sea $W_{i}$ el espacio nulo del operador $(T-c_{i}I)$. Entonces las siguientes afirmaciones son equivalentes:
[i.] $T$ es diagonalizable.
[ii.] El polinomio característico de $T$ es $f=(x-c_{1})^{d_{1}}\cdots(x-c_{k})^{d_{k}}$ y $dim W_{i}=d_{i}$, $i\leq k$.
[iii.] $dim V=dim W_{1}+\cdots+dim W_{k}$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Ya hemos visto que $i.$ implica $ii.$. Ahora, supongamos que el polinomio característico de $T$ es $f=(x-c_{1})^{d_{1}}\cdots(x-c_{k})^{d_{k}}$, entonces $f$ es de grado $d_{1}+\cdots+d_{k}$ que es igual a la dimensión de $V$. Por lo tanto $ii.$ implica $iii.$ Ahora, supomgamos que $dim V=dim W_{1}+\cdots+dim W_{k}$, entonces los vectores propios generan a $V$, de donde se sigue que $T$ es diagonalizable.	
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-18"><strong>(\#exm:unnamed-chunk-18) </strong></span>El operador del ejemplo \ref{ejemplo78} tiene polinomio característico $(x-1)^{2}(x^{2}-x-2)$, de donde se dedujo que sus valores propios son $-1$, $1$ y $2$. Para estos se hallaron sus respectivos vectores propios, $v_{1}=(1,-4,2)$, $v_{2}=(1,0,0)$ y $v_{3}=(5,1,1)$, los que forman una base de $\mathbb{R}^{3}$, luego $T$ es un operador diagonalizable, cuya matriz diagonal está formada por los valores propios escritos en columnas 
$$D=\left(\begin{array}{ccc}
1&0&0\\
0&-1&0\\
0&0&2
\end{array} \right).$$
Note que $A=PDP^{-1}$, donde $P$ es la matriz de paso (invertible), formada por los vectores propios asociados a los valores propios $v_{1}$, $v_{2}$ y $v_{3}$ de esta forma
$$P=\left(\begin{array}{ccc}
1&1&5\\
0&-4&1\\
0&2&1
\end{array}\right).$$
Por otro lado, el operador del ejemplo \@ref{ejemplo79} no es diagonalizable ya que el espacio generado por los vectores propios es de dimensión uno.
</div>\EndKnitrBlock{example}
