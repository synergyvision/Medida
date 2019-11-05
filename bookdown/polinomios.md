# Polinomios
En este capítulo estudiaremos una estructura especial de objetos: *las álgebras*; avocándonos especialmente al estudio de un ejemplo muy importante, *los polinomios* y sus propiedades.

Ya vimos que la definición de espacio vectorial $V$ sobre un cuerpo $\mathbb{F}$ lleva intrínseca la definición de dos operaciones, la suma de vectores, definida en $V\times V$ a $V$, y el producto por un escalar, definda de $\mathbb{F}\times V$ en $V$. Podemos definir una operación distinta a la suma de vectores, en $V\times V$ y que el resultado sea un vector. A dicha operación la llamaremos *multiplicación de vectores* y la denotaremos por $u\cdot v$ o simplemente $uv$.

El producto de matrices es un ejemplo de multiplicación de vectores.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1) </strong></span>Un *algebra lineal sobre un cuerpo* $\mathbb{F}$ es una terna $(\mathcal{A},+,\cdot)$, en la que $(\mathcal{A},+)$ un espacio vectorial sobre $\mathbb{F}$ y $\cdot$ es la operación multiplicación de vectores, de modo que:
  
(i) la multiplicación es asociativa, es decir, $u(vw)=(uv)w$,

(ii) la multiplicación es distributiva respectoa la suma, esto es, $u(v+w)=uv+uw$ y $(u+v)w=uw+vw$,

(iii) para todo escalar $c\in\mathbb{F}$, se tiene que $c(uv)=(cu)v=u(cv)$.

Si existe un elemento $1\in\mathcal{A}$ tal que $1v=v1=v$, para todo $v\in\mathcal{A}$, decimos que $\mathcal{A}$ es un *álgebra lineal con unidad* y llamaremos *unidad* a dicho elemento. Diremos que $\mathcal{A}$ es un álgebra  conmutativa* si $uv=vu$ para todo $uv\in\mathcal{A}$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Un álgebra lineal no es mas que un anillo $\mathcal{A}$ en el que $\mathcal{A}$ tiene estructura de espacio vectorial (con la operación suma definida en el anillo), donde además se cumple que $c(uv)=(cu)v=u(cv)$, para todo escalar $c\in\mathbb{F}$ y para todo $u,v\in \mathcal{A}$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-3"><strong>(\#exm:unnamed-chunk-3) </strong></span>El conjunto de las matrices $n\times n$ sobre un cuerpo $\mathbb{F}$ con las operaciones usuales, es un álgebra lineal con unidad no es conmutativa salvo que $n=1$, es ese caso las matrices no son mas que el mismo cuerpo de escalares y entonces es un álgebra conmutativa, obviamente. 
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-4"><strong>(\#exm:unnamed-chunk-4) </strong></span>El espacio de los operadores lineales sobre un espacio vectorial $V$, $L(V,V)$ con la composición como multiplicación de vectores, es un álgebra lineal con unidad. Es conmutativa si y solo si el espacio es de dimensión uno.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-5"><strong>(\#exm:unnamed-chunk-5) </strong></span>El *álgebra de las series formales de potencias*. Consideremos el espacio vectorial de las funciones del conjunto de los enteros no negativos $S=\{0,1,2,\cdots\}$ a un cuerpo $\mathbb{F}$, es decir $\mathbb{F}^{\infty}=\{f:S\longrightarrow \mathbb{F}: f \mbox{ es función } \}$. Entonces cada vector $f$ de $\mathbb{F}^{\infty}$ es una sucesión infinita de elementos de $\mathbb{F}$, $f=(f_{0},f_{1},\cdots)$ (donde cada coordenada $i$ es la imagen de $i$ por la función $f$, es decir, $f_{i}=f(i)$). Se tiene que  $\lambda f +g=\lambda(f_{0},f_{1},\cdots )+(g_{0},g_{1},\cdots )=(\lambda f_{0}+g_{0}, \lambda f_{1}+g_{1},\cdots )$, donde $f=(f_{0},f_{1},\cdots)$, $g=(g_{0},g_{1},\cdots)$ y $\lambda\in\mathbb{F}$.
Definimos la operación multiplicación de vectores así: dados $f=(f_{0},f_{1},\cdots)$ y $g=(g_{0},g_{1},\cdots)$
$$(fg)_{n}=\sum_{i=0}^{n} f_{i}g_{n-i} \mbox{ para } n=0,1,2,\cdots$$ es decir, $$fg=(f_{0}g_{0}, f_{0}g_{1}+f_{1}g_{0},f_{0}g_{2}+f_{1}g_{1}+f_{2}g_{1},\cdots).$$
Además, es fácil ver que esta operación es conmutativa $$(fg)_{n}=\sum_{i=0}^{n} f_{i}g_{n-i} = \sum_{i=0}^{n} g_{i}f_{n-i}=(gf)_{n} \mbox{ para } n=0,1,2,\cdots$$
Si $h$ es otro vector de $\mathbb{F}^{\infty}$, entonces para $n=1,2,\cdots$, se tiene que:
$$\begin{array}{rl}
[(fg)h]_{n}=&\sum_{i=0}^{n}(fg)_{i}h_{n-i}\\
&\sum_{i=0}^{n}(\sum_{j=0}^{i}f_{j}g_{i-j})h_{n-i}\\
&\sum_{i=0}^{n}\sum_{j=0}^{i}f_{j}g_{i-j}h_{n-i}\\
&\sum_{j=0}^{n}\sum_{i=0}^{n-j}f_{j}g_{i}h_{n-j-i}\\
&\sum_{j=0}^{n}f_{j}\sum_{i=0}^{n-j}g_{i}h_{n-j-i}\\
&\sum_{j=0}^{n}f_{j}(gh)_{n-j}\\
&=[f(gh)]_{n}
\end{array}$$ de donde se deduce que $(fg)h=f(gh)$.
Se puede verificar fácilmente que la multiplicación cumple las condiciones (i) y (ii) de la definición de álgebra lineal y que el vector $(1,0,0,0,\cdots)$ es la unidad. De donde se concluye que $\mathbb{F}^{\infty}$ es un álgebra lineal conmutativa con unidad sobre el cuerpo $\mathbb{F}$.
El vector $(0,1,0,0,\cdots)$ juega un papel importante en esta álgebra, por lo que le otorgaremos una notación especial, $x=(0,1,0,0,\cdots)$. Vea que $xx=(0,0,1,0,0,\cdots)$ y que $xxx=(0,0,0,1,0,\cdots)$. En general, el producto de $x$ por si mismo $n$ veces se denotará $x^{n}$ y es igual al vector $(x^{n})_{n}=1$ y $(x^{n})_{k}=0$ siempre que $k\neq n$. Convendremos que $x^{0}=1$.
Note además que el conjunto $\{1,x,x^{2},\cdots\}$ formado por todas las potencias de $x$ es un conjunto linealmente independiente e infinito, por lo tanto la dimensión de $\mathbb{F}^{\infty}$ no puede ser finita.
Por último, cada vector $f=(f_{0},f_{1},f_{2},\cdots)$ suele escribirse como $$f=\sum_{n=0}^{\infty} f_{n}x^{n}$$ Esta notación es puramente formal ya que no tenemos la noción de sumas infinitas desde el punto de vista algebraico, no debe confundirse con la definición de series susceptible a nociones de convergencia.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-6"><strong>(\#def:unnamed-chunk-6) </strong></span>Sea $\mathbb{F}[x]$ el espacio vectorial generado por los vectores potencia de $x$, es decir, $\mathbb{F}[x]=\left\langle 1,x,x^{2},x^{3},\cdots \right\rangle $. Un elemento de $\mathbb{F}[x]$ se llamará *polinomio sobre* $\mathbb{F}$.
</div>\EndKnitrBlock{definition}

Por definición $\mathbb{F}[x]$ es un subespacio de $\mathbb{F}[{\infty}]$. Además se tiene que $f\in\mathbb{F}^{\infty}$ no nulo, es un polinomio si y solo si existe un número entero $n\geq0$ tal que $f_{n}\neq 0$ y $f_{k}=0$ para todo $k>n$; llamaremos *grado* de $f$ a este entero y se denotará por $\mbox{grd } f$. No se le asignará ningún grado al polinomio $0$. Es decir, si $f$ es un polinomio no nulo de grado $n$, $f=f_{0}x^{0}+f_{1}x^{1}+\cdots+f_{n}x^{n}$ con $f_{n}\neq 0$. Se llamarán *coeficientes* a los escalares $f_{0},f_{1},\cdots, f_{n}$, además se dirá que $f$ es un polinomio con coeficientes $\mathbb{F}$. Se llamarán *polinomios escalares* a los polinomios de la forma $cx^{0}$ y se escribirá $c$ en lugar de $cx^{0}$. Un polinomio no nulo de grado $n$ se llamará *mónico* si $f_{n}=1$.

Note que los polinomios son objetos diferentes a las funciones polinómicas mencionadas en la sección espacios vectoriales, pero ciertamente estos objetos tienen relación entre si.

Veamos que el conjunto de los polinomios forman un álgebra.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-7"><strong>(\#thm:unnamed-chunk-7) </strong></span>Sean $f$ y $g$ polinomios no nulos sobre $\mathbb{F}$, entonces:
  
(i.) $fg$ es un polinomio no nulo.

(ii.) $\mbox{grd }f=\mbox{grd }f + \mbox{grd }g$.

(iii.) $fg$ es polinomio mónico si y solo si $f$ y $g$ son polinomios mónicos.

(iv.) $fg$ es un polinomio escalar si y solo si $f$ y $g$ polinomios escalares.

(v.) Si $f+g\neq 0$, entonces $\mbox{grd }(f+g)=\max (\mbox{grd }f, \mbox{grd }g)$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $f$ tiene grado $m$ y que $g$ tiene grado $n$. Estudiemos los términos $(fg)_{i}$. Sea $k$ un entero no negativo, entoces $$(fg)_{m+n+k}=\sum_{i=0}^{m+n+k} f_{i}g_{m+n+k-i}$$ Si $i\leq m$ y $m+n+k-i\leq n$, se tiene que $(fg)_{m+n+k}\neq 0$; por lo tanto para que $(fg)_{m+n+k}\neq 0$ es necesario que $m+k\leq i\leq m$, de donde se sigue que $k=0$ e $i=m$. Así $(fg)_{m+n}=f_{m}g_{n}$, además $(fg)_{m+n+k}=0$ si $k>0$. Luego se verifica (i.) esto es que $fg$ es un polinomio no nulo, al igual que (ii.) $\mbox{grd }(fg)=m+n=\mbox{grd }f + \mbox{grd }g$, por lo tanto si $f$ y $g$ son polinomios mónicos, $fg$ también lo es (iii.). Y de aquí se sigue fácilmente (iv.). Para ver (v.) supongamos que $f+g\neq 0$, entonces existe $i\geq 0$ tal que $f_{i}+g_{i}\neq 0$. No puede suceder que $i>\max (\mbox{grd }f, \mbox{grd }g)$ de donde se sigue el resultado.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-9"><strong>(\#cor:unnamed-chunk-9) </strong></span>El conjunto de los polinomios sobre el cuerpo $\mathbb{F}$ junto con las operaciones de suma y multiplicación de polinomios, forman un álgebra lineal conmutativa con unidad sobre $\mathbb{F}$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Como $\mathbb{F}[x]$ es un subespacio de $\mathbb{F}^{\infty}$ y las operaciones de suma y el multiplicación de polinomios son las mismas operaciones de sumas y multiplicación definidas en $\mathbb{F}^{\infty}$, basta ver que la multiplicación de polinomios es cerrada, es decir, el resultado es nuevamente un polinomio. Esto se tiene directamente del teorema anterior cuando ambos factores de la multiplicación son polinomios no nulos. Cuando alguno de los factores es el polinomio cero, el producto es cero, el cual también es un polinomio.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-11"><strong>(\#cor:unnamed-chunk-11) </strong></span>Sean $f, g$ y $h$ polinomios sobre el cuerpo $\mathbb{F}$ con $f\neq 0$. Si $fg=fh$, entonces $g=h$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Como $fg=fh$, entonces $f(g-h)=0$. De la parte (i.) del teorema, como $f\neq 0$, se tiene que $g-h=0$, de donde se sigue el resultado.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Para el caso de los polinomios, la expresión de la multiplicación de series de potencias $fg$ puede reescribirse de la siguiente forma, $$fg=\sum_{s=0}^{m+n}(\sum_{r=0}^{s}f_{r}g_{s-r})x^{s}\mbox{, con } \mbox{grad}f=m \mbox{ y grad}g=n$$
En particular, si $f=cx^{m}$ y $g=dx^{n}$, con $c, d\in\mathbb{F}$, entonces $fg=cdx^{m+n}$. De esta forma, usando las leyes distributivas en $\mathbb{F}[x]$, la multiplicación de polinomios viene dada por $$\sum_{i\leq m, j\leq n} f_{i}g_{j}x^{i+j}$$
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-14"><strong>(\#def:unnamed-chunk-14) </strong></span>Sea $\mathcal{A}$ un álgebra lineal con unidad sobre $\mathbb{F}$. Se indicará la unidad de $\mathcal{A}$ por $1$ y se conviene que $\alpha^{0}=1$ para todo $\alpha\in\mathcal{A}$. Entonces a cada polinomio $f=\sum_{i=0}^{n} f_{i}x^{i}$ sobre $\mathbb{F}$ y cada $\alpha\in\mathcal{A}$ se asocia un elemento de $f(\alpha)\in\mathcal{A}$, de la forma: $$f(\alpha)=\sum_{i=0}^{n}f_{i}\alpha^{i}.$$
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-15"><strong>(\#exm:unnamed-chunk-15) </strong></span>Sea $\mathbb{C}$ el cuerpo de los números complejos y sea $f=x^{2}+1$.

(a) Si $\mathcal{A}=\mathbb{C}$. Sea $z\in\mathbb{C}$, entonces $f(z)=z^{2}+1$, en particular $f(3)=10$ y $f(i)=0$.
(b) Si $\mathcal{A}=\mathcal{M}_{2}(\mathbb{C})$, el álgebra de las matrices $2\times 2$ sobre el cuerpo $\mathbb{C}$. Y sea $$B=\left[\begin{array}{cc}
		-1&2\\
		1&0
		\end{array} \right] $$
		se tiene que $f(B)=\left[\begin{array}{cc}
		-1&2\\
		1&0
		\end{array} \right]^{2}+\left[\begin{array}{cc}
		1&0\\
		0&1
		\end{array} \right]=\left[\begin{array}{cc}
		4&-2\\
		-1&3
		\end{array} \right]$
(c) Si $\mathcal{A}$ es el álgebra de los operadores lineales en $\mathbb{C}^{3}$ y sea $T(c_{1},c_{2},c_{3})=(ic_{2},-c_{3},-ic_{1})$. Entonces $f(T)=T^{2}+T$, esto es $f(T)(c_{1},c_{2},c_{3})=(c_{1}-ic_{3},c_{2}+ic_{1},c_{2}+c_{3})$, ya que $T^{2}(c_{1},c_{2},c_{3})=T(T(c_{1},c_{2},c_{3}))=(-ic_{3},ic_{1},c_{2})$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-16"><strong>(\#thm:unnamed-chunk-16) </strong></span>Sea $\mathbb{F}$ un cuerpo y $\mathcal{A}$ un álgebra lineal con unidad sobre $\mathbb{F}$. Sean $f$ y $g$ polinomios sobre $\mathbb{F}$, $\alpha\in\mathcal{A}$ y $c\in\mathbb{F}$. Entonces:

(i.) $(cf+g)(\alpha)=cf(\alpha)+g(\alpha)$ y
(ii.) $(fg)(\alpha)=f(\alpha)g(\alpha)$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $f=\sum_{i=0}^{m} f_{i}x^{i}$ y $g=\sum_{j=0}^{n} g_{j}x^{j}$, por lo tanto $$\displaystyle{\begin{array}{rl}
	fg=&\sum_{\substack{i\leq m\\ j\leq n}} f_{i}g_{j}\alpha^{i+j}\\
	=&\left( \sum_{\substack{i\leq m\\ j\leq n}} f_{i}\alpha^{i+j}\right)  \left( \sum_{\substack{i\leq m\\ j\leq n}} g_{i}\alpha^{i+j}\right)  \\
	=&f(\alpha)g(\alpha)
	\end{array}}.$$
	Por otra parte, $$\begin{array}{rl}
	(cf+g)(\alpha)=&\sum_{i=0}^{\max(m,n)} (cf_{i}+g_{i})\alpha^{i}\\
	=&\sum_{i=0}^{\max(m,n)} cf_{i}(\alpha^{i})+g_{i}(\alpha^{i})\\
	=&cf(\alpha)+g(\alpha)
	\end{array}$$
</div>\EndKnitrBlock{proof}

En esta parte haremos un breve estudio sobre la interpolación de Lagrange (interpolación polinómica de Lagrange). Se quiere construír un polinomio sencillo que "pase" por ciertos puntos. Más formalmente, sea $\mathbb{F}$ un cuerpo y $t_{0},t_{1},\cdots, t_{n}$ $n+1$ elementos distintos de $\mathbb{F}$. Consideremos el subespacio $V$ de $\mathbb{F}[x]$ formado por los polinomios de grado menor o igual a $n$ (incluído el polinomio $0$ para dar estructura de espacio vectorial). Sean $L_{i}$ las funciones definidas por $L_{i}(f)=f(t_{i})$ para todo $f\in V$, con $i=0,1,\cdots ,n$. Note que cada $L_{i}$ es una función de $V$ en el cuerpo $\mathbb{F}$, es decir es un funcional lineal sobre $V$. Se tiene que $\{L_{i}:i=0,1,\cdots, n \}$ es una base de $V^{\ast}$, mas específicamente, $\{L_{i}:i=0,1,\cdots, n \}$ es el dual de una base $\{P_{i}:i=0,1,\cdots, n \}$ de $V$. Además, en virtud del teorema \@ref{thm:teorema443} es única para esta y esta caracterizada por $$L_{j}(P_{i})=P_{i}(t_{j})=\delta_{ij}.$$ 
Sean $$P_{i}=\frac{(x-t_{0})\cdots(x-t_{i-1})(x-t_{i+1})\cdots (x-t_{n}) }{(t_{i}-t_{0})\cdots(t_{i}-t_{i-1})(t_{i}-t_{i+1})\cdots (t_{i}-t_{n})}=\prod_{j\neq i} \left( \frac{x-t_{j}}{t_{i}-t_{j}}\right) $$
polinomios en $V$. Si $f=\sum_{i=0}^{n} c_{i}P_{i}$, entonces para todo $j$ se tiene que $f(t_{j})=\sum_{i=0}^{n} c_{i}P_{i}(t_{j})=c_{j}$ (ya que $P_{i}(t_{j})\neq 0$ solo cuando $i=j$). Como el polinomio cero es cero para todo coeficiente $t$, es decir $0(t)=0$ para todo $t\in\mathbb{F}$, se tiene que $P_{0},P_{1},\cdots,P_{n}$ son linealmente independientes. Recordemos que la dimensión de $V$ es $n+1$, por lo tanto la colección $\{P_{0},P_{1},\cdots,P_{n}\}$ es también una base de $V$. Entonces, para todo $f\in V$ se tiene que $$f=\sum_{i=0}^{n} f(t_{i})P_{i}$$ conocida como la *fórmula de interpolación de Lagrange*.

###Factorizacion prima de un polinomio
En esta parte veremos que todo polinomio sobre un cuerpo puede descomponerse en polinomios primos. Para esto estudiaremos primero los ideales de polinomios.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-18"><strong>(\#def:unnamed-chunk-18) </strong></span>Sean $f$ y $g$ polinomios sobre $\mathbb{F}$ con $g$ no nulo. Si existe $q\in\mathbb{F}$ tal que $f=gq$, decimos que $g$ *divide a* $f$ (o que $f$ es *divisible* por $g$) y $q$ es el *cociente* de $f$ por $g$.
</div>\EndKnitrBlock{definition}

Si $f$ es divisible por $g$, también se dice que $f$ es múltiplo de $g$.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-19"><strong>(\#lem:unnamed-chunk-19) </strong></span>Sean $f$ y $g$ polinomios no nulos sobre $\mathbb{F}$ tales que $grd g\leq grd f$. Entonces existe un polinomio $q$ tal que $f-gq=0$ o $grd (f-gq)<grd f$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-20"><strong>(\#thm:unnamed-chunk-20) </strong></span>Si $f$ y $g$ son polinomios sobre un cuerpo $\mathbb{F}$ y $g$ no es nulo, entonces existen polinomios $q$ y $r$ en $\mathbb{F}$ únicos, tales que:
[i.] $f=gq+r$,
[ii] $r=0$ o $grd r< grd g$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Si $f=0$ o de grado menor a $grd g$, se puede tomar $q=0$ y $r=f$. En caso contrario, por el lema anterior, existe $q$ tal que $f-gq=0$ o $grd (f-gq)<grd f$. Si $f-gq\neq0$ y $grd (f-gq)<grd g$, se toma un polinomio $h$ tal que $f-gq-gh=0$ o $grd (f-g(q+h))<grd f-gq$. Siguiendo este proceso se hallan $q$ y $r$ tales que $r=0$ o $grd r< grd g$ y $f=gq+r$. Para probar la unicidad, supongamos que existen $q_{1}$ y $r_{1}$ tales que $r_{1}=0$ o $grd r_{1}< grd g$ y $f=gq_{1}+r_{1}$. Entonces $gq+r=gq_{1}+r_{1}$, por lo tanto, $g(q-q_{1})=r_{1}-r$, si $q\neq q_{1}$ entonces $grd g+grd(q-q_{1})=grd(r_{1}-r)$, lo que contradice que $grd (r_{1}-r)<grd g$. Por lo tanto $q=q_{1}$ y $r_{1}=r$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-22"><strong>(\#def:unnamed-chunk-22) </strong></span>Sea $\mathbb{F}$ un cuerpo. Un escalar $c\in\mathbb{F}$ es una raíz de un polinomio $f$ sobre $\mathbb{F}$ si $f(c)=0$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-23"><strong>(\#cor:unnamed-chunk-23) </strong></span>Sea $f$ un polinomio sobre el cuerpo $\mathbb{F}$ y sea $c$ un escalar. Entonces $f$ es divisible por $x-c$ si $c$ es una raíz de $f$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Por el teorema anterior existen $q$ y $r$ tales que $f=(x-c)q+r$, donde $r$ es un polinomio escalar. Luego, como $f(c)=r(c)$, $r(c)=0$ si y solo si $f(c)=0$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-25"><strong>(\#cor:unnamed-chunk-25) </strong></span>Un polinomio $f$ de grado $n$ sobre un cuerpo $\mathbb{F}$ tiene a lo sumo $n$ raíces.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Procederemos por inducción. El resultado es obviamente cierto para polinomios de grado 0 y grado 1. Supongamos que los polinomios de grado $n-1$ tienen a lo sumo $n-1$ raíces. Sea $f$ un polinomio de grado $n$, supongamos que $c$ es raíz del polinomio $f$, entonces $f=(x-c)q$ para algún polinomio $q$ de grado $n-1$, por lo tanto $f$ tiene a lo sumo $n$ raices.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-27"><strong>(\#def:unnamed-chunk-27) </strong></span>Dado un cuerpo $\mathbb{F}$, un \textit{ideal} en $\mathbb{F}[x]$ es un subespacio $I$ de $\mathbb{F}[x]$ tal que para todo $f\in\mathbb{F}$ y $g\in I$, $fg\in I$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-28"><strong>(\#exm:unnamed-chunk-28) </strong></span>Dado un polinomio $g\in\mathbb{F}[x]$, el conjunto $I=g\mathbb{F}[x]=\{fg| f\in\mathbb{F}[x]\}$ de múltiplos del polinomio $g$ es un ideal. En efecto, $cgf+gh=g(cf+h)$ para cualquier escalar $c$ y cuales quiera polinomios $f$ y $h$ sobre $\mathbb{F}$, esto es $I$ es un subespacio de $\mathbb{F}$. Además, por definición del conjunto $I$, este absorve los productos $fg$ para todo $f\in\mathbb{F}$ y $g\in I$. Este conjunto se conoce como el *ideal principal geneardo* por $g$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-29"><strong>(\#exm:unnamed-chunk-29) </strong></span>Sean $g_{1},g_{2},\cdots,g_{n}$ polinomios sobre $\mathbb{F}$. Consideremos la suma de los subespacios (ideales) $g_{i}\mathbb{F}[x]$, esto es $M=g_{1}\mathbb{f}[x]+\cdots+g_{n}\mathbb{F}[x]$. $M$ es también un subespacio de $\mathbb{F}[x]$ (esto se probó en el capítulo de espacios vectoriales) y además un ideal, ya que dado $g\in M$ y $f\in\mathbb{F}[x]$, se tiene que $fg=f(g_{1}h_{1}+\cdots+g_{n}h_{n})=g_{1}(fh_{1}+\cdots+fh_{n})\in M$, donde $g=g_{1}h_{1}+\cdots+g_{n}h_{n}$, con $g_{i}h_{i}\in g_{i}\mathbb{F}[x]$. Este es el *ideal generado* por los polinomios $g_{1},g_{2},\cdots,g_{n}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-30"><strong>(\#thm:unnamed-chunk-30) </strong></span>Si $M$ es un ideal no nulo de $\mathbb{F}[x]$, entonces existe un único polinomio $g\in\mathbb{F}[x]$ tal que $M$ es el ideal principal generado por $g$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Como $M$ es un ideal no nulo, existe un polinomio $g$ no nulo de menor grado, podemos suponer que $g$ es mónico (en otro caso se puede multiplicar por un escalar $c$ para hacerlo mónico, donde $cg$ está en $M$). Dado $f\in M$, por el teorema amterior, existen $q$ y $r$ tales que $f=gq+r$ y $r=0$ o $grd r< grd g$. Como $g$ y $f\in M$, $r=f-gq\in M$, luego no puede ocurrir que $grd r< grd g$, por lo que se concluye que $g\mathbb{F}[x]=M$. Supongamos que existe un polinomio $d$ tal que $M=d\mathbb{F}[x]$, entonces $g=df$ para algún polinomio no nulo $f$, y $d=gq$ para algún polinomio no nulo $q$, luego $g=gqf$, por lo tanto $grd g=grd g+grd q + grd f$. Como $g$ y $d$ son mónicos, se concluye que $q=f=1$, luego $g=d$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-32"><strong>(\#cor:unnamed-chunk-32) </strong></span>Sean $p_{1},\cdots,p_{n}$ polinomios sobre el cuerpo $\mathbb{F}$, no todos nulos. Entonces existe un único polinomio mónico $g$ tal que:
[i.] $g$ pertenece al ideal generado por $p_{1},\cdots,p_{n}$,
[ii] $g$ divide a cada $p_{i}$, $i\leq n$,
[iii] si $f$ divide a cada $p_{i}$, entoces divide a $g$.
Además todo polinomio $d$ que satisfaga $(i)$ y $(ii)$, tambén satisface $(iii)$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $g$ el polinomio mónico generador de $p_{1}\mathbb{F}[x]+\cdots+p_{n}\mathbb{F}[x]$. Todo elemento de este ideal es divisible por $g$. Supongamos que $f$ es un polinomio que divide a cada $p_{i}$, entonces existen polinomios $g_{1},\cdots,g_{n}$ tales que $p_{i}=fg_{i}$ para cada $i$. Como $g$ pertenece al ideal $p_{1}\mathbb{F}[x]+\cdots+p_{n}\mathbb{F}[x]$, existen polinomios $q_{1},\cdots,q_{n}$ en $\mathbb{F}[x]$ tales que $g=q_{1}p_{1}+\cdots+q_{n}p_{n}$, luego $g=q_{1}fg_{1}+\cdots+q_{n}fg_{n}=f(q_{1}g_{1}+\cdots+q_{n}g_{n})$. Por lo tanto $g$ es un polinomio mónico que satisface $(i)$, $(ii)$ y $(iii)$. Supongamos que $g`$ satisface $(i)$ y $(ii)$, entonces por $(i)$ y la definición de $g$ se tiene que $g´$ es múltiplo escalar de $g$, luego satisface $(iii)$. Note que si $g´$ es mónico, entonces es igual a $g$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-34"><strong>(\#def:unnamed-chunk-34) </strong></span>Sean $p_{1},\cdots,p_{n}$ polinomios sobre el cuerpo $\mathbb{F}$, no todos nulos, el generador $g$ del ideal $p_{1}\mathbb{F}[x]+\cdots+p_{n}\mathbb{F}[x]$ se llama *máximo común divisor (m.c.d) de* $p_{1},\cdots,p_{n}$. Si el máximo común divisor de $p_{1},\cdots,p_{n}$ es $1$, decimos que $p_{1},\cdots,p_{n}$ son *primos relativos*.

´´´
</div>\EndKnitrBlock{definition}
\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}El máximo común divisor de $p_{1},\cdots,p_{n}$ es $1$ si y solo si el ideal genrado por $p_{1},\cdots,p_{n}$ es todo $\mathbb{F}[x]$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-36"><strong>(\#exm:unnamed-chunk-36) </strong></span>El m.c.d. de los polinomios $x+2$ y $x^{2}+8x+16$ es $1$.\\
Por otro lado, el m.c.d. de $(x-2)^{2}(x+i)$ y $(x-2)(x^{2}+1)$ es $(x-2)(x+i)$, en efecto, el ideal generado por $(x-2)^{2}(x+i)$ y $(x-2)(x^{2}+1)$ contiene a $(i-2)(x-2)(x+i)=(x-2)^{2}(x+i)-(x-2)(x^{2}+1)$, luego contiene a $(x-2)(x+i)$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-37"><strong>(\#def:unnamed-chunk-37) </strong></span>Sea $\mathbb{F}$ un campo y $f$ un polinomio sobre $\mathbb{F}$. Decimos que $f$ es *reducible sobre* $\mathbb{F}$ si existen polinomios $g,h\in \mathbb{F}[x]$ de grado mayor a cero tales que $f=gh$. En otro caso decimos que $f$ es *irreducible sobre* $\mathbb{F}$. Un polinomio no escalar irreducible sobre $\mathbb{F}$ es llamado *polinomio primo (o simplemente primo) sobre* $\mathbb{F}$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-38"><strong>(\#exm:unnamed-chunk-38) </strong></span>El polinomio $f(x)=x^{2}+1$ es irreducible sobre $\mathbb{R}$. Pero es reducible sobre $\mathbb{C}$, ya que $x^{2}+1=(x+i)(x-i)$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-39"><strong>(\#thm:unnamed-chunk-39) </strong></span>Sean $f$ y $g$ polinomios sobre un cuerpo $\mathbb{F}$, y sea $p$ un polinomio primo sobre $\mathbb{F}$. Si $p$ divide al producto $fg$ entonces $p$ divide a $f$ o $p$ divide a $g$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos, sin pérdida de generalidad, que $p$ es un polinomio primo mónico. Sea $d$ el m.c.d. de $p$ y $f$. Entonces $d=1$ o $d=p$ (ya que los únicos divisores mónicos de $p$ son $1$ y $p$). Si $d=p$, entonces $p$ divide a $f$, lo que concluye la demostración. Si $d=1$, $p$ y $f$ son primos relativos. Luego, existen polinomios $h$ y $q$ tales que $1=hf+qp$. Multiplicando por $g$ tenemos que $g=(gf)h+(gq)p$, como $p$ divide a $fg$, entonces también a $(gf)h$ y claramente divide a $(gq)p$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-41"><strong>(\#cor:unnamed-chunk-41) </strong></span>Si $p$ es un polinomio primo y divide al producto $f_{1}\cdots f_{n}$, entonces divide $f_{i}$ para algún $1\leq i\leq n$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Por inducción, del teorema anterior se sigue el resultado.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-43"><strong>(\#thm:unnamed-chunk-43) </strong></span>Sea $\mathbb{F}$ es un cuerpo. Un polinomio mónico no escalar en $\mathbb{F}[x]$ puede descomponerse en forma única como el producto de polinomios primos mónicos en $\mathbb{F}[x]$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $f$ un polinomio mónico no escalar en $\mathbb{F}[x]$. Si $f$ es de grado 1, es irreducible, luego la representación en polinomios primos es el mismo polinomio $f$. Supongamos que $grd\, f> 1$ y que todo polinomio de grado menor que $n$ se puede descomponer como el producto de polinomios primos mónicos. Veamos que el resultado también es cierto para polinomios de grado $n$. Si $f$, de grado $n$ es un polinomio irreducible, se obtiene el resultado, en caso contrario $f=gh$, donde $g$ y $h$ son polinomios mónicos de grado menor que $n$, por lo tanto pueden expresarse como producto de polinomios primos mónicos cada uno, y por lo tanto $f$ también. Ahora, supongamos que existen dos representaciones para $f$ en productos de polinomios primo, digamos $f=p_{1}\cdots p_{m}$ y $f=q_{1}\cdots q_{n}$, con $p_{i}$ y $q_{j}$ polinomios mónicos primos, para todo $i$ y todo $j$. Por el corolario, como $p_{m}$ divide a $q_{1}\cdots q_{n}$, divide a algún $q_{i}$, podemos suponer que $q_{i}$ es el último polinomio de la lista (reordemando los polinomios de la lista). Pero $p_{m}$ y $q_{n}$ son polinomios mónicos primos, por lo tanto $p_{m}=q_{n}$. Además, si $m=1$ o $n=1$, $m=n=1$, ya que $grd\, f=\sum_{i=1}^{n} grd p_{i}=\sum_{j=1}^{m} grd q_{j}$, en este caso queda demostrado el teorema. Si por el contrario, $m>1$ y $n>1$, como $p_{1}\cdots p_{m}=q_{1}\cdots q_{n-1}p_{m}$, entonces $p_{1}\cdots p_{m-1}=q_{1}\cdots q_{n-1}$; como el producto $p_{1}\cdots p_{m-1}$ es un polinomio de grado menor que $n$, el producto $q_{1}\cdots q_{n-1}$ no es más que un reordenamiento de este, luego la representación de $f$ es única salvo el orden de los factores.
</div>\EndKnitrBlock{proof}
En la factorización descrita en la demostración del teorema anterior, los factores primos mónicos pueden estar repetidos en la lista $p_{1}\cdots p_{m}$. Si $p_{1},\cdots,p_{r}$ son los factores distintos de la factorización, entonces $$f=p_{1}^{n_{1}}\cdots p_{r}^{n_{r}}$$ donde $n_{i}$ es el número de veces que aparece el factor $p_{i}$ en la factorización de $f$. Esta descomposición (única) recibe el nombre de *descomposición prima* de $f$. Es fácil de demostrar que todo polinomio mónico que divide a $f$ es producto de algunos de estos factores, es decir, es de la forma $p_{1}^{m_{1}}\cdots p_{r}^{m_{r}}$ donde cada exponente $m_{i}$ es un número tal que $0\leq m_{i}\leq n_{i}$. Luego, es muy fácil hallar el m.c.d. de dos polinomios $f$ y $g$ si tenemos su descomposición prima de cada uno de ellos, en este caso, si $f=p_{1}^{n_{1}}\cdots p_{r}^{n_{r}}$ y $g=q_{1}^{m_{1}}\cdots q_{s}^{m_{s}}$ entonces el m.c.d. es el producto de los factores comunes a ambas descomposiciones con el menor exponente, es decir, si $p_{i}=q_{j}$, entonces el factor $p_{i}^{k}$, con $k=max{n_{i},m_{j}}$ formará parte del m.c.d de $f$ y $g$.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-45"><strong>(\#exm:unnamed-chunk-45) </strong></span>Los polinomios mónicos $x+a$, $x+b$ y $x+c$, donde $a$, $b$ y $c$ son escalares sobre un cuerpo $\mathbb{F}$, son primos relativos, mientras que el m.c.d. $(x+a)^{n}(x+b)^{m}$ y $(x+a)^{n}(x+c)^{r}$ es el polinomio $(x+a)^{n}$. Y el m.c.d. del los polinomios $(x+a)^{n+i}(x+b)^{m}(x+c)^{r}$ y $(x+a)^{n}(x+c)^{r+j}(x+b)^{m+k}$ es el polinomio $(x+a)^{n}(x+c)^{r}(x+b)^{m}$. Pero los polinomios $(x+a)^{n}(x+b)^{m}$, $(x+b)^{m}(x+c)^{r}$ y $(x+a)^{n}(x+c)^{r}$ son primos relativos (no tienen factores en  común).
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Si $f=p_{1}^{n_{1}}\cdots p_{r}^{n_{r}}$ es la descomposición prima de un polinomio $f$, entonces los polinomio $f_{i}=\prod_{\substack{j=1\\j\ne i}}^r f_{j}$, con $1\leq i\leq r$, son primos relativos.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-47"><strong>(\#thm:unnamed-chunk-47) </strong></span>Sea $f$ un polinomio sobre un  cuerpo $\mathbb{F}$ y sea $f`$ su derivada. $f$ es producto de factores irreducibles distintos si y solo si $f$ y $f`$ son primos relativos.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $f=p_{1}\cdots p_{k}$, donde $p_{1},\cdots,p_{k}$ son polinomios irreducibles no escalares distintos entre si. Sea $f_{i}=\prod_{\substack{j=1\\j\ne i}}^k f_{j}$, entonces $f`=p_{1}`f_{1}+\cdots +p_{k}`f_{k}$. Supongamos que existe $p$ un polinomio primo que divide a $f$ y a $f`$. Como $p$ divide a $f$, $p$ debe ser algún factor $p_{i}$. Además $p$ divide a cada $f_{j}$, para todo $j\neq i$ y como $p$ divide a $f`$, entonces $p$ divide a $p_{i}`f_{i}$, por lo tanto $p$ divide a $p_{i}`$ o divide a $f_{i}$, pero esto no es posible ya que $p$ no puede dividir a $f_{i}$ por ser producto de polinomios primos irreducibles todos distintos a $p_{i}$ y tampoco puede dividir a $p_{i}`$, ya que $grd p_{i}`< grd p_{i}$, luego no esxiste un polinomio primo $p$ que divida a $f$ y $f`$. Recíprocamente, supongamos que en la factorización prima de $f$ se repite un factor, es decir, $f=p^{2}h$, donde $p$ es un polinomio mónico primo y $h$ un polinomio sobre $\mathbb{F}$. Entonces, $f`=2pp`h+p^{2}h`$, de donde se sigue que $p$ es divisor de $f$ y de $f`$.
</div>\EndKnitrBlock{proof}

Por último, daremos la forma general de factorización de culquier polinomio (sobre $\mathbb{R}$ y $\mathbb{C}$). Para ellos definiremos lo siguiente:

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-49"><strong>(\#def:unnamed-chunk-49) </strong></span>El cuerpo $\mathbb{F}$ es dice *algebraicamente cerrado* si todo polinomio primo sobre $\mathbb{F}$ tiene grado $1$.
</div>\EndKnitrBlock{definition}

Otra forma de definir cuerpo algebraicamente cerrado es pidiendo que todo polinomio mónico irreducible tenga la forma $(x-c)$ donde $c\in\mathbb{F}$. por otro lado, en cualquier cuerpo hemos visto que este tipo de polinomios es irreducible, por lo que la definición de cuerpo algebraicamente cerrado es equivalente a decir que $\mathbb{F}$ es un cuerpo tal que todo polinomio no escalar sobre $\mathbb{F}$ se puede expresar de la forma $f=k(x-c_{1})^{n_{1}}\cdots(x-c_{r})^{n_{r}}$, donde $c_{1},\cdots,c_{r}$ son escalares distintos en $\mathbb{F}$, $c\in\mathbb{F}$ no cero y $n_{1},\cdots,n_{r}$ enteros positivos. También es equivalente a decir que si $f$ es un polinomio no escalar sobre $\mathbb{F}$ entonces existe $c\in\mathbb{F}$ tal que $f(c)=0$.

Con esto podemos afirmar que $\mathbb{R}$ no es algebraicamente cerrado ya que el polinomio $x^{2}+1$ no es reducible en polinomios primos de grado $1$. De otra forma, no existe un número real $c$ tal que $c^{2}+1=0$. Pero este mismo polinomio si es irreducible sobre el cuerpo de los números complejos $\mathbb{C}$, de hecho el Teorema fundamental del Álgebra afirma que el cuerpo de los números complejos es algebraicamente cerrado. Este teorema nos permite afirmar que las posibles factorizaciones de un polinomio $f$ sobre $\mathbb{R}$ es de la forma $f=c(x-t_{1})\cdots(x-t_{k})p_{1}\cdots p_{r}$ donde $p_{i}$ es un polinomio cuadrático de la forma $p_{i}=(x-c_{i})(x-\bar{c_{i}})$, donde $c_{i}$ y $\bar{c_{i}}$ son números complejos puros conjugados entre sí, de coeficientes reales. De donde se sigue que todo polinomio irreducible sobre $\mathbb{R}$ tiene grado $1$ o $2$, por lo tanto todo polinomio sobre $\mathbb{R}$ es el producto de factores irreducibles de grado $2$ y de polinomios lineales (de la forma $x-c$). 

##ejercicios

(1) Sea $S$ el conjunto de los enteros no negativos y $\mathbb{F}$ un cuerpo. Sea $\mathbb{F}^{\infty}$ el conjunto de las funciones de $S$ en $\mathbb{F}$. Se definen las operaciones, suma, producto por un escalar y multiplicación de vectores en $\mathbb{F}^{\infty}$ como en el ejemplo \ref{ejemplo55}. Demuestre que:
(i.) la multiplicación es distributiva respecto de la suma, es decir, es decir, si $f,g,h\in \mathbb{F}^{\infty}$ entonces $f(g+f)=fg+fh$ y $(f+g)h=fh+gh$, 
(ii.) para todo escalar $c\in\mathbb{F}$, se cumple que $c(fg)=(cf)g=f(cg)$.
Respuesta: 
$$\begin{array}{rl}
[f(g+h)]_{n}=&\sum_{i=0}^{n} f_{i}(g+h)_{n-i} \forall n=1,2,\cdots\\
=&\sum_{i=0}^{n} f_{i}g_{n-i}+f_{i}h_{n-i}\\
=&\sum_{i=0}^{n} f_{i}g_{n-i}+\sum_{i=0}^{n}f_{i}h_{n-i}\\
=&(fg)_{n}+(fh)_{n}
\end{array}$$ por lo tanto $f(g+h)=fg+fh$.
De forma análoga se tiene que $[(f+g)h]_{n}=(fh)_{n}+(gh)_{n} \forall n=1,2,\cdots$ y eso demuestra (a).
Veamos que se cumple (b)
$$\begin{array}{rl}
[k(fg)]_{n}=&k(fg)_{n}\\
=&k\sum_{i=0}^{n} f_{i}g_{n-i} \forall n=1,2,\cdots\\
=&\sum_{i=0}^{n} kf_{i}g_{n-i}\\
=&\sum_{i=0}^{n} (kf_{i})g_{n-i}\\
=&[(kf)g]_{n}
\end{array}$$
lo que muestra que $k(fg)=(kf)g$. Ahora, sustituyendo la cuarta linea de la cadena de igualdades anteriores, por $\sum_{i=0}^{n} f_{i}(kg_{n-i})$ obtenemos que $k(fg)=f(kg)$.

(2) Demuestre que si $f=cx^{m}$ y $g=dx^{n}$, con $c, d\in\mathbb{F}$, entonces $fg=cdx^{m+n}$.
Respuesta: como $(fg)_{k}=\sum_{i=0}^{k}f_{i}g_{k-i}$ y $f_{i}=0$ si $i<m$ y $g_{j}=0$ si $j<n$, se tiene que solo para $k=m+n$ $(fg)_{k}\neq 0$.

(3) Sean $f$ y $g$ polinomios de grado $m$ y $n$ respectivamente. Demuestre que: $$fg=\sum_{s=0}^{m+n}(\sum_{r=0}^{s}f_{r}g_{s-r})x^{s}.$$
Respuesta: Considerando a $f$ y $g$ como una suma de polinomios de la base $\{x^{n}: n\geq 0\}$, $f=f_{0}+ f_{1}x+ f_{2}x^{2}+\cdots+f_{m}x^{m}$ y $g=g_{0}+ g_{1}x+ g_{2}x^{2}+\cdots+g_{m}x^{m}$, por las propiedades distributivas y el ejercicio anterios se obtiene el resultado.


