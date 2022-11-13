# Estructuras algebraicas

## Conjuntos

Abordaremos los temas relacionados con la teoría de conjuntos desde una perspectiva intuitiva, más bien oparacional para abordar los conceptos básicos necesarios para desarrollar el resto de los capítulos.

### Definiciones Iniciales

Entenderemos por *conjunto* a una colección de objetos cualesquiera. Las palabras *conjunto, colección, familia* suelen ser usadas para denotar este objeto matemático. Los objetos que conforman un conjunto son llamados comunmente *elementos* (o *miembros*) del conjunto. Los conjuntos suelen denotarse con letras mayúsculas $A, B, C, P,\cdots$, mientras que los miembros que los conforman generalmente se denotan con letras minúsculas $a,b, x, y,\cdots$. Si $C$ es un conjunto y $x$ es un elemento de $C$, escribiremos $x\in C$ (o equivalentemente $C\ni x$) lo que se lee *$x$ pertenece al conjunto $C$*. Para denotar lo contrario usaremos el símbolo $\notin$, así $x\notin C$ significa que *$x$ no pertenece a $C$ o $x$ no es miembro de $C$*.

Puede ocurrir que elementos de un conjunto también pertenezcan a otro conjunto. En el caso que todo elemento de un conjunto $A$ es miembro del conjunto $C$ decimos que *$A$ es subconjunto de $C$* (o $C$ contiene a $A$), lo que denotaremos $A\subseteq C$. Es decir, si $x\in A$, entonces $x\in C$ para todo $x$, implica que $A\subseteq C$. Note que es posible que $A$ y $C$ tengan exactamente los mismos elementos, en este caso diremos que los conjuntos $A$ y $C$ son iguale y lo denotaremos por $A=C$. Sin embargo debemos comprobar que $A\subseteq C$ y $C\subseteq A$ para asegurar que $A=C$. En otro caso, cuando $A\subseteq C$ pero $A$ no es igual al conjunto $C$, diremos que *$A$ es un subconjunto propio de $C$* (o *$A$ está propiamente contenido en $C$*).

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>El conjunto formado por 0, 1, 2, 3, 4, etc. es el llamado conjunto de los *números naturales* y se denota por $\mathbb{N}$.
Se debe saber que podemos definir un conjunto describiendo uno a uno sus miembros. Esto se hace encerrándolos entre llaves. Así, el conjunto de los números naturales es $\mathbb{N}=\{0, 1, 2, 3, 4,\cdots\}$.
Denotaremos por $\mathbb{N}^{*}=\{ 1, 2, 3, \cdots \}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-2"><strong>(\#exm:unnamed-chunk-2) </strong></span>Dado el conjunto de los números enteros $\mathbb{Z}=\{\cdots,-3,-2,-1,0,1,2,3,\cdots \}$, el conjunto de los números pares (enteros pares) es el conjunto de los números de la forma $2k$ donde $k$ es un entero.
También se puede describir el conjunto anterior así: 

$$\{p\in\mathbb{Z}| p=2k \mbox{ para algú n } k\in\mathbb{Z} \}$$ 
  
lo cual se lee: _el conjunto formado por todos los números enteros_ $p$ _tales que_ $p=2k$ _para algún número entero_ $k$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-3"><strong>(\#exm:unnamed-chunk-3) </strong></span>Denotaremos el conjunto de los números reales po $\mathbb{R}$. El conjunto de las soluciones de la ecuación $7x^{2}+4x-32=0$ es $C=\{x\in\mathbb{R}| x \mbox{ es solució n de } 7x^{2}+4x-32=0 \}$.
  </div>\EndKnitrBlock{example}

### Operaciones entre conjuntos

Dados dos conjuntos $A$ y $B$ podemos definir nuevos conjuntos a partir de estos, con las operaciones entre conjuntos que definiremos a continuación.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:uniondeconjuntos"><strong>(\#def:uniondeconjuntos) </strong></span>Dados dos conjuntos $A$ y $B$, el conjunto **unión** de $A$ y $B$ es el conjunto $A\cup B = \{ x| x\in A \mbox{ o } x\in B \}$.
</div>\EndKnitrBlock{definition}

Es decir, la unión de los conjuntos $A$ y $B$ es el conjunto formados por aquellos elementos que pertenezcan a al menos uno de los dos conjuntos, así un elemento que pertenezca tanto a $A$ como a $B$, es miembro de $A\cup B$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:intersecciondeconjuntos"><strong>(\#def:intersecciondeconjuntos) </strong></span>Dados dos conjuntos $A$ y $B$, el conjunto *intersección* de $A$ y $B$ es el conjunto $A\cap B = \{ x| x\in A \mbox{ y } x\in B \}$.
</div>\EndKnitrBlock{definition}

En otras palabras, la intersección de $A$ y $B$ es el conjunto formado por aquellos elementos que pertenecen a ambos conjuntos simultaneamente.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-4"><strong>(\#exm:unnamed-chunk-4) </strong></span>Dados los conjuntos $A$ y $B$, tales que $B\subseteq A$ ($B$ es subconjunto de $A$).  Se tiene que $A\cup A=A$, más aún $A\cup B=A$. Además $A\cap A=A$ y $A\cap B=B$. 
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-5"><strong>(\#exm:unnamed-chunk-5) </strong></span>Sean $A=\{a,b,c\}$ y $B=\{c,d,e\}$. $A\cup B=\{a,b,c,d,e\}$ y $A\cap B=\{c\}$.  Además $\mathcal{P}(A)=\{\ \emptyset, \{a\}, \{b\}, \{c\}, \{a,b\}, \{a,c\}, \{c,b\}, \{a,b,c\}\}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-6"><strong>(\#exm:unnamed-chunk-6) </strong></span>Dado el conjunto de los números enteros, $\mathbb{Z}$. Los subconjuntos $\mathbb{Z}^{+}=\{p\in\mathbb{Z}| p \mbox{ es un entero positivo} \}$ y $\mathbb{Z}^{-}=\{p\in\mathbb{Z}| p \mbox{ es un entero negativo} \}$. Se tiene que $\mathbb{Z}\cap \mathbb{Z}^{+}=\mathbb{Z}^{+}$ y  $\mathbb{Z}\cup \mathbb{Z}^{-}=\mathbb{Z}$.

Ahora bien, pensemos en el conjunto $\mathbb{Z}^{+}\cap\mathbb{Z}^{-}$. Note que no existe número entero que pertenezca a $\mathbb{Z}^{+}$ y $\mathbb{Z}^{-}$ simultaneamente. Para que la intersección esté bien definida, el resultado debería ser un conjunto. Con ese fin daremos la siguiente definición.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:conjuntovacio"><strong>(\#def:conjuntovacio) </strong></span>Diremos que un conjunto es *vacío* si no posee elementos y lo denotaremos por $\emptyset$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}El conjunto vacío es único. Basta con demostrar que dados dos conjuntos $\emptyset$ y $\emptyset_{1}$, se cumple que $\emptyset\subseteq \emptyset_{1}$ y $\emptyset_{1}\subseteq\emptyset$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:conjuntodiferencia"><strong>(\#def:conjuntodiferencia) </strong></span>Dados dos conjuntos $A$ y $B$, el *conjunto diferencia* $A-B$ es el conjunto $\{x\in A | x\notin B \}$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-8"><strong>(\#exm:unnamed-chunk-8) </strong></span>Dados los conjuntos de los números enteros, $\mathbb{Z}$ y el conjunto de los números naturales $\mathbb{N}=\{0,1,2,3,4,\cdots \}$, el conjunto diferencia $\mathbb{Z}-\mathbb{N}=\{p\in\mathbb{Z}| p\notin \mathbb{N} \}$ es decir, el conjunto de los números enteros que no son números naturales, que no es más que $\mathbb{Z}^{-}$.
</div>\EndKnitrBlock{example}

*Generalización de unión e intersección*

Las operaciones entre conjuntos definidas antes consideran solo dos conjuntos, sin embargo podemos extender las nociones de unión e intesección de conjuntos a una cantidad cualquiera de conjuntos, finita o no.

Dado $n\in\mathbb{N}$. La unión de $n$ conjuntos $A_{1}, A_{2},\cdots,A_{n}$, puede definirse claramente a partir de la unión de dos conjuntos así:

1. Hallamos el conjunto unión de los primeros dos conjuntos $A_{1}\cup A_{2}$ (definición \@ref(def:uniondeconjuntos)).

2. Ahora unimos el conjunto obtenido en el paso i. con el siguiente conjunto $A_{3}$, esto es $(A_{1}\cup A_{2})\cup A_{3}$.

3. Repetimos el paso anterior hasta unir todos los conjuntos.

El algoritmo anterior nos muestra que es posible unir una cantidad finita cualquiera de conjuntos. Análogamente se pueden intersectar $n$ conjuntos, siendo $n$ un número natural cualquiera.

Ahora bien, la unión e intersección de una cantidad arbitraria (no necesariamente finita) también se puede definir.

Dado $I$ un conjunto de índices. Una familia indexada por $I$ es una colección $\mathcal{F}=\{A_{\alpha} | \, \alpha\in I \}$. Note que esta definición permite que el conjunto $I$ sea cualquier conjunto, finito o infinito. Se suele usar el conjunto de los números enteros positivos como conjunto de índices (para numerar) cuando el conjunto es infinito numerable, pero se puede usar cualquier otro conjunto.

La *unión* de los conjuntos $A_{\alpha}$, con $\alpha\in I$, el el conjunto $\bigcup\mathcal{F}=\bigcup_{\alpha\in I} A_{\alpha}=\{x|\, x\in A_{\alpha} \mbox{ para algú n } \alpha\in I \}$. De forma análoga, la *intersección* de los conjuntos $A_{\alpha}$, con $\alpha\in I$, es el conjunto $\bigcap A_{\alpha}=\{x|\, x\in A_{\alpha} \mbox{ para todo } \alpha\in I \}$. Vale resaltar que cuando $I$ es un conjunto finito, digamos $I=\{1,2,\cdots, n\}$, se tiene que $\bigcup A_{\alpha}=\{x|\, x\in A_{\alpha} \mbox{ para algú n } \alpha\in I \}=\{x|\, x\in A_{1} \mbox{ o } x\in A_{2}\mbox{ o }\cdots \mbox{ o } x\in A_{n} \}=A_{1}\cup A_{2},\cdots , A_{n}$.

### Producto cartesiano

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-9"><strong>(\#def:unnamed-chunk-9) </strong></span>Dados $a$ y $b$ miembros de los conjuntos $A$ y $B$ respectivamente, llamaremos *par ordenado al arreglo $(a,b)$. Diremos que dos pares ordenados $(a,b)$ y $(c,d)$ son iguales (es decir $(a,b)=(c,d)$ si y solo si $a=c$ y $b=d$.</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-10"><strong>(\#def:unnamed-chunk-10) </strong></span>Sean $A$ y $B$ dos conjuntos. El *producto cartesiano de $A$ y $B$* es el conjunto $A\times B$ formado por todos los pares ordenados $(a,b)$, donde $a\in A$ y $b\in B$. Es decir $A\times B=\{(a,b)| \, a\in A \mbox{ y } b\in B \}$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-11"><strong>(\#exm:unnamed-chunk-11) </strong></span>Si $A=\{1,2,3\}$ y $B=\{3,4,5\}$, entonces el producto cartesiano de $A$ y $B$ es el conjunto

$A\times B=\{ (1,3), (1,4), (1,5), (2,3), (2,4), (2,5), (3,3), (3,4), (3,5)\}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Dados los conjuntos $A$ y $B$, podemos considerar los conjuntos $A\times B$ y $B\times A$. Como conjuntos son distintos, aunque existe una relación entre ellos (se discutirá mas adelante cuando se definan correspondencias biyectivas ). De igual forma se puede definir el producto cartesiano de una cantidad finita de conjuntos (de forma análoga a la unión de conjuntos). Si $A$, $B$ y $C$ son conjuntos, podemos definir el conjunto $A\times B\times C$ formado por los arreglos (terna ordenada) del tipo $(a,b,c)$, donde $a\in A$, $b\in B$ y $c\in C$. Más aun, se puede definir el producto cartesiano para una cantidad arbitraria de conjuntos. Dado un conjunto de índices $I$, el producto cartesiano de una familia indexada por $I$, $\mathcal{F}=\{A_{\alpha}|\, \alpha\in I \}$, es el conjunto de aplicaciones $f:I\longrightarrow \bigcup\mathcal{F} \mbox{ tales que } f(\alpha)\in A_{\alpha}$, es decir $\prod_{\alpha \in I} A_{\alpha}=\{f:I\longrightarrow\bigcup \mathcal{F} |\, f(\alpha)\in A_{\alpha} \}$. Por último, queremos recalcar que es posible hacer el producto cartesiano de un conjunto consigo mismo, esto es $A\times A$ formado, como es natural por los pares $(a,b)$, con  $a$ y $b$ elementos de $A$. En este caso se puede denotar $A^{2}$ al producto cartesiano de $A$ consigo mismo (y se denota $A^{n}$ al producto cartesiano de $A$ consigo mismo $n$ veces). Para $A^{2}$ llamamos **diagonal** al conjunto formado por los pares de la forma $(a,a)$ y se denota por $\Delta$, es decir, $\Delta=\{(a,a)|\, a\in A \}$.
</div>\EndKnitrBlock{remark}

## Relaciones de Equivalencia

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-13"><strong>(\#def:unnamed-chunk-13) </strong></span>Dados dos conjuntos $A$ y $B$, una *relación de $A$ sobre $B$*, es un subconjunto $R$ del producto cartesiano $A\times B$. En el caso que $R\subseteq A\times A$, se dice que $R$ es una relación sobre $A$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-14"><strong>(\#def:unnamed-chunk-14) </strong></span>Dada un relación $R$ sobre un conjunto no vacío $A$. Decimos que:

1. $R$ es **reflexiva** si para todo $a\in A$, se tiene que $(a,a)\in R$ (es decir, la diagonal $\Delta$ es subconjunto de $R$).

2. $R$ es **simétrica** si para todo $a,b \in A$, se cumple que: $(a,b)\in R \Leftrightarrow  (b,a)\in R$.

3. $R$ es **transitiva** si para todo $a,b, c \in A$, se cumple que: $(a,b)\in R$ y  $(b,c)\in R$ $\Rightarrow (a,c)\in R$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-15"><strong>(\#def:unnamed-chunk-15) </strong></span>Una relación $R$ sobre un conjunto no vacío $A$, que es reflexiva, simétrica y transitiva, se dice *de equivalencia*.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Si $R$ es una relación sobre $A$, el hecho de que $(a,b)\in R$ se puede denotar como $aRb$ o como $a\simeq b$ cuando el contexto lo permita y quede claro cual es la relación.
De este modo, $R$ es una relación de equivalencia si para todo $a,b,c\in A$ se tiene que: 
  
1. $aRa$,

2. $aRb\Leftrightarrow bRa$ y 

3. $aRb$ y $bRc\Rightarrow aRc$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-9"><strong>(\#exm:ejm1-9) </strong></span>*La igualdad* es una relación de equivalencia.
Dado el conjunto de los números reales $\mathbb{R}$, la igualdad es la relación $aRb$ siempre que $a$ y $b$ sean el mismo número real y se denota por $a=b$. Es claramente reflexiva ya que $a=a$; simétrica pues $a=b$ implica que $a$ y $b$ son el mismo número real y por lo tanto $b=a$ y es transitiva ya que si $a=b$ y $b=a$, entonces $a,b$ y $c$ son el mismo número real, lo que implica que $a=c$.
Note que el conjunto donde definimos la igualdad (los reales $\mathbb{R}$) es irrelevante. Esta relación puede (y de hecho está) definida sobre cualquien conjunto.
</div>\EndKnitrBlock{example}
	
\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-10"><strong>(\#exm:ejm1-10) </strong></span>Dado el conjunto de los números enteros $\mathbb{Z}$, definamos la siguiente relación $R$: $(a,b)\in R$ si y solo si $b-a$ es un número par (o lo que es igual, es un múltiplo de $2$).
$R$ es una relación reflexiva, ya que $a-a=0$ y cero es múltiplo de $2$. Es simétrica ya que si $b-a$ es un número par, entonces $a-b$ también lo es. Ahora mostremos que es transitiva, sean $a, b$ y $c$ números enteros tales que $(a,b)\in R$ y $(b,c)\in R$, entonces $b-a$ y $c-b$ son números pares como también su suma $c-a=(c-b)+(b-a)$, por lo tanto $(a,c)\in R$. En consecuencia, $R$ es una relación de equivalencia.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-11"><strong>(\#exm:ejm1-11) </strong></span>*La congruencia modular*. Definiremos la siguiente relación sobre el conjunto de los números enteros, $\mathbb{Z}$. Dado un número natural $n$, para cuales quiera enteros $a$ y $b$, decimos que $aRb$ si y solo si $b-a$ es divisible por $n$ (o equivalentemente, $b-a$ es múltiplo de $n$); lo denotamos por $a\cong b\mbox{ mod } n$ y se lee *$a$ congruente con $b$ módulo $n$*.
Es fácil demostrar que la relación es reflexiva.
Supongamos que $a\cong b \mbox{ mod } n$, entonces $b-a=kn$ para algún $k\in\mathbb{Z}$. Luego, $a-b=-kn$ por lo tanto $b\cong a \mbox{ mod } n$. Entonces la relación es simétrica.
Ahora supongamos que $a\cong b \mbox{ mod } n$ y $b\cong c \mbox{ mod } n$. Se tiene así que existen $k,q\in\mathbb{Z}$ tales que $b-a=kn$ y $c-b=qn$. De este modo $c-a=(c-b)+(b-a)=(q-k)n$, de donde se sigue que $a\cong c \mbox{ mod } n$.
De lo anterior se sigue que la relación de congruencia módulo $n$ es una relación de equivalencia.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-17"><strong>(\#def:unnamed-chunk-17) </strong></span>Dados una relación de equivalencia $R$ sobre un conjunto $A$ y $a\in A$. Definimos *la clase de equivalencia de $a$* como el conjunto $[a]=\{b\in A | aRb\}$. También se denota por $cl(a)$ o $\tilde{a}$.
</div>\EndKnitrBlock{definition}

Pensemos en las clases de equivalencias de los ejemplos anteriores. La clase de equivalencia de $a$ para la relación *igualdad* \@ref(exm:ejm1-9) es el conjunto cuyo único elemento es $a$. Mientras que en el ejemplo \@ref(exm:ejm1-10), la relación solo define dos clases de equivalencia, el conjunto de los números enteros pares y el conjunto de los números enteros impares. En el caso de la *congruencia módulo $n$* \@ref(exm:ejm1-11), la clase de equivalencia de un entero $a$ es el conjunto $\{b\in\mathbb{Z}| a\cong b\mbox{ mod } n \}=\{b\in\mathbb{Z}| b-a=kn\mbox{ para algún } k\in\mathbb{Z} \}=\{b\in\mathbb{Z}| b=kn+a\mbox{ para algún } k\in\mathbb{Z} \}$ es decir, todos los enteros $b$ que tienen por resto $a$ al ser divididos por $n$.


\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-18"><strong>(\#def:unnamed-chunk-18) </strong></span>Dado un conjunto $A$, *una partición de $A$* es una colección de subconjuntos no vacíos de $A$, disjuntos dos a dos, tales que la unión de ellos es todo $A$. Es decir, $\{ B_{i}\subseteq A |\,, i\in I\}$, donde $I$ es un conjunto de índices y se tiene que: 
  
1.  $B_{i}\neq\emptyset$ para todo $i\in I$.

2. $B_{i}\neq B_{j}$, para $i,j\in I$ y $i\neq j$.

3. $\bigcup_{i\in I} B_{i}=A$.
	
Cada subconjunto $B_{i}$ es una parte de $A$.
</div>\EndKnitrBlock{definition}


\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-19"><strong>(\#thm:unnamed-chunk-19) </strong></span>Las clases de equivalencia definidas por una relación de equivalencia sobre un conjunto $A$ definen una partición de $A$. Recíprocamente, una partición de un conjunto $A$, induce una relación de equivalencia sobre $A$ de forma que las clases de equivalencia corresponden a las partes de la partición.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $R$ una clase de equivalencia sobre $A$. Por la reflexividad de $R$ se tiene que $a\in[a]$, por lo tanto $\bigcup_{a\in A} [a]= A$ y $[a]$ es no vacío. Supongamos que $[a]\cap [b]\neq\emptyset$, entonces existe $c\in A$ tal que $c\in [a]\cap [b]$, por transitividad, $aRb$, por lo tanto $[a]=[b]$, es decir, si dos clases no son disjuntas, son iguales.
Recíprocamente, sea  $\{ B_{i}\subseteq A |\,, i\in I\}$ una partición. Definimos la relación $R$, sobre $A$, así: para $a,b\in A$, $aRb$ si y solo si existe $i\in I$ tal que $a,b\in B_{i}$, esto es, $a$ y $b$ pertenecen a la misma parte $B_{i}$. Es muy fácil ver que esta relación es de equivalencia.
</div>\EndKnitrBlock{proof}

## Funciones

Veamos ahora la definición de función (o aplicación), concepto importantísimo en toda la matemática y bastante conocido y usado en la educación matemáticas desde los niveles más básicos. Digamos que una *función* es una regla de asignación entre conjuntos, por ejemplo la función  que asigna a cada número real $r$ su parte entera $\lVert n \rVert$ (el mayor entero menor o igual que $r$), es una función del conjunto de los números reales $\mathbb{R}$ al conjunto de los números enteros y su regla de asignación es la antes descrita. La relación $y=x^{2}$, es una función de $\mathbb{R}$ en si mismo que a cada número real $x$ le relaciona su cuadrado $x^{2}$, desde otro punto de vista, los pares $(x,y)$ pertenecen a la función si $y=x^{2}$, dicho de otro modo, los pares $(x,x^{2})$ forman parte de la función.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-21"><strong>(\#def:unnamed-chunk-21) </strong></span>Dados dos conjuntos no vacíos $A$ y $B$, una *función de $A$ en $B$* es un subconjunto $G$ de $A\times B$ tal que para cada $a\in A$, existe un único $b\in B$, tal que $(a,b)\in G$. Lo denotamos por $f: A\longrightarrow B$, con $f(a)=b$. Llamaremos *dominio de $f$* al conjunto $A$ (y se denota $dom(f$) y *codominio* al conjunto $B$. También se suelen llamar conjunto de partida y conjunto de llegada respectivamente.
                                          </div>\EndKnitrBlock{definition}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:identidad"><strong>(\#exm:identidad) </strong></span>Dado un conjunto $A$ no vacío, la *función identidad* es aquella que a cada $a$, le asigna el mismo elemento $a$. Esto es, $i: A\longrightarrow A$ definida por $i(a)=a$ para todo $a\in A$, que no es más que la diagonal de $A\times A$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-12"><strong>(\#exm:ejm1-12) </strong></span>Sea $f: \mathbb{R}\longrightarrow\mathbb{R}$ definida por $f(x)=x^{2}$. Los pares de la forma $(x,x^{2})$ forman parte de la función. El conjunto $dom(f)=\mathbb{R}$ y su codominio es $\mathbb{R}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-13"><strong>(\#exm:ejm1-13) </strong></span>Dados $\mathbb{Z}$ el conjunto de los números enteros, y $\mathbb{Q}$ el conjunto de los números racionales, definimos $f:\mathbb{Z}\times\mathbb{Z}\longrightarrow\mathbb{Q}$ de la siguiente forma $f((m,n))=\frac{m}{n}$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-14"><strong>(\#exm:ejm1-14) </strong></span>Dados $\mathbb{Z}$ el conjunto de los números enteros, y $\mathbb{Q}$ el conjunto de los números racionales, definimos $f:\mathbb{Q}\longrightarrow \mathbb{Z}\times\mathbb{Z}$ de la siguiente forma. Dado un número racional $q\in\mathbb{Q}$, existen enteros sin factores comunes $m$ y $n$ tales que $q=\frac{m}{n}$. Así, $f(q)=(m,n)$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-15"><strong>(\#exm:ejm1-15) </strong></span>Sean $A$ y $B$ conjuntos no vacíos tales que $A\subseteq B$, $\imath: A \longrightarrow B$ dada por $\imath(a)=a$ es la función \textit{inclusión de $A$ en $B$}.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-16"><strong>(\#exm:ejm1-16) </strong></span>Sea $C$ el conjunto $\{a,b,c\}$. Podemos definir la siguiente función $f:C\longrightarrow C$, donde $f(a)=b$, $f(b)=c$ y $f(c)=a$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-17"><strong>(\#exm:ejm1-17) </strong></span>Sean $A$ y $B$ conjuntos no vacíos. $\pi: A\times B\longrightarrow A$ dada por $\pi((a,b))=a$ es la función *proyección de $A\times B$ sobre $A$*. Se puede definir de forma análoga la proyección sobre $B$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-18"><strong>(\#exm:ejm1-18) </strong></span>Dado un conjunto $C$ sobre el cual está definida una relación de equivalencia $R$. Llamaremos *conjunto cociente* al conjunto de las clases de equivalencia definidas por $R$, esto es $C/R=\{[a] | a\in C \}$. Definimos $f:C\longrightarrow C/R$, como $f(a)=[a]$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-22"><strong>(\#def:unnamed-chunk-22) </strong></span>Una función $f:A\longrightarrow B$ se dice *sobreyectiva* si para todo $b\in B$, existe $a\in A$ tal que $f(a)=b$.
</div>\EndKnitrBlock{definition}

Otra forma de entender la sobreyectividad es pensar que la función "cubre" todo el conjunto de llegada (el codominio).
También podemos entenderla en términos de la imagen de la función, que definiremos a continuación: dada $f:A\longrightarrow B$, si $C\subseteq A$, definimos la *imagen de un conjunto $C$* como el conjunto $\{f(a) | a\in C \}$, al cual denotamos por $f[C]$ o $f''C$. El conjunto imagen del dominio se llamará *Imagen de $f$* a secas, este es $f[A]$ y también se denota $Img(f)$. Entonces la  sobreyectividad es equivalente a que la imagen de $f$ sea igual al codominio, es decir $f[A]=B$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-23"><strong>(\#def:unnamed-chunk-23) </strong></span>Una función $f:A\longrightarrow B$ se llamará *inyectiva* si para todo $a\mbox{ y }b\in A$, si $a\neq b$, entonces $f(a)\neq f(b)$.
</div>\EndKnitrBlock{definition}

Un función inyectiva es pues una función que a cada elemento del dominio le asocia elementos distintos del codominio. Para entender mejor esta definición, definiremos imagen inversa: dada $f:A\longrightarrow B$, si $C\subseteq B$, definimos la *imagen inversa de un conjunto $C$* como el conjunto $\{a | f(a)\in C \}$ y se denota por $f^{-1}[C]$. De este modo, una función es inyectiva si la imagen inversa de los subconjuntos unitarios del codominio tienen a lo sumo un elemento, es decir, $f^{-1}[\{b\}]$ tiene un elemento o es vacío, para todo $b\in B$.

En los ejemplos que antes vimos, la función identidad es sobreyectiva e inyectiva, es decir *biyectiva* (cuando una función es inyectiva y sobreyectiva se le llama biyectiva). La función del ejemplo \@ref(exm:ejm1-12) no es inyectiva, basta ver que $f(1)=f(-1)$. Tampoco es sobreyectiva, no existe número real que tenga un cuadrado negativo. Los ejemplos \@ref(exm:ejm1-15) y \@ref(exm:ejm1-16) muestran funciones biyectivas. Pero los ejemplos \@ref(exm:ejm1-13) y \@ref(exm:ejm1-18) son funciones sobreyectivas que no son inyectivas, mientras que el ejemplo \@ref(exm:ejm1-15) muestra una función inyectiva que no es sobreyectiva.

A continuación definirimos cuando dos funciones son iguales. Intiutivamente, dos funciones serán iguales cuando expresen la misma regla de asignación sobre los mismos objetos. En seguida la definición formal:

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-24"><strong>(\#def:unnamed-chunk-24) </strong></span>Dos *funciones* $f$ y $g$ de $A$ en $B$, se dicen que son *iguales* si $f(a)=g(a)$ para todo $a\in A$.
</div>\EndKnitrBlock{definition}

Podemos también plantear la situación en la que se relacionen los elementos de dos conjuntos pasando por un tercer conjunto haciendo uso de dos funciones. Es decir, una regla de asignación entre los elementos de un conjunto $A$, en otro conjunto $B$, y otra regla que relacione a los elementos de $B$ con un conjunto $C$ se pueden componer para obtener una regla (una función) de $A$ a $C$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-25"><strong>(\#def:unnamed-chunk-25) </strong></span>Sean $f:A\longrightarrow B$ y $g:B\longrightarrow C$ dos funciones. La composición de $f$ y $g$ es una función de $A$ en $B$ que asigna a cada $a\in A$ el elemento $g(f(a))\in C$. Se denota por $g\circ f$. Entonces $g\circ f: A\longrightarrow B$, definido por $(g\circ f)(a)=g(f(a))$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Note que el dominio de la función $g$ (la segunda en ser aplicada) debe ser igual al codominio de la función $f$ (pudiése ser un subconjunto del codominio).

Es importante el orden de las funciones, en el contexto general descrito en la definición, no tiene sentido pensar en la composición $f\circ g$, ya que $g(b)$ es un elemento del conjunto $C$ que no es el dominio de $f$, por lo tanto la expresión $f(g(b))$ carece de sentido, salvo que $B$ sea subconjunto de $A$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-27"><strong>(\#exm:unnamed-chunk-27) </strong></span>Sea $A=\{a,b,c\}$. Sean $f:A\longrightarrow A$ y $g:A\longrightarrow A$ funciones definida por $f(a)=b$, $f(b)=c$ y $f(c)=a$ y $g(a)=a$, $g(b)=c$ y $g(c)=b$. Entonces $(g\circ f)(a)=g(f(a))=g(b)=c$, $(g\circ f)(b)=g(f(b))=g(c)=b$ y $(g\circ f)(c)=g(f(c))=g(a)=a$. Análogamente,  $(f\circ g)(a)=b$, $(f\circ g)(b)=a$ y $(f\circ g)(c)=c$. Aunque ambas funciones compuestas, $g\circ f$ y $f\circ g$ son funciones de $A$ en si mismo, no son iguales ya que  $(g\circ f)(a)=c$ y $(f\circ g)(a)=b$, es decir $(g\circ f)(a)\neq (f\circ g)(a)$
  </div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-28"><strong>(\#exm:unnamed-chunk-28) </strong></span>Sea $A=\{a,b,c\}$. Sean $f:A\longrightarrow A$ y $g:A\longrightarrow A$ funciones definida por $f(a)=b$, $f(b)=c$ y $f(c)=a$ y $g(b)=a$, $g(c)=b$ y $g(a)=c$. Entonces $g\circ f$  (y $f\circ g$) es la función identidad de $A$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-29"><strong>(\#exm:unnamed-chunk-29) </strong></span>Dadas las siguientes funciones $f:\mathbb{R}\longrightarrow \mathbb{Z}:x\longmapsto \lVert x\rVert$, la notación que sigue de los dos puntos, $x\longmapsto \lVert x\rVert$ nos indica la regla de asignación, esto es $f(x)=\lVert x\rVert$, donde $\lVert x\rVert$ denota la \textit{parte entera} del número real $x$, a saber: \textit{el mayor entero menor o igual a $x$}. Y la función $g:\mathbb{Z}\longrightarrow \{0,e\}$, definida por 

\begin{equation}
	g(p) = \left\{
	\begin{array}{ll}
	0      & \mbox{ si } p \mbox{ es un nú mero par } \\
	e      & \mbox{ si } p \mbox{ es un nú mero impar }
 \end{array}
	\right.
\end{equation}
	
Entonces, la función $g\circ f$ aplica números reales en $\{0,e\}$. Sin embargo $f\circ g$ no puede definirse, ya que el codominio de $g$ no es un subconjunto del dominio de $f$.
	
Calculemos $g\circ f$ para algunos números: $(g\circ f)(\frac{1}{2})=g(\lVert \frac{1}{2} \rVert)=g(0)=0$, $(g\circ f)(\frac{-3}{2})=g(\lVert \frac{-3}{2} \rVert)=g(-2)=0$ y $(g\circ f)(\pi)=g(\lVert \pi \rVert)=g(3)=e$.
</div>\EndKnitrBlock{example}

Al igual que se pueden componer dos funciones, $f$ y $g$, también se puede hacer con una cantidad cualquiera (finita) de funciones. Dadas las funciones  $f:A\longrightarrow B$, $g:B\longrightarrow C$ y $h:\longrightarrow D$, podemos componer $f$ y $g$ y obtener una función de $A$ en $C$. Y a su vez, componer esta función (la compuesta $g\circ f$ de $A$ en $C$) con la función $h$ y así obtener $h\circ (g\circ f)$ de $A$ en $D$, que es la compuesta de las tres funciones.  En este caso cabe preguntarse si es igual $h\circ (g\circ f)$ que $(h\circ g)\circ f$. El siguiente resultado contesta esta pregunta.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-30"><strong>(\#lem:unnamed-chunk-30) </strong></span>Sean $f:A\longrightarrow B$, $g:B\longrightarrow C$ y $h:\longrightarrow D$ funciones. Entonces $h\circ (g\circ f)=(h\circ g)\circ f$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Lo primero que debemos notar es que tanto $h\circ (g\circ f)$ como $(h\circ g)\circ f$ tienen el mismo dominio y codominio. Efectivamente, $h\circ (g\circ f)$ tiene por dominio el conjunto $A$, porque es dominio de $g\circ f$ (ya vimos antes que el dominio y el codominio de $g\circ f$ son el dominio de $f$ y el codominio de $g$ respectivamente), y su codominio es $D$, el codominio de $h$. Del mismo modo $(h\circ g)\circ f$ tiene dominio $A$ (al ser $dom(f)=A$) y codominio $D$ (que es el codominio de $h\circ g$).
Ahora demostremos que para cada $a\in A$, $(h\circ (g\circ f))(a)=((h\circ g)\circ f)(a)$. Y es muy fácil de ver, $$(h\circ (g\circ f))(a)=h(g\circ f)(a)=h(g(f(a)))=(h\circ g)(f(a))=((h\circ g)\circ f)(a)$$ lo que demuestra lo que queríamos.
</div>\EndKnitrBlock{proof}

Qué sucederá con la composición de dos funciones inyectivas, o sobreyectivas. Esto se muestra en este resultado:

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:lema1-2"><strong>(\#lem:lema1-2) </strong></span>Sean $f:A\longrightarrow B$ y $g:B\longrightarrow C$ dos funciones. Entonces:
  
1. $g\circ f$ es sobreyectiva si $f$ y $g$ lo son.

2. $g\circ f$ es inyectiva si $f$ y $g$ lo son.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}
1) Supongamos que $f$ y $g$ son funciones sobreyectivas. Sea $c\in C$, como $g$ es sobreyectiva, existe $b\in B$ tal que $c=g(b)$. Y como $f$ es sobreyectiva, existe $a\in A$ tal que $b=f(a)$. Se tiene que dado $c$ existe $a$ tal que $c=g(b)=g(f(a))=(g\circ f)(a)$, por lo tanto $g\circ f$ es sobreyectiva.

2) Supongamos que $f$ y $g$ son funciones inyectivas. Sean $a_{1}, a_{2}\in A$, tales que $a_{1}\neq a_{2}$. Como $f$ es inyectiva, se tiene que $f(a_{1})\neq f(a_{2})$. Ahora, como $f(a_{1}) \mbox{ y }f(a_{2})\in B$ y $f(a_{1})\neq f(a_{2})$, de la inyectividad de $g$ se sigue que $g(f(a_{1}))\neq g(f(a_{2}))$, es decir, $(g\circ f)(a_{1})\neq (g\circ f)(a_{2})$, por lo tanto $g\circ f$ es inyectiva.
</div>\EndKnitrBlock{proof}

Si una función $f$ de $A$ en $B$ es biyectiva, para cada $b\in B$ existe $a\in A$ tal que $f(a)=b$, y de la inyectividad se tiene que $a$ es único. De esta manera se puede definir una nueva función de $B$ en $A$ que guarda una extrecha relación con $f$ (pues se define a partir de ella). Dicha función es la *inversa* de $f$. Definámosla formalmente.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-33"><strong>(\#def:unnamed-chunk-33) </strong></span>Dada una función biyectiva $f: A \longrightarrow B$, la \textit{función inversa de $f$} es la función $f^{-1}$, definida así $f^{-1}(b)=a$ si y solo si $f(a)=b$.
</div>\EndKnitrBlock{definition}

Además, para cada $a\in A$, sea $b=f(a)$, de donde $(f^{-1}\circ f)(a)=f^{-1}(f(a))=f^{-1}(b)=a$. Es decir, $f^{-1}\circ f$ es la identidad de $A$ (en sí mismo). Análogamente se puede probar que $f\circ f^{-1}$ es la identidad de $B$. Esto es la demostración del siguiente resultado.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-34"><strong>(\#lem:unnamed-chunk-34) </strong></span>Dada una función $f:A\longrightarrow B$ biyectiva, las funciones $f^{-1}\circ f$ y $f\circ f^{-1}$ son iguales a la función identidad (correspondiente a los conjuntos $A$ y $B$).
</div>\EndKnitrBlock{lemma}

Recíprocamente, si dada una función $f: A\longrightarrow B$, existe una función $g:B\longrightarrow A$ tal que $g\circ f$ y $f\circ g$ son la función identidad (sobre $A$ y $B$ respectivamente), entonces se tiene que $f$ es sobreyectiva, en efecto, dado $b\in B$, $b=(f\circ g)(b)$, ya que $f\circ g$ es la identidad (sobre $B$) por lo tanto $b=f(g(b))=f(a)$ para algún $a\in A$ (donde $a=g(b)$). Observemos también que $f$ es inyectiva, ya que si $f(a_{1})=f(a_{2})$ se tiene que $g(f(a_{1}))=g(f(a_{2}))$, como $g\circ f$ es la identidad (sobre $A$) se tiene que $a_{1}=a_{2}$. Esto se puede expresar como sigue.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-35"><strong>(\#lem:unnamed-chunk-35) </strong></span>La función $f:A\longrightarrow B$ es biyectiva si y solo si existe una función $g:B\longrightarrow A$ tal que $g\circ f$ y $f\circ g$ son la función identidad sobre $A$ y $B$ respectivamente.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-36"><strong>(\#def:unnamed-chunk-36) </strong></span>Sea $C$ un conjunto no vacío. $\mathcal{A}(C)$ es el conjunto de todas las funciones biyectivas de $C$ sobre sí mismo.
</div>\EndKnitrBlock{definition}

Respecto a este conjunto, si consideramos la operación *composición de funciones*, tenemos que $\mathcal{A}(C)$ es cerrado bajo esta operación, esto lo demostramos ya en el lema \@ref(lem=lema1-2). Además, como vimos antes, la composición de funciones es asociativa. Sabemos que la identidad y la función inversa son funciones biyectivas (pertenecen también al conjunto $\mathcal{A}(C)$). Es decir, tenemos un conjunto ($\mathcal{A}(C)$) con una operación (la composición de funciones) que tiene una estructura especial (la de grupo). Profundizaremos en esto en la siguiente sección.

## Cardinales

En esta sección demostraremos solo algunos resultados referidos a cardinalidad y números cardinales, solo aquellos que nos sean realmente útiles para el tema que nos ocupa en este trabajo. Quien desee ver las otras demostraciones y ahondar en este tema puede referirse a <añadir bibliografia...Kunen>.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-37"><strong>(\#def:unnamed-chunk-37) </strong></span>Dos conjuntos $A, B$ son equipotentes si existe una biyección $f:A \longrightarrow B$ y se denota por $A\sim B$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:teo1-2"><strong>(\#thm:teo1-2) </strong></span>La equipotencia es una relación de equivalencia.
</div>\EndKnitrBlock{theorem}
\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}La función identidad (de un conjunto en si mismo) es una biyección, por lo tanto la equipotencia es una relación reflexiva. Si $A\sim B$, existe una biyección $f:A\longrightarrow B$. Ya vimos antes que una función biyectiva es invertible y su inversa es $f^{-1}$ es una biyección de $B$ en $A$, lo que muestra que la simetría. Dadas dos biyecciones $f: A\longrightarrow B$ y $g:B\longrightarrow C$, la composición $g\circ f$ es una biyección de $A$ en $C$, por lo tanto la equipotencia es transitiva.
</div>\EndKnitrBlock{proof}

Podemos preguntarnos cuántos elementos tiene un conjunto. Una forma de "contar" los elementos que tiene un conjunto es la siguiente: Sean $A_{0}=\emptyset$ y para cada número natural $n$, sea $A_{n}=\{1,2,..., n\}$. Es fácil ver que $A_{n}=A_{m}$ si y solo si $n=m$ \@ref(exr:ejc1). De este modo, para ver que un conjunto $C$ tiene $n$ elementos basta ver que es equipotente con $A_{n}$, es decir $C\sim A_{n}$. Diremos que un conjunto es *finito* si es equipotente con algún $A_{n}$ para algún $n\in\mathbb{N}$. Si un conjunto no es finito diremos que es *infinito*. 

Lo anterior nos da una idea del concepto de cardinalidad, que formalmente se definiría como sigue.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-39"><strong>(\#def:unnamed-chunk-39) </strong></span>Dado un conjunto $C$, la clase de equivalencia definida por la relación de equipotencia se conoce como el *cardinal* (o *cardinalidad* o *número cardinal*) de $C$ y se denota por $|C|$.
</div>\EndKnitrBlock{definition}

En algunos libros pueden conseguirse otras definiciones de cardinalidad. Los números cardinales pueden ser definidos mas formalmente como un objeto matemático y son de gran importancia en teoría de conjuntos, teniendo ellos mismos una importancia intrínseca, Sin embargo, la definición que presentamos se adecua perfectamente a los temas que trabajaremos aquí.
De la definición anterior y el teorema \@ref(thm:teo1-2) podemos ver los cardinales tienen las siguientes propiedades:

1. Todo conjunto tiene un único número cardinal.
2. Dos conjuntos tienen el mismo número cardinal si y solo si son equipotentes.
3. El cardinal de un conjunto finito es la cantidad de elementos que lo conforman.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-40"><strong>(\#exm:unnamed-chunk-40) </strong></span>La cardinalidad de los conjuntos $A_{n}$ definidos antes es $n$ (la cantidad de elementos que tiene el conjunto).
La cardinalidad del conjunto de los números naturales es $\aleph_{0}$ (se lee alef cero) (también puede conseguirse en alguna literatura que $|\mathbb{N}|=\omega$ y así el primer cardinal infinito $\aleph_{0}$, es igual el ordinal omega). Cualquier conjunto de cardinalidad $\aleph_{0}$, se dice *numerable*. Si un conjunto no es numerable, diremos que es un conjunto *no numerable*.
El número cardinal del conjunto de los números enteros $\mathbb{Z}$ es $\aleph_{0}$, por lo tanto es un conjunto numerable, al igual que el conjunto de los números racionales $\mathbb{Q}$. Por otro lado, el conjunto de los números reales no es numerable.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-41"><strong>(\#def:unnamed-chunk-41) </strong></span>	Sean $\alpha$ y $\beta$ dos números cardinales. La *suma $\alpha +\beta$* está definida como el número cardinal del conjunto $A\cup B$, donde $\alpha=|A|$ y $\beta=|B|$ y $A$ y $B$ son disjuntos. El producto $\alpha\beta$ está definido como el número cardinal $|A\times B|$, con $\alpha=|A|$ y $\beta=|B|$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}	No es necesario que los conjuntos $A$ y $B$ sean disjuntos para la definición del producto $\alpha\beta$. Dados dos cardinales $\alpha$ y $\beta$, siempre se pueden hallar conjuntos disjuntos $A$ y $B$ tales que $\alpha=|A|$ y $\beta=|B|$. De la definición de cardinal y de los teoremas anteriores, se sigue que las definiciones de suma $\alpha +\beta$ y producto $\alpha\beta$ son independientes de la elección de los conjuntos $A$ y $B$.
</div>\EndKnitrBlock{remark}

Las operaciones de suma y productos de números cardinales son asociativas y commutativa, además se cumple la ley distributiva. Esto no lo demostraremos aquí porque escapa del alcance de este texto. De esto se tiene que la suma y el productos de cardinales finitos es coincidente con la suma y el producto de números naturales no negativos, por lo que existe el elemento identidad para la suma, no es más que el cardinal del conjunto vacío, $0=|\emptyset|$. Pero el producto de cardinales infinitos no coincide con el álgebra natural, por ejemplo el producto del cardinal $\aleph_{0}$ con él mismo, es $\aleph_{0}$. Así, si $A$ y $B$ son conjuntos numerables, $A\times B$ es un conjunto numerable. Para más detalle sobre este tema pueden referirse a HACER REFERENCIA AQUÍ- KUNEN Y DI PRISCO.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-43"><strong>(\#def:unnamed-chunk-43) </strong></span>	Sean $\alpha$ y $\beta$ números cardinales y sean $A$ y $B$ conjuntos tales que $\alpha=|A|$ y $\beta=|B|$. Decimos que \textit{$\alpha$ es menor o igual que $\beta$} y lo denotamos así $\alpha\leq\beta$, si y solo si $A$ es equipotente con un subconjunto de $B$ (es decir, existe una función inyectiva $f:A\longrightarrow B$). Decimos que *$\alpha$ es estrictamente menor que $\beta$* y lo denotamos así $\alpha<\beta$, si $\alpha\leq\beta$ y $\alpha\neq\beta$.
</div>\EndKnitrBlock{definition}
Es claro que la definición de $\leq$ no depende de la elección de los conjuntos $A$ y $B$.
 
 \BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-44"><strong>(\#thm:unnamed-chunk-44) </strong></span>	Sea $A$ un conjunto. Entonces $|A|\leq|\mathcal{P}(A)$.
 </div>\EndKnitrBlock{theorem}
 
 \BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}	 Sea $f:A\longrightarrow \mathcal{P}(A)$ la función $f(a)=\{a\}$. Dados $a,b\in A$, si $\{a\}\neq\{b\}$, por definición de igualdad de conjuntos, se tiene que $a\neq b$, por lo tanto $A\leq \mathcal{P}(A)$. Ahora veamos que $A\neq\mathcal{P}(A)$, note que el conjunto $B=\{a\in A: a\notin f(a) \}\subseteq A$ no pertenece al conjunto $Img(A)$, es decir, no existe $a\in A$ tal que $f(a)=B$. 
 </div>\EndKnitrBlock{proof}

Enunciaremos el conocido *Teorema de Schroeder-Bernstein* sin demostración. El lector interesado en estos temas puede remitirse a HACER REFERENCIA AQUí.

\BeginKnitrBlock{theorem}\iffalse{-91-84-101-111-114-101-109-97-32-100-101-32-83-99-104-114-111-101-100-101-114-45-66-101-114-110-115-116-101-105-110-93-}\fi{}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-46"><strong>(\#thm:unnamed-chunk-46)  \iffalse (Teorema de Schroeder-Bernstein) \fi{} </strong></span>Si $A$ y $B$ son conjuntos tales que $|A|\leq |B|$ y $|B|\leq |A|$. Entonces $|A|=|B|$.
</div>\EndKnitrBlock{theorem}
A continuación veremos resultados que nos permiten caracterizar los grupos cíclicos.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-47"><strong>(\#thm:unnamed-chunk-47) </strong></span>	Sea $H$ un subgrupo del grupo aditivo $\mathbb{Z}$. $H$ es cíclico, además $H=\langle 0\rangle$ o $H=\langle m\rangle$ donde $m$ es el menor entero positivo de $H$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $H\neq \langle 0\rangle$. Entonces existe $m\in H$ mínimo. Como $H$ es subgrupo, es fácil ver que $\langle m\rangle\subseteq H$. Ahora bien, para todo $h\in H$ se tiene que $h=km+r$ para algún entero $k$ y un entero no negativo $r<m$ (algoritmo de la división). De lo anterior se tiene que $r=h-km$ es un elemento de $H$. Como $m$ es el mínimo de $H$, se tiene que $r=0$ de donde se sigue que $h$ es un elemento de $\langle m\rangle$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}En el teorema anterior, si $H\neq \langle 0\rangle$, entonces es infinito.</div>\EndKnitrBlock{remark}

Note que si $G$ es un grupo cíclico, la función que aplica a cada entero $k$ en el elemento $a^{k}$, es un epimorfismo. Además, si el núcleo es $0$, se tiene que $G\cong \mathbb{Z}$; si no, el núcleo es un subgrupo no trivial de $\mathbb{Z}$, por el teorema anterior, será un grupo cíclico, es decir, de la forma $\langle m\rangle$, con $m$ el menor entero positivo tal que $a^{m}=e$. Por otro lado, como $a^{r}=a^{s}\Leftrightarrow a^{r-s}=e$, se tiene que $r-s$ pertenece al núcleo, por lo que $r-s=km$ para algún entero $k$, de donde se tiene que $[r]=[s]\in\mathbb{Z}_{m}$. Por lo que la función que asigna a cada clase de equivalencia $[k]$ de $\mathbb{Z}_{m}$ al elemento $a^{k}$ está bien definida y es un isomorfismo. Esto es lo podemos escribir como el siguiente:

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-50"><strong>(\#thm:unnamed-chunk-50) </strong></span>Todo grupo cíclico infinito es isomorfo al grupo aditivo $\mathbb{Z}$ y todo grupo cíclico finito de orden $m$ es isomorfo al grupo aditivo $\mathbb{Z}_{m}$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $G=\langle a\rangle$. Sea $f:\mathbb{Z}\longrightarrow G$ la función definida por $f(k)=a^{k}$. Para cada $b\in G$, existe $r\in\mathbb{Z}$ tal que $b=a^{r}$ por lo tanto $f(r)=a^{r}=b$, esto muestra que $f$ es sobreyectiva. Se tiene que $Ker f=\{0\}$, en caso contrario se tiene que $Ker f=\langle m\rangle$, luego $G$ sería finito.

Si $G$ es un grupo finito, $Ker f=\langle m\rangle$. Sea $g:\mathbb{Z}_{m}\longrightarrow G$ como $g([k])=a^{k}$ está bien definida ya que para todo $r,s\in\mathbb{Z}$, $a^{r}=a^{s}\Leftrightarrow a^{r-s}=e\Leftrightarrow r-s\in Ker f=\langle m\rangle$ por lo tanto $r-s=km$ para algún entero $k$ y así $[r]=[s]$. Es claro que es un epimorfismo, además, como $g([k])=e\Leftrightarrow a^{k}=e=a^{0}\Leftrightarrow [k]=[0]$, entonces $Ker g=\{[0]\}$, por lo tanto $g$ es un isomorfismo. 
</div>\EndKnitrBlock{proof}


### Ejercicios

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:ejc1"><strong>(\#exr:ejc1) </strong></span>Dados los conjuntos $A_{0}=\emptyset$ y para cada número natural $n$, sea $A_{n}=\{1,2,..., n\}$. Demuestre que $A_{n}=A_{m}$ si y solo si $n=m$.

Supongamos que $A_{n}=A_{m}$, entonces es fácil ver que $n=M$ (en caso contrario se tendría que $n<m$ o $n>m$). Recíprocamente, si $n=m$, por definición es claro que $A_{n}\subseteq A_{m}$ y $A_{m}\subseteq A_{n}$.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:ejc2"><strong>(\#exr:ejc2) </strong></span>Denuestre que los conjuntos $\mathbb{Z}$, $\mathbb{Q}$ son conjuntos numerables.

Basta probar que $\mathbb{Z}\sim \mathbb{N}$ y $\mathbb{Q}\sim \mathbb{N}$. Para esto debemos hallar biyecciones entre los conjuntos. Sea $f:\mathbb{Z}\longrightarrow \mathbb{N}$ definida así: 
$$f(n) = \left\{
	\begin{array}{ll}
	-2n-1      & \mbox{ si } n<0\\
	2n      & \mbox{ si } n>=0
	\end{array}
\right.$$
    
Es fácil ver que $f$ es una biyección, ya que $f$ asigna cada número entero negativo a los números naturales impares (1, 3, 5, ...) y cada número entero positivo a los números naturales pares (0, 2, 4, ...).
  
Por otro lado, la función $g:\mathbb{Z}\times\mathbb{N} \longrightarrow \mathbb{Q}$ definida por $f(a,n)=\frac{a}{n}$ es sobreyectiva. Se puede hallar una función inyectiva $\hat{g}$ de $\mathbb{Z}\times\mathbb{N}$ en $\mathbb{Q}$. Por lo tanto $|\mathbb{Q}|\leq |\mathbb{Z}\times\mathbb{N}|$. Como $\mathbb{Z}\times\mathbb{N}$ es numerable, se tiene que $\mathbb{Q}$ es numerable.
    </div>\EndKnitrBlock{exercise}

## Teoría de Grupos

En esta sección estudiaremos un objeto matemático de gran importancia, los grupos. En la sección anterior vimos un grupo que surgió de manera natural, $\mathcal{C}$ junto a la operación composición de funciones, pero el grupo más familiar es el de los números enteros (con la operación suma), con el que nos topamos desde la infancia; en ambos ejemplos vemos que la operación es asociativa, tiene un elemento neutro (la función identidad en el primer caso y el número cero en el caso de los números naturales) y un elemento inverso (la función inversa en un caso y el opuesto en el caso de los naturales).

A continuación presentaremos la definición formal de grupo así como un amplio repertorio de resultados bien conocidos en álgebra respecto a este objeto.

Dado un conjunto no vacío $G$, una *operación binaria* es una función $G\times G\longrightarrow G$. Comunmente se usan las notaciones $a\ast b$ o  $a\cdot b$ para denotar la imagen de $(a,b)$ por la función, aunque puede también usarse $ab$ (obviando el punto como se hace para expresar el producto de dos números) o incluso $a+b$ cuando la operación es la suma usual (como sucede con los números enteros).

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-52"><strong>(\#def:unnamed-chunk-52) </strong></span>Un par $(G,\ast)$, donde $G$ es un conjunto no vacío y una operacón binaria $\ast:G\times G\longrightarrow G$, forman un *grupo* si:
  
1. Para todo $a,b,c\in G$, $(a\ast b)\ast c=a\ast (b\ast c)$. Es decir, la operación es *asociativa*.
		
2. Existe un elemento $e\in G$ tal que $a\ast e=e\ast a=a$. Llamaremos a tal elemento *neutro (o identidad) bilateral* de $G$.
		
3. Para todo $a\in G$, existe un elemento $a^{-1}\in G$ tal que $a^{-1}\ast a=a\ast a^{-1}=e$, llamado *inverso* de $a$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Puede hacerse referencia al grupo nombrando solo el conjunto $G$ cuando quede claro cual es la operación.
Si una operacón binaria $\ast:G\times G\longrightarrow G$ es asociativa (1), se dice que $(G,\ast)$ es un *semigrupo*. Llamaremos *monoide* a un semigrupo con identidad (2). De este modo, se puede decir que un grupo es un monoide con inverso (bilateral).
</div>\EndKnitrBlock{remark}

Un semigrupo $G$ se llamará *abeliano* o *commutativo* si la operación es

4. Commutativa, es decir, $a*b=b*a$, para todo $a, b\in G$.
   
El *orden* de un grupo $G$ es la cantidad de elementos que tiene el grupo, es decir, la cardinalidad de $G$ ($|G|$). También se denota $o(G)$ Decimos que un grupo es de *orden finito* (o simplemente finito) si $|G|$ es finito. En caso contrario decimos que el grupo es *infinito*.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-54"><strong>(\#exm:unnamed-chunk-54) </strong></span>El conjunto de los números enteros con el producto usual es un monoide ya que el producto es una operación asociativa y el número uno (1) es el elemento identidad. Como ya lo hemos mencionado, el conjunto de los números enteros, $\mathbb{Z}$ con la operación suma (la suma usual de enteros), forman un grupo. El lector podrá verificar fácilmente que la operación suma es cerrada, es asociativa, que el cero es el elemento neutro ($e$ en la definición) y que cada elemento tiene un inverso ($a^{-1}=-a$). Además es claro que se trata de un grupo abeliano (la suma es una operación commutativa). A un grupo cuya operación es la suma, como en este ejemplo, lo llamaremos *grupo aditivo*, si es el producto, lo denominaremos *grupo multiplicativo*.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-55"><strong>(\#exm:unnamed-chunk-55) </strong></span>Dado el conjunto $G={1,-1}$. Definimos la operación $\ast:G\times G \longrightarrow G$ como el producto de números reales usual. El par $(G,\ast)$ forman un grupo abeliano de orden $2$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-56"><strong>(\#exm:unnamed-chunk-56) </strong></span>El conjunto de los números racionales $\mathbb{Q}$ con la suma usual, es un grupo abeliano.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-57"><strong>(\#exm:unnamed-chunk-57) </strong></span>Consideremos un cuadrado cuyos vértices estan numerados consecutivamente $1,2,3,4$ centrado en el origen del palno cartesiano y de lados paralelos a los ejes coordenados.

Sea $C_{4}$ el conjunto formado por las siguientes transformaciones: $R$, una rotación de $90º$ del cuadrado. $R^{2}$ una rotación de $180º$ del cuadrados. $R^{3}$ una rotación de $270º$ del cuadrado (todas en el sentido de las agujas del reloj, centradas en el origen). $I$, una rotación de $360º$ (igual que antes en sentido horario, centrada en el origen). $T_{x}$ y $T_{y}$, reflexiones sobre los ejes $x$ y $y$ respectivamente y $T_{I}$ y $T_{II}$ reflexiones sobre las diagonales que pasan por los vértices que están en el primer y tercer cuadrante (la primera) y en el segundo y cuarto cuadrante (la segunda). Con la operación *composición de funciones*, el conjunto $C_{4} = {R, R^{2}, R^{3}, I, T_{x}, T_{y}, T_{I}, T_{II}}$ es un grupo no abeliano de orden $8$ llamado el *grupo de simetría del cuadrado*.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-58"><strong>(\#exm:unnamed-chunk-58) </strong></span>Sea $C$ un conjunto no vacío y $\mathcal{A}(C)$ el conjunto de todas las biyecciones de $C$ en si mismo. Con la operación composición de funciones vista en la sección anterior, $\mathcal{A}(C)$ forma un grupo (no abeliano). En efecto, la composición de funciones biyectivas es asociativa, la identidad es una función biyectiva y toda biyección tiene una inversa. Los elementos de $\mathcal{A}(C)$ son llamados *permutaciones* y $\mathcal{A}(C)$ es llamado el grupo de permutaciones sobre $C$. Si $C=\{1,2, ..., n\}$, entonces $\mathcal{A}(C)$ es llamdo el *grupo simétrico sobre $n$ letras* y se denota $S_{n}$. Se puede ver que $|S_{n}|=n!$ (ejercicio \@ref(exr:ejc3)).
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Dado un elemento $f\in S_{n}$, podemos representarlo por 

$$\left(  {\begin{array}{ccccc}
	1 & 2 & 3 & \cdots & n \\
	i_{1} & i_{2} & i_{3} & \cdots & i_{n}\\
	\end{array} } \right) $$
  
Y el producto de dos de estos elementos, $f, g\in\mathcal{C}$ es la composición de dos biyecciones $f\circ g$, y puede representarse por un arreglo como el anterior tomando en cuenta que $(f\circ g)(k)=f(g(k))=f(i_{k})$. Si suponemos que $f,g\in S_{5}$, donde $f$ está representado por 

$$\left(  {\begin{array}{ccccc}
	1 & 2 & 3 & 4 & 5 \\
	3 & 4 & 1 & 2 & 5 \\
	\end{array} } \right)$$
  
Y $g$ es la biyección

$$\left(  {\begin{array}{ccccc}
	1 & 2 & 3 & 4 & 5 \\
	5 & 4 & 3 & 2 & 1 \\
	\end{array} } \right)$$
  
Entonces  $f\circ g$ es  tal que $(f\circ g)(1)=f(g(1))=f(5)=5$, análogamente con los números del $2$ al $5$, por lo tanto, $f\circ g$ es 

$$\left(  {\begin{array}{ccccc}
	1 & 2 & 3 & 4 & 5 \\
	5 & 2 & 1 & 4 & 3 \\
	\end{array} } \right)$$
  
Mientras que $g\circ f$ es 

$$\left(  {\begin{array}{ccccc}
	1 & 2 & 3 & 4 & 5 \\
	3 & 2 & 5 & 4 & 1 \\
	\end{array} } \right)$$
  
Lo que evidencia que $S_{n}$ no es necesariamente un grupo abeliano.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:ejm1-21"><strong>(\#exm:ejm1-21) </strong></span>Dados $G$ y $H$ dos grupos con identidades $e_{G}$ y $e_{H}$ respectivamente. Consideremos el producto cartesiano $G\times H$ y la operación binaria $(a,b)\ast (c,d)=(a\ast c,b\ast d)$ donde $a\ast c\in G$ y $b\ast d\in H$. Con esta operación $G\times H$ es un grupo con identidad $(e_{G}, e_{H})$ y con inverso $(a^{-1}, b^{-1})$ para cada elemento $(a,b)\in G\times H$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-60"><strong>(\#def:unnamed-chunk-60) </strong></span>Una relación de equivalencia sobre un monoide $G$ que satisface que si $a_{1}\sim a_{2}$ y $b_{1}\sim b_{2}$, entonces $a_{1}b_{1}\sim a_{2}b_{2}$ para todo $a_{1},a_{2},b_{1},b_{2}\in G$, se llama *relación de congruencia*.</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-61"><strong>(\#thm:unnamed-chunk-61) </strong></span>Si $\sim$ es una relación de congruencia sobre un monoide $G$, entonces el conjunto $G/\sim$ de todas las clases equivalencia de $(G,\sim)$ es un monoide con la operación binaria definida por $[a][b]=[ab]$. Si $G$ es un grupo abeliano, entoces $(G,\sim)$ lo és.</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Como $\sim$ es una relación de equivalencia, se tiene que:
  
(1) Si $[a_{1}]=[a_{2}]$ y $[b_{1}]=[b_{2}]$, $a_{1}\sim a_{2}$ y $b_{1}\sim b_{2}$, entonces $a_{1}b_{1}\sim a_{2}b_{2}$, es decir, $[a_{1}b_{1}]= [a_{2}b_{2}]$. Entonces la operación está bien definida. $G/\sim$ tiene un elemento neutro, para todo $a\in G$ se tiene que $[a][e]=[ae]=[a]=[ea]=[e][a]$, donde $e\in G$ es el elemento neutro del monoide. La operación es asociativa, en efecto, $[a]([b][c])=[a][bc]=[a(bc)]=[(ab)c]=[ab][c]=([a][b])[c]$. De aquí concluímos que $G/\sim$ es un monoide.
Supongamos que $G$ es un grupo abeliano, entonces cada $a\in G$ tiene un elemento inverso  $a^{-1}\in G$. De este modo, para cada $[a]\in G/\sim$, se tiene que $[a^{-1}]\in G/\sim$ es el inverso de $[a]$ ya que $[a][a^{-1}]=[aa^{-1}]=[e]=[a^{-1}][a]=[a^{-1}][a]$. Así $G/\sim$ es un grupo. Se ve fácilmente que si $G$ es abeliano, entonces $G/\sim$ lo és, ya que $[a][b]=[ab]=[ba]=[b][a]$. 
</div>\EndKnitrBlock{proof}

Este teorema dota de otros ejemplos, tanto de monoides como de grupos:

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-63"><strong>(\#exm:unnamed-chunk-63) </strong></span>Para un entero fijo, la relación de congruencia modular es una relación de congruencia sobre el grupo aditivo $\mathbb{Z}$. Como $(\mathbb{Z}, +)$ es un grupo abeliano, se tiene que $\mathbb{Z}_{n}$ es un grupo aditivo abeliano, con la operación natural $[a]+[b]=[a+b]$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-64"><strong>(\#exm:unnamed-chunk-64) </strong></span>$(Z,\ast)$ es un monoide sobre $\mathbb{Z}$ con la multiplicación usual de enteros. por lo tanto $\mathbb{Z}_{n}$ es un monoide, con la operación $[a]\ast[b]=[a\ast b]$.
</div>\EndKnitrBlock{example}

Veremos algunos resultados muy técnicos que nos serán útiles mas adelante.

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-65"><strong>(\#lem:unnamed-chunk-65) </strong></span>Sea $G$ un grupo, entonces se tiene que:
  
1. el elemento identidad de $G$ es único;

2. para cada $a\in G$, el inverso $a^{-1}$ es único;

3. para todo $a\in G$, se tiene que $(a^{-1})^{-1}=a$;
  
4. para $a,b\in G$, se tiene que $(a*b)^{-1}=b^{-1}*a^{-1}$.
  </div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}
1. Supongamos que $e, f\in G$ son tales que, $\forall a\in G$, $a*e=e*a=a$ y $a*f=f*a=a$. En particular, $f*e=f$ y $f*e=e$, de donde se sigue que $e=f$.

2. Sea $a\in G$, veamos que si $a*x=a*y$, entonces $x=y$; en efecto, sea $b$ un inverso de $a$, es decir, $a*b=b*a=e$. De la igualdad $a*x=a*y$ se tiene que $b*(a*x)=b*(a*y)$ y así $(b*a)*x=(b*a)*y$, por lo tanto $x=y$. De este modo, si dos elemento $b,c\in G$ son dos inversos de $a$ se tiene que $a*b=e=a*c$ y de lo anterior se sigue que $b=c$.

3. Sabemos que $a^{-1}*(a^{-1})^{-1}=e=a^{-1}*a$, por lo que demostramos en la parte b), se sigue fácilmente que $(a^{-1})^{-1}=a$.

4. De la asociatividad se tiene la igualdad $(a*b)*(b^{-1}*a^{-1})=(a*(b*b^{-1})*a^{-1})=a*e*a^{-1}=e$. Y por la unicidad del elemento inverso (demostrada justo antes) se sigue que $(a*b)^{-1}$ es igual a $b^{-1}*a^{-1}$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-67"><strong>(\#def:unnamed-chunk-67) </strong></span>Un subconjunto $H$ de un grupo $G$, se llama *subgrupo* de $G$ si respecto a la operación definida sobre $G$, él mismo forma un grupo. Esto se denota por $H< G$.
</div>\EndKnitrBlock{definition}

Suponga que $G$ es un grupo y $H\subseteq G$ es un subconjunto cerrado bajo la operación de grupo definida sobre G, es decir, para todo $a,b\in H$ se tiene que $ab\in H$. Y cada elemento de $H$ tiene su inverso también en $H$, esto es, si $a\in H$, entonces $a^{-1}\in H$. Es claro que $H$ será un semigrupo de $G$.
 Esto lo mostramos en el siguiente resultado:

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-68"><strong>(\#lem:unnamed-chunk-68) </strong></span>Un subconjunto no vacío $H$ de un grupo $G$, es un subgrupo si y solo si:
  
1. para cada $a,b\in H$, $ab\in H$.

2. para cada $a\in H$, $a^{-1}\in H$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Es claro que si $H\subseteq G$ es un subgrupo de $G$, cumple 1 y 2.
Recíprocamente, supongamos que $H\subseteq G$, cumple con (1) y (2) Faltaría ver que la operación es asociativa en $H$ y que el elemento neutro está en $H$. La ley asociativa se hereda de $G$ (si la operación es asociativa en $G$, de igual forma lo será en $H$). Como para cada elemento de $H$ tiene un inverso, existen $a, a^{-1}\in H$; además se tiene que la operación es cerrada en $H$, luego $e=aa^{-1}\in H$. Por lo tanto se tiene que $H$ es un grupo (con la operación heredada de $G$). 
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-70"><strong>(\#lem:unnamed-chunk-70) </strong></span>Si $H$ es un subconjunto finito no vacío de un grupo $G$ y $H$ es cerrado bajo la operación de grupo, entonces $H$ es un subgrupo de $G$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Note que, dado $a\in H$, $a, a^{2}, a^{3},\cdots , c^{n},\cdots \in H$. Pero $H$ es finito, por lo tanto existen enteros positivos $r>s>0$ tales que $a^{r}=a^{s}$, entonces se tiene que $a^{r}a^{-s}=a^{s}a^{-s}$ de donde se sigue a $a^{r-s}=e$, lo que muestra que $e\in H$. Por otro lado, $a^{r-s-1}$ está en la lista de elementos de $H$, por lo tanto, dado $a\in H$ se tiene que $a^{-1}=ea^{-1}=a^{r-s-1}\in H$ ya que $aa^{-1}=aa^{r-s-1}=a^{r-s}=e=a^{r-s}=a^{r-s-1}a=a^{-1}a$. Por el lema anterior, se tiene que $H$ es un subgrupo de $G$.
</div>\EndKnitrBlock{proof}

Este lema nos permite saber si un subconjunto finito de un grupo es un subgrupo tan solo probando que la operación de grupo es cerrada en el subconjunto finito. 

Veamos a continuación algunos ejemplos de subgrupos.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-72"><strong>(\#exm:unnamed-chunk-72) </strong></span>Dado un grupo $G$. El mismo $G$ es un subgrupo. El conjunto cuyo único elemento es la identidad del grupo, $\{e\}$ es un subgrupo. Estos dos se conocen con el nombre de *subgrupos triviales* del grupo $G$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-73"><strong>(\#exm:unnamed-chunk-73) </strong></span>Consideremos el grupo aditico de los números enteros. Sea $n\in\mathbb{N}$ un entero positivo. El conjunto $H_{n}$ formado por los múltiplos de $n$ es un subgrupo. Es fácil ver que si sumamos dos múltiplos de $n$, es resultado es un múltiplo de $n$, $kn+qn=(k+q)n$. Además $k\ kn$ y $-kn$ están en $H$ y $kn+(-kn)=0=-kn+kn$.

Es interesante pensar en el conjunto intersección de dos de estos subgrupos, es decir, $H_{n}\cap H_{m}$. 
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-74"><strong>(\#exm:unnamed-chunk-74) </strong></span>Sea $G$ un grupo cualquiera, sea $a\in G$ un elemento cualquiera. El conjunto $\rangle a\langle =\{a^{n}|n\in\mathbb{Z} \}$ es un subgrupo de $G$ llamado el \textit{grupo cíclico generado por $a$}. Efectivamente, claramente la operación es cerrada, para cuales quiera $a^{n}, a^{m}\in (a)$, $a^{n}a^{m}=a^{n+m}\in (a)$. por definición de $(a)$, $a^{n}$ y $a^{-n}$ están en $(a)$. Si para algún $a\in G$, $G=(a)$, entonces decimos que $G$ es un grupo cíclico. El orden de un elemento $a\in G$ es el orden del grupo generado por $a$, es decir el orden de $|\rangle a\langle|$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-75"><strong>(\#thm:unnamed-chunk-75) </strong></span>Sea $G$ un grupo y sea $\{H_{i}|i\in I \}$ una familia no vacía de subgrupos de $G$, entonces $\bigcap_{i\in I} H_{i}$ es un subgrupo de $G$.
</div>\EndKnitrBlock{theorem}

La demostración queda como ejercicio.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-76"><strong>(\#def:unnamed-chunk-76) </strong></span>Sea $G$ un grupo y sea $X$ un subconjunto de $G$. Sea $I$ una familia de índices, entonces $\bigcap_{i\in I} \{H_{i}|X\subseteq H_{i}< G \}$ es el ***subgrupo generado por $X$** y se denota por $\langle X \rangle$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Es importante hacer notar que el subgrupo $\langle X\rangle$ puede ser generado por otro conjunto de elementos de $G$, es decir, puede ocurrir que $\angle X\rangle=\langle Y\rangle$, con $X\neq Y$. Si en conjunto $X$ es un conjunto finito, en lugar de $\langle X\rangle$ escribimos $\langle x_{1},x_{2},\cdots , x_{n}\rangle$, donde $X=\{x_{1}, x_{2},\cdots ,x_{n}\}$.

Si un grupo es generado por un conjunto finito de elementos, es decir, $G=\langle a_{1}, a_{2},\cdots ,a_{n}\rangle$, donde $a_{i}\in G$ decimos que $G$ es un grupo *finitamente generado*.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-78"><strong>(\#thm:unnamed-chunk-78) </strong></span>Si $G$ es un grupo y $X$ un subconjunto no vacío de $G$, entonces el subgrupo $\langle X\rangle$ generado por $X$ está contituído por los productos de la forma $a_{1}^{m_{1}}a_{2}^{m_{2}}\cdots a_{n}^{m_{n}}$ donde $a_{i}\in X$, $m_{i}\in\mathbb{Z}$ y $n$ es un número entero positivo cualquiera. En particular $\langle a\rangle=\{a^{n}|n\in\mathbb{Z} \}$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Veamos que $H=\{a_{1}^{m_{1}}a_{2}^{m_{2}}\cdots a_{n}^{m_{n}} | n\in\mathbb{N}, a_{i}\in X$ \mbox{ y } $m_{i}\in\mathbb{Z}\}$ es un subgrupo de $G$ que contiene a $X$. En efecto, claramente $X\subseteq H$. Además, si $a\in X$, $a^{-1}\in H$ por lo tanto para $b,c\in H$, por definición de $H$ se tiene que  $b=a_{1}^{m_{1}}a_{2}^{m_{2}}\cdots a_{n}^{m_{n}}$ y $c=a_{1}^{r_{1}}a_{2}^{r_{2}}\cdots a_{k}^{r_{k}}$ por lo tanto $b^{-1}=a_{n}^{-m_{n}}\cdots  a_{2}^{m_{2}}a_{1}^{m_{1}} \in H$ y $bc=a_{1}^{m_{1}}a_{2}^{m_{2}}\cdots a_{n}^{m_{n}}a_{1}^{r_{1}}a_{2}^{r_{2}}\cdots a_{k}^{r_{k}}In H$. De donde se concluye que $H$ es un subgrupo que contine a $G$.

Ahora note que $H$ está contenido en todo subgrupo que contenga a $X$. Por lo tanto $H=\bigcap_{i\in I} \{H_{i}|X\subseteq H_{i}< G \}$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-80"><strong>(\#def:unnamed-chunk-80) </strong></span>Sean $G$ y $H$ dos semigrupos. Una función $f:G\longrightarrow H$ es un *homomorfismo* si y solo si $f(ab)=f(a)f(b)$ para todo $a,b\in G$.

Si $f$ es inyectiva, decimos que $f$ es un *monomorfismo*. Si $f$ es sobreyectiva, diremos que $f$ es un *epimorfismo*. Cuando $f$ es una función biectiva diremos que $f$ es un *isomorfismo* y esto lo denotaremos por $G\cong H$.
	</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Un homomorfimos de $G$ en si mismo es llamado *endomorfismo de $G$*. Y un isomorfismo de $G$ en si mismo se conoce como *automorfismo de $G$*. 

Como todo grupo es un semigrupo, la definición de homomorfismo de grupo aplica perfectamente a grupos, al igual que el resto de las definiciones.
</div>\EndKnitrBlock{remark}

Note que dados dos homomorfismos de semigrupos $f:G\longrightarrow H$ y $g:H\longrightarrow K$, la composición $g\circ f:G\longrightarrow K$ es un homomorfismo de semigrupo. Por lo tanto se tiene que la composición de monomorfismos, es un monomorfismo, análogamente para epimorfismos e isomorfismos. Si $f:G\longrightarrow H$ es un homomorfismo de grupos y $e_{G}$ y $e_{H}$ son los elementos identidad de los grupos $G$ y $H$ respectivamente, entonces se tiene que $f(e_{G})=e_{H}$, por lo tanto $f(a^{-1})=f(a)^{-1}$. No obstante, si $G$ y $H$ son monoides, esto no es cierto.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-82"><strong>(\#def:unnamed-chunk-82) </strong></span>Dado $f:G\longrightarrow H$ un homomorfismo de grupo. El *núcleo* de $f$ (también conocido por su nombre en inglés *kernel*) es el conjunto $\{a\in G| f(a)=e_{H} \}$ y se denota $Ker f$. Dado $A\subseteq G$, *la imagen de $A$* es el conjunto $\{f(a)| a\in A \}$ y se denota por $f(A)$; al conjunto imagen de $G$, lo llamaremos *imagen de $f$* y le daremos una notación especial, $Im f$. Dado un conjunto $B\in H$, la imagen inversa de $B$ es el conjunto $f^{-1}(B)=\{a\in G|f(a)\in B \}$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:1homomorfismo"><strong>(\#thm:1homomorfismo) </strong></span>Sea $f:G\longrightarrow H$ un homomorfismo de grupos. Entonces:

1. $f$ es un monomorfismo si y solo si $Ker f=\{e_{G}\}$.

2. $f$ es un isomorfismo si y solo si existe un homomorfismo $g:H\longrightarrow G$ tal que $f^{-1}\circ f=\mathbb{I}_{G}$ y $f\circ f^{-1}=\mathbb{I}_{H}$.
	</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}	
1. Supongamos que $f$ es un monomorfismo. Sea $a\in Ker f$, entonces $f(a)=e_{H}$. Como $f(e_{g})=e_{H}$ y $f$ es inyectiva, se tiene que $a=e_{G}$. Ahora supongamos que $Ker f=\{e_{G} \}$ y sean $a, b\in G$ tales que $f(a)=f(b)$. Entonces $=f(ab^{-1})f(a)f(b^{-1})=f(a)f(b)^{-1}=f(b)f(b)^{-1}=e_{H}$, por lo tanto $ab^{-1}=e_{G}$ de donde se sigue que $a=b$ y así $f$ es un monomorfismo.

2. Ya vimos en la sección de funciones que existe la función inversa y que ella es biyectiva, además en \@ref{lema1.48} vimos que $f^{-1}\circ f=\mathbb{I}_{G}$ y $f\circ f^{-1}=\mathbb{I}_{H}$. El recíproco se tiene del lema siguiente \ref{lema1.49}.
</div>\EndKnitrBlock{proof}

A continuación veremos resultados que nos permiten caracterizar los grupos cíclicos.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-84"><strong>(\#thm:unnamed-chunk-84) </strong></span>Sea $H$ un subgrupo del grupo aditivo $\mathbb{Z}$. $H$ es cíclico, además $H=\langle 0\rangle$ o $H=\langle m\rangle$ donde $m$ es el menor entero positivo de $H$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $H\neq \langle 0\rangle$. Entonces existe $m\in H$ mínimo. Como $H$ es subgrupo, es fácil ver que $\langle m\rangle\subseteq H$. Ahora bien, para todo $h\in H$ se tiene que $h=km+r$ para algúno entero $k$ y un entero no negativo $r<m$ (algoritmo de la división). De lo anterior se tiene que $r=h-km$ es un elemento de $H$. Como $m$ es el mínimo de $H$, se tiene que $r=0$ de donde se sigue que $h$ es un elemento de $\langle m\rangle$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}En el teorema anterior, si $H\neq \langle 0\rangle$, entonces es infinito.
</div>\EndKnitrBlock{remark}

Note que si $G$ es un grupo cíclico, la función que aplica a cada entero $k$ en el elemento $a^{k}$, es un epimorfismo. Además, si el núcleo es $0$, se tiene que $G\cong \mathbb{Z}$; si no, el núcleo es un subgrupo no trivial de $\mathbb{Z}$, por el teorema anterior, será un grupo cíclico, es decir, de la forma $\langle m\rangle$, con $m$ el menor entero positivo tal que $a^{m}=e$. Por otro lado, como $a^{r}=a^{s}\Leftrightarrow a^{r-s}=e$, se tiene que $r-s$ pertenece al núcleo, por lo que $r-s=km$ para algún entero $k$, de donde se tiene que $[r]=[s]\in\mathbb{Z}_{m}$. Por lo que la función que asigna a cada clase de equivalencia $[k]$ de $\mathbb{Z}_{m}$ al elemento $a^{k}$ está bien definida y es un isomorfismo. Esto es lo podemos escribir como el siguiente:

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:teo1-86"><strong>(\#thm:teo1-86) </strong></span>Todo grupo cíclico infinito es isomorfo al grupo aditivo $\mathbb{Z}$ y todo grupo cíclico finito de orden $m$ es isomorfo al grupo aditivo $\mathbb{Z}_{m}$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $G=\langle a\rangle$. Sea $f:\mathbb{Z}\longrightarrow G$ la función definida por $f(k)=a^{k}$. Para cada $b\in G$, existe $r\in\mathbb{Z}$ tal que $b=a^{r}$ por lo tanto $f(r)=a^{r}=b$, esto muestra que $f$ es sobreyectiva. Se tiene que $Ker f=\{0\}$, en caso contrario se tiene que $Ker f=\langle m\rangle$, luego $G$ sería finito.

Si $G$ es un grupo finito, $Ker f=\langle m\rangle$. Sea $g:\mathbb{Z}_{m}\longrightarrow G$ como $g([k])=a^{k}$ está bien definida ya que para todo $r,s\in\mathbb{Z}$, $a^{r}=a^{s}\Leftrightarrow a^{r-s}=e\Leftrightarrow r-s\in Ker f=\langle m\rangle$ por lo tanto $r-s=km$ para algún entero $k$ y así $[r]=[s]$. Es claro que es un epimorfismo, además, como $g([k])=e\Leftrightarrow a^{k}=e=a^{0}\Leftrightarrow [k]=[0]$, entonces $Ker g=\{[0]\}$, por lo tanto $g$ es un isomorfismo. 
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-88"><strong>(\#thm:unnamed-chunk-88) </strong></span>Sea $G$ un grupo cíclico. Si $f:G\longrightarrow H$ es un homomorfismo de grupo, entonces $Im f$ es cíclico.</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Supongamos que $G$ es un grupo cíclico, entonces $G=\langle a\rangle$ para algún $a\in G$. Se tiene entonces que $Im f=\langle f(a) \rangle$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Note que si $k$ es un subgrupo del grupo cíclico $G=\langle a \rangle$, y sea $m$ el menor entero positivo tal que $a^{m}\in H$. Entonces $H=\langle a^{m} \rangle$.
</div>\EndKnitrBlock{remark}

Note que un grupo cíclico puede ser generado por dos elementos distintos.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-91"><strong>(\#thm:unnamed-chunk-91) </strong></span>Sea $G=\langle a\rangle$ un grupo cíclico. Si $G$ es infinito entonces $a$ y $a^{-1}$ son los únicos generadores de $G$. Si $G$ es finito de orden $m$, entonces $a^{k}$ es un generador de $G$ si y solo si el mínimo común múltiplo $(m,k)=1$.
</div>\EndKnitrBlock{theorem}
	
\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Si $G$ es infinito, en virtud del teorema \@ref{thm:teo1.86} podemos suponer que $G$ es el grupo aditivo $\mathbb{Z}$ y en este caso es muy fácil ver que es generado solo por $1$ y $-1$. Si $G$ es finito de orden $m$, podemos suponer que $\mathbb{Z}_{m}$. Así, si $(m,k)=1$, entonces $xk+ym=1$ para enteros $x,y$. Por lo tanto se tiene que para todo $bm\in G$ se tiene que $bm\in [k]$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-93"><strong>(\#def:unnamed-chunk-93) </strong></span>Sea $H$ un subgrupo de un grupo $G$ y sean $a,bIn G$. Decimos que *$a$ es congruente por la derecha con $b$ módulo $H$*, si y solo $ab^{-1}\in H$ y se denota $a\cong_{r} b mod H$. Decimos que *$a$ es congruente por la izquierda con $b$ módulo $H$*, si y solo $a^{-1}b\in H$ y se denota $a\cong_{l} b mod H$. 
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Note que si un grupo $G$ es abeliano y $H$ es un subgrupo, como $ab^{-1}\in H\Leftrightarrow (ab^{-1})^{-1}\in H \Leftrightarrow ba^{-1}\in H\Leftrightarrow a^{-1}b\in H$, entonces la congruencia derecha e izquierda módulo $H$ coinciden. Ahora bien, aunque existen grupos $G$ y subgrupos $H$ no abelianos en los que pueden coincidir la congruencia derecha e izquierda, módulo $H$, esto no es verdad en general.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-95"><strong>(\#thm:unnamed-chunk-95) </strong></span>Sea $H$ un subgrupo de un grupo $G$.

1. La congruencia por la derecha (respectivamente, por la izquierda) módulo $H$ es una relación de equivalencia sobre $G$.

2. Las clases de equivalencia de $a\in G$ bajo la congruencia por la derecha (respectivamente por la izquierda) módulo $H$ es el conjunto $Ha=\{ha : h\in H \}$ (respectivamente $aH=\{ah :h\in H \}$). A los conjuntos del tipo $Ha$ y $aH$ se les llama *clase lateral derecha módulo $H$* y  *clase lateral izquierda módulo $H$*. En general, una clase lateral derecha no es una clase lateral izquierda.

3. $|Ha|=|H|=|aH|$, para todo $a\in G$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sean $a,b,c\in G$.
	
1. Claramente $a\cong_{r} a mod H$, ya que $aa^{-1}=e\in H$, de donde se tiene que la relación es reflexiva. Como $ba^{-1}=(ab^{-1})^{-1}$, se tiene que la relación es reflexiva. Supongamos que $a\cong_{r} b mod H$ y que $b\cong_{r} c mod H$, esto es $ab^{-1}\in H$ y $bc^{-1}\in H$, por lo tanto $ac^{-1}=a(b^{-1}b)c^{-1}=(ab^{-1})(bc^{-1})\in H$, se tiene que $a\cong_{r} c mod H$, por lo que la relación es transitiva.

2. La clase de equivalencia de $a$ es el conjunto $[a]=\{b\in G : b\cong a mod H \}=\{b\in G: ba^{-1}\in H \}=\{b\in G: b=ha \mbox{ para algún } h\in H \}=\{ha: h\in H \}=Ha$.

3. Es fácil ver que la función de $Ha$ sobre $H$, que aplica a cada $ha$ en $h$, es una biyección.
	
Para la congruencia por la izquierda se procede de forma análoga.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}En la literatura puede hallarse que a los conjuntos $Ha$ (resp. $aH$) se les llama *coset derecho (resp. izquierdo) de $H$ en $G$*, término proveniente del idioma inglés (right coset y left coset) pero que se ha hecho popular en la literatura en otras lenguas, en particular en la española, por su simplicidad. El prefijo co indica con o en compañía. De este punto en adelante usaremos este término para referirinos a las clases laterales módulo $H$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-98"><strong>(\#cor:unnamed-chunk-98) </strong></span>Sea $H$ un subgrupo de un grupo $G$.

1. $G$ es la unión de los coset derechos (resp. izquierdos) de $H$ en $G$.

2. Dos coset derechos (rersp. izquierdos) de $H$ en $G$ son disjuntos o iguales.

3. Para todo $a,b\in G$, $Ha=Hb\Leftrightarrow ab^{-1}\in H$ y $aH=bH\Leftrightarrow a^{-1}b\in H$.

4. Si $\mathcal{D}$ es el conjunto de los coset derechos de $H$ en $G$ y $\mathcal{I}$ es el conjunto de los coset izquierdos de $H$ en $G$, entonces $|\mathcal{D}|=|\mathcal{I}|$.
	</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Los apartados del (1) al (3) son consecuencia inmediata del teorema anterior y del teorema \ref{teo1.27} (sección 2).

(4) Sea $f:\mathcal{D}\longrightarrow\mathcal{L}$ la función definida por $f(Ha)=Ha^{-1}$ es una biyección, ya que $Ha=Hb\Leftrightarrow ab^{-1}\in H\leftrightarrow (a^{-1})^{-1}b^{-1}\in H\leftrightarrow a^{1}H=b^{-1}H$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}*La notación aditiva*. Si $G$ es un subgrupo aditivo y $H$ un subgrupo de $G$, la congruencia por la derecha módulo $H$ es $a\cong_{r}b mod H$ si y solo si $a-b\in H$. Las clases laterales derechas (coset derechos) son los conjuntos $H+a=\{h+a:h\in H \}$, para $a\in G$. De forma análoga, para la congruencia por la izquierda módulo $H$, $a\cong_{l}b mod H$ si y solo si $b-a\in H$. Las clases laterales izquierdas (coset izquierdos) son los conjuntos de la forma  $a+H=\{h+a:h\in H \}$.
</div>\EndKnitrBlock{remark}

De la parte (4) del corolario se puede ver $|\mathcal{D}|=|\mathcal{I}|$. Podemos entonces dar la siguiente definición:
 
\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-101"><strong>(\#def:unnamed-chunk-101) </strong></span>Sea $H$ un subgrupo de un grupo $G$. El *índice de $H$ en $G$* es el cardinal del conjunto de los coset derechos de $H$ en $G$. Lo denotamos por $[G:H]$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-102"><strong>(\#thm:unnamed-chunk-102) </strong></span>Si $K,H, G$ son subgrupos tales que $K<H<G$, entonces $[G:K]=[G:H][H:K]$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $a_{i}\in G$, con $i\in I$ un representante de cada coset de $H$ en $G$, donde la familia de índices $I$ cumple que $|I|=[G:H]$. Por el corolario anterior se tiene que $G=\bigcup_{i\in I} Ha_{i}$. Note que los coset derechos $Ha_{i}$ son disjuntos (esto es $Ha_{i}=Ha_{j}\leftrightarrow i=j$). Análogamente $H=\bigcup_{j\in J} Kb_{j}$, con $b_{j}\in H$ y $|J|=[H:K]$, donde los conjuntos $Kb_{j}$ son disjuntos dos a dos. De esta forma se tiene que $G=\bigcup_{i\in I} Ha_{i}=\bigcup_{i\in I}(\bigcup_{j\in J} Kb_{j})a_{i}=\bigcup_{(i,j)\in I\times J} Kb_{j}a_{i}$. Basta probar que los conjuntos $Kb_{j}a_{i}$ son disjuntos dos a dos porque así, del corolario se tiene $[G:K]=|I\times J|=|I||J|=[G:K][K:H]$. Si $Kb_{j}a_{i}=Kb_{s}a_{r}\Leftrightarrow b_{j}a_{i}=kb_{s}a_{r}$ para algún $k\in K$. Como $b_{j},b_{r},k\in H$ se tiene que $Ha_{i}=Hb_{j}a_{i}=Hkb_{s}a_{r}=Ha_{r}$, por lo que $i=r$ y $b_{j}=kb_{s}$. Así $Kb_{j}=Kkb_{s}=Kb_{s}$ por lo tanto $j=s$. De este modo los coset $Kb_{j}a_{i}$ son disjuntos dos a dos. 
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Si dos de estos índices son finitos, también lo será el tercero.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{corollary}\iffalse{-91-76-97-103-114-97-110-103-101-93-}\fi{}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-105"><strong>(\#cor:unnamed-chunk-105)  \iffalse (Lagrange) \fi{} </strong></span>Si $H$ es un subgrupo de un grupo $G$, entonces $|G|=[G:H]|H|$. En particular si $G$ es finito, el orden de $a\in G$ divide al orden de $G$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Considerando el subgrupo $\langle e\rangle$, del teorema anterior se tiene el resultado. En particular, si se considera además el subgrupo $\langle a\rangle$, se sigue que $|\langle a\rangle|$ divide a $|G|$.
</div>\EndKnitrBlock{proof}

Dados dos subconjuntos $H$ y $K$ de un grupo $G$, el conjunto $HK$ es el formado por todos los productos del tipo $ab$ donde $a\in H$ y $b\in K$, es decir, $HK=\{ab|a\in H \mbox{ y }b\in K \}$. Los coset derecho e izquierdo son un caso particular de estos conjuntos. Puede que los subconjuntos $H$ y $K$ sean subgrupos, en este caso, el conjunto $HK$ no es necesariamente un subgrupo.

Dados dos subconjuntos $H$ y $K$ de un grupo $G$, el conjunto $HK$ es el formado por todos los productos del tipo $ab$ donde $a\in H$ y $b\in K$, es decir, $HK=\{ab|a\in H \mbox{ y }b\in K \}$. Los coset derecho e izquierdo son un caso particular de estos conjuntos. Puede que los subconjuntos $H$ y $K$ sean subgrupos, en este caso, el conjunto $HK$ no es necesariamente un subgrupo.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-107"><strong>(\#thm:unnamed-chunk-107) </strong></span>Sea $H$ y $K$ subgrupos finitos de un grupo $G$. Entonces $|HK|=|H||K|/|H\cap K|$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $C=H\cap K$, $C$ es un subgrupo de $K$ de índice $n=|K|/|C|$ y $K$ es la unión disjunta de coset derechos $Ck_{1}\cup Ck_{2}\cdots Ck_{n}$ para algunos $k_{i}\in K$. Como $HC=H$, se tiene que $HK$ es la unión disjunta $Hk_{1}\cup Hk_{2}\cdots Hk_{n}$. Por lo tanto, $|HK|=|H|n=|H||K|/|H\cap K|$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{proposition}<div class="proposition"><span class="proposition" id="prp:unnamed-chunk-109"><strong>(\#prp:unnamed-chunk-109) </strong></span>Si $H$ y $K$ son subgrupos de un grupo $G$, entonces $[H:H\cap K]\leq [G:K]$. Si $[G:K]$ es finito, entonces $[H:H\cap K]= [G:K]$ si y solo si $G=KH$.
</div>\EndKnitrBlock{proposition}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sean $A$ y $B$ los conjuntos de coset´s de $H\cap K$ en $H$ y de $K$ en $G$ respectivamente. Sea $\phi:A\longleftarrow B$ la función definida por $\phi((H\cap K)h)=Kh$.  Veamos que está bien definida. Si $(H\cap K)h=(H\cap K)h´$, entonces $h´h^{-1}\in H\cap K\subseteq K$ y así $Kh=Kh´$. Además $\phi$ es inyectiva. Entonces $|A|\leq |B|$, es decir $[H:H\cap K]\leq [G:K]$.

Si $[G:K]$ es finito, entonces $\phi$ es sobreyectiva si y solo si $G=KH$. Nótese que para $h\in H$, $k\in K$, $Kkh=Kh$.
</div>\EndKnitrBlock{proof}

Ahora estuadiaremos algunos subgrupos $N$ (de un grupo $G$) para los que la congruencia derecha e izquierda módulo $N$ coinciden. 

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-111"><strong>(\#thm:unnamed-chunk-111) </strong></span>Si $N$ es un subgrupo de un grupo $G$, entonces las siguientes condiciones son equivalentes:

1. La congruencia por laderecha módulo $N$ y la congruencia por la izquierda módulo $N$ coinciden (es decir, definen la misma relación de equivalencia sobre G).

2. Todo coset derecho de $N$ en $G$ es un coset izquierdo de $N$ en $G$.

3. $aN=Na$ para todo $a\in G$.

4. Para todo $a\in G$, $\{ana^{-1}| n\in N \}=aNa^{-1}\subseteq N$.

5. Para todo $a\in G$, $aNa^{-1}=N$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Es inmediato ver que (1) es equivalente a (3) ya que dos relaciones son idénticas si y solo si definen las mismas clases de equivalencias, en este caso los coset derechos e izquierdos de $N$. Veamos que (2) implica (3), si $aN=Nb$ para algún $b\in G$, entonces $a\in Nb\cap Na$, por lo que $Nb=Na$ ya que los cosets derechos (e izquierdos) son disjuntos o iguales. (3) implica (4) trivialmene, basta multiplicar por la derecha $a^{-1}$. Para ver que (4) implica (5), basta notar que (4) es cierto para el elemento $a^{-1}$, así $a^{-1}Na\subseteq N$ po lo que para todo $n\in N$, se tiene que $n=a(a^{-1}na)a^{-1}\in aNa^{-1}$ y así $N\subseteq aNa^{-1}$. Es trivial ver que (5) implica (2) multiplicando por $a$ a la derecha.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-113"><strong>(\#def:unnamed-chunk-113) </strong></span>Un subgrupo $N$ de un grupo $G$ que satisfaga las condiciones equivalentes del teorema anterior se llama *subgrupo normal de $G$* (o se dice que es *normal en $G$*) y se denota por $N\triangleleft G$.
</div>\EndKnitrBlock{definition}

Cuando se tiene un subgrupo normal $N$, por el teorema anterior, podemos omitir el subíndice "i" y "d" en la congruencia módulo $N$ ya que la las congruencias izquierda y derechas coinciden. 

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}
1. Note que todo subgrupo de un grupo abeliano es normal.

2. La intersección de subgrupos normales, es un subgrupo normal.

3. Si $N$ es un subgrupo normal de un grupo $G$, entonces es normal en todo subgrupo de $G$ que lo contenga, sin embargo, si $H$ es un subgrupo normal de $K$ y $K$ es un subgrupo normal de $G$, no necesariamente se tiene que $H\triangleleft G$.

4. Denotaremos por $H\bigvee K$ al subgrupo generado por el conjunto  unión $H\cup K$, es decir $H\bigvee K=\langle H\cup K\rangle$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:teorema53"><strong>(\#thm:teorema53) </strong></span>Sean $K$ y $N$ subgrupos de un grupo $G$, con $N$ normal en $G$. Entonces:

1. $N\cap K$ es un subgrupo normal de $K$.
	
2. $N$ es un subgrupo normal de $N\bigvee K$.
	
3. $NK=N\bigvee K=KN$.
	
4. Si $K$ es normal en $G$ y $K\cap N=\langle e\rangle$, entonces $nk=kn$ para todo $k\in K$ y $n\in N$.
	</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}1. Sea $n\in N\cap K$ y $a\in G$. Entonces $ana^{-1}\in N$ (porque $N$ es normal) y $ana^{-1}\in K$ (ya que $K<G$). De este modo $a(N\cap K)a^{-1}\subseteq N\cap K$ y $N\cap K \vartriangleleft K$. 

2. Se sigue trivialmente de $N< N\bigvee K$. 

3. Es claro que $NK\subseteq N\bigvee K$; un elemento $b$ de $N\bigvee K$ es de la forma $b=n_{1}k_{1}n_{2}k_{2}\cdots n_{r}k_{r}$ donde $n_{i}\in N$ y $k_{i}\in K$. Como $N$ es normal en $G$, se tiene que $n_{i}k_{i}=k_{i}m$ para algún $m\in N$ y de este modo $b=n(k_{1}k_{2}\cdots k_{r})$ con $n\in N$, por lo que $N\bigvee K\subseteq NK$. De forma análoga se tiene que $N\bigvee K=KN$. 

4. Sea $k\in K$ y $n\in N$, entonces $nkn^{-1}\in K$ ya que $K$ es normal en $G$ y $kn^{-1}k^{-1}\in N$ ya que $N$ es normal en $G$. Entonces $(nkn^{-1})k^{-1}=n(kn^{-1}k^{-1})\in N\cap K=\left\langle e\right\rangle$, por lo tanto $kn=kn$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-116"><strong>(\#thm:unnamed-chunk-116) </strong></span>Sea $N$ un subgrupos normal en $G$. Sea $G/N$ el conjunto de coset (izquierdas) de $N$ en $G$. Entonces $G/N$ es un grupo de orden $[G:N]$ bajo la operación $(aN)(bN)=abN$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Veamos que la congruencia módulo $N$ es una relación de congruencia. Sean $a_{1}\cong a mod N$ y $b_{1}\cong b mod N$. Sean $n_{1}=a_{1}a^{-1}$ y $n_{2}=b_{1}b^{-1}$ donde $n_{1}$ y $n_{2}\in N$. Se tiene que $(a_{1}b_{1})(ab)^{-1}=a_{1}b_{1}b^{-1}a^{-1}=a_{1}n_{2}a^{-1}$. Como $N$ es normal, $a_{2}N=Na_{1}$ por lo tanto $a_{1}n_{2}=ma_{1}$ para algún $m\in N$, de este modo $(a_{1}b_{1})(ab)^{-1}=(a_{1}n_{2})a^{-1}=ma_{1}a^{-1}=mn_{1}\in N$, de donde $a_{1}b_{1}\cong ab mod N$.</div>\EndKnitrBlock{proof}

Si $N$ es un grupo normal, entonces el grupo $G/N$ es llamado *grupo cociente (o grupo factor) de $G$ por $N$*. Si $G$ es un grupo aditivo, entonces la operación de grupo en $G/N$ está dada por $(a+N)+(b+N)=(a+b)+N$.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:teorema55"><strong>(\#thm:teorema55) </strong></span>Si $f:G\longrightarrow H$ es un homomorfismo de grupos. Entonces el núcleo de $f$ es un subgrupo normal de $G$. Inversamente, si $N$ es un subgrupo normal de $G$, entonces la función $\pi: G\longrightarrow G/N$ definida por $\pi(a)=aN$ es un epimorfismo de núcleo $N$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Sea $b\in Ker f$ y $a\in G$. Entonces $f(aba^{-1})=f(a)f(b)f(a^{-1})=f(a)ef(a)^{-1}=e$ por lo que $aba^{-1}\in Kerf$. Así $aKerfa^{-1}\subseteq Kerf$. Ya hemos visto que la función $\pi:G\longrightarrow G/N$ definida por $\pi(a)=aN$ es sobreyectiva. Luego $Ker\pi =\{a\in G: \pi(a)=eN=N \}=\{a\in G: aN=N \}=N$.
</div>\EndKnitrBlock{proof}

La función $\pi:G\longrightarrow G/N$ es llamada *epimorfismo canónico* (la proyeccón canónica).

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-119"><strong>(\#thm:unnamed-chunk-119) </strong></span>Si $f:G\longrightarrow H$ es un homomorfismo de grupo y $N$ es un subgrupo normal de $G$ contenido en el núcleo de $f$, entonces existe un único homomorfismo $\hat{f}: G/N\longrightarrow H$ tal que $\hat{f}(aN)=f(a)$ para todo $a\in G$, $Im f=Im \hat{f}$ y $Ker\hat{f}=(Kerf)/N$. Además $\hat{f}$ es un isomorfismo si y solo si $f$ es un epimorfismo y $N=Ker f$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}	Si $b\in aN$, $b=an$ para algún $n\in N$ y $f(b)=f(a)f(n)=f(a)$ por lo tanto para todo $b\in aN$, $f(b)=f(a)$, es decir la función $\hat{f}$ está bien definida. Ahora, $\hat{f}(aNbN)=\hat{f}(abN)=f(ab)=f(a)f(b)=\hat{f}(aN)\hat{f}(bN)$, luego $\hat{f}$ es un homomorfismo. Es evidente que $Im f=Im \hat{f}$ (ya que $\hat{f}(aN)=f(a)$) y $aN\in Ker\hat{f}\Leftrightarrow f(a)=e\Leftrightarrow a\in Ker f\Leftrightarrow Ker f/N=Ker\hat{f}$ ($Ker\hat{f}=\{aN: a\in Ker f \}=Ker f/N$). Al estar $\hat{f}$ definisa a partir de $f$, se tiene la unicidad. Es claro que $\hat{f}$ es un epimorfismo si y solo si $f$ lo es. Por el teorema \@ref(thm:1homomorfismo), $\hat{f}$ es un monomorfismo si y solo si $Ker\hat{f}(=Ker f/N)$ es el subgrupo trivial de $G/N$, esto es $\hat{f}$ es un monomorfismo si y solo si $Ker f=N$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}\iffalse{-91-80-114-105-109-101-114-32-116-101-111-114-101-109-97-32-100-101-32-105-115-111-109-111-114-102-105-115-109-111-93-}\fi{}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-121"><strong>(\#cor:unnamed-chunk-121)  \iffalse (Primer teorema de isomorfismo) \fi{} </strong></span>Si $f:G\longrightarrow H$ es un homomorfismo de grupos, entonces $f$ induce un isomorfismo $G/Ker f\cong Im f$.</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Como $f$ es un epimorfismo, tomando $N=Ker f$ en el teorema anterior se tiene el resultado.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-123"><strong>(\#cor:unnamed-chunk-123) </strong></span>Si $f:G\longrightarrow H$ es un homomorfismo de grupos, $N$ es normal en $G$, $M$ es normal en $H$ y $f(N)$ es un subgrupo de $M$; entonces $f$ induce un homomorfismo $\hat{f}:G/N\longrightarrow H/M$ donde $\hat{f}(aN)=f(a)M$. $\hat{f}$ es un isomorfismo si y solo si $Im f\bigvee M=H$ y $f^{-1}(M)\subseteq N$. En particular, si $f$ es un epimorfismo tal que $f(N)=M$ y $Ker f\subseteq N$, entonces $\hat{f}$ es un isomorfismo.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Haremos un esquema de la demostración. Dada la función $f:G\longrightarrow H$ y la proyección $\pi:H\longrightarrow H/M$, consideramos la  composición $\pi f:G\longrightarrow H/M$. Se tiene que $N\subseteq f^{-1}(M)=Ker \pi f$. Por el teorema anterior, se tiene que la función $g:G/N\longrightarrow H/M$ dada por $g(aN)=(\pi f)(a)=f(a)M$ es un homomorfismo que es un isomorfismo si y solo si $\pi f$ es un isomorfismo y $N=Ker f$. Pero la última condición es cierta si y solo si $Im f\bigvee M=H$ y $f^{-1}(M)\subseteq N$. Si $f$ es un epimorfismo, entonces $H=Im f=Im f\bigvee M$. Si $f(N)=M$ y $Ker f\subseteq N$, entonces $f^{-1}(M)\subseteq N$, de donde se tiene que $\hat{f}$ es un isomorfismo. 
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}\iffalse{-91-83-101-103-117-110-100-111-32-116-101-111-114-101-109-97-32-100-101-32-105-115-111-109-111-114-102-105-115-109-111-93-}\fi{}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-125"><strong>(\#cor:unnamed-chunk-125)  \iffalse (Segundo teorema de isomorfismo) \fi{} </strong></span>	Si $K$ y $N$ son subgrupos de un grupo $G$, donde $N$ es normal en $G$. Entonces $K/(N\cap K)\cong NK/N$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}	Del teorema \@ref(thm:teorema53) se tiene que $N\vartriangleleft NK=N\bigvee K$. Consideremos las funciones inclusión $i:K\longrightarrow NK$ y la proyección $\pi: NK\longrightarrow NK/K$; la composición $f:K\longrightarrow NK/K$ ($f=\pi i$) es un homomorfismo y su núcleo es $Ker f=K\cap N$, de donde $\hat{f}$ es un isomorfismo de $K/(K\cap N)$ en $Imf$, esto es $K/(K\cap N)\cong Imf$ (por el primer teorema de isomorfismo). Todo elemento en $NK/N$ tiene la forma $nkN$, con $n\in N$ y $k\in K$. Como $N$ es normal, se tiene que $nk=kn_{1}$ para algún $n_{1}\in N$, de donde $nkN=kn_{1}N=kN=f(k)$, por lo tanto $f$ es un epimorfismo y así $Im f=NK/N$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{corollary}\iffalse{-91-84-101-114-99-101-114-32-116-101-111-114-101-109-97-32-100-101-32-105-115-111-109-111-114-102-105-115-109-111-93-}\fi{}<div class="corollary"><span class="corollary" id="cor:unnamed-chunk-127"><strong>(\#cor:unnamed-chunk-127)  \iffalse (Tercer teorema de isomorfismo) \fi{} </strong></span>	Si $K$ y $H$ son subgrupos normales de un grupo $G$, donde $K< H$, entonces $H/K$ es un subgrupo normal de $G/K$ y $(G/K)/(H/K)\cong GH$.
</div>\EndKnitrBlock{corollary}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}	Consideremos la función identidad $i_{G}:G\longrightarrow G$, se tiene que $i(K)<H$ y por lo tanto induce un epimorfismo $I:G/K\longrightarrow G/H$ con $I(aK)=aH$. Como $H=I(aK)$ si y solo si $a\in H$, $Ker I=\{aK : a\in H \}=H/K$. Por lo tanto $H/K\vartriangleleft G/K$; del teorema \@ref{thm:teorema55} y el primer teorema de isomorfismo, como $G/H=Im I$ se tiene que $G/H=Im I\cong (G/H)/Ker I=(G/K)/(H/K)$. 
	</div>\EndKnitrBlock{proof}

### Ejercicios

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-129"><strong>(\#exr:unnamed-chunk-129) </strong></span>Sea $G$ un grupo y $C$ un conjunto no vacío. Sea $M(C,G)$ el conjunto de todas las funciones $f:C\longrightarrow G$. Definamos la operación de grupo como la suma de funciones, es decir, para cada $f,g\in M(C,G)$, $f\ast g = f +g$. Demuestre que $M(C,G)$ es un grupo, es abeliano si $G$ lo es.

Respuesta: Es claro que la suma de funciones es cerrada en $M(C,G)$. Sean $f,g,h\in M(C,G)$, para cada $a\in C$, $(f+(g+h))(a)=f(a)+((g+h)(a))=f(a)+(g(a)+h(a))$ como $G$ es un grupo, la suma es asociativa, luego $f(a)+(g(a)+h(a))=(f(a)+g(a))+h(a)=((f+g)(a))+h(a)=((f+g)+h)(a)$; por lo tanto la suma de funciones es asociativa.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-130"><strong>(\#exr:unnamed-chunk-130) </strong></span>Demuestre que el grupo del ejemplo \@ref(exm:ejm1-21) es un grupo de orden $|G||H|$. Además muestre que $G\times H$ es un grupo abeliano si $G$ y $H$ lo son.
Respuesta: Sabemos que $|G\times H|=|G||H|$, lo que demuestra que el orden del grupo es el producto $|G||H|$. Ahora supongamos que $G$ y $H$ son abelianos, luego $(a,b)\ast (c,d)=(a\ast c,b\ast d)=(c\ast a,d\ast b)=(c,d)\ast (a,b)$.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:ejc3"><strong>(\#exr:ejc3) </strong></span>Demuestre que el grupo simétrico sobre $n$ letras es de orden $n!$.

Respuesta: Pensemos en el grupo simétrico $S_{3}$. El orden del grupo es equivalente a contar todas las posibles biyecciones de un conjunto de $3$ elementos, a saber:

$$
\left(
\begin{array}{ccc}
		1 & 2 & 3\\
		i_{1} & i_{2} & i_{3}\\
\end{array}
\right) $$
	  
Nótese que $1$ tiene $3$ posibles imágenes $i_{1}$, luego de fijada la imagen de $1$, restas $2$ posibles imágenes de $2$, $i_{2}$ y luego de fijadas las imágenes de $1$ y $2$, le queda una sola posibilidad a $3$. De donde podemos concluír que existen $3!$ posibles biyecciones de $\{1,2,3\}$ en sí mismo.
	
Análogamente, contar los elementos de $S_{n}$ es equivalente a contar las posibles permutaciones del conjunto $\{1,2,3,\cdots, n\}$.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-131"><strong>(\#exr:unnamed-chunk-131) </strong></span>Demuestre que el grupo simétrico sobre $n$ letras es de orden $n!$.

Respuesta: Pensemos en el grupo simétrico $S_{3}$. El orden del grupo es equivalente a contar todas las posibles biyecciones de un conjunto de $3$ elementos, a saber:
  
$$
\left(  
\begin{array}{ccc}
		1 & 2 & 3\\
		i_{1} & i_{2} & i_{3}\\
\end{array}
\right)
$$
  
Nótese que $1$ tiene $3$ posibles imágenes $i_{1}$, luego de fijada la imagen de $1$, restas $2$ posibles imágenes de $2$, $i_{2}$ y luego de fijadas las imágenes de $1$ y $2$, le queda una sola posibilidad a $3$. De donde podemos concluír que existen $3!$ posibles biyecciones de $\{1,2,3\}$ en sí mismo.

Análogamente, contar los elementos de $S_{n}$ es equivalente a contar las posibles permutaciones del conjunto $\{1,2,3,\cdots, n\}$.
	</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-132"><strong>(\#exr:unnamed-chunk-132) </strong></span>Demuestre que el grupo del ejemplo \ref{ejm1-21} es un grupo de orden $|G||H|$. Además muestre que $G\times H$ es un grupo abeliano si $G$ y $H$ lo son.

Respuesta: Sabemos que $|G\times H|=|G||H|$, lo que demuestra que el orden del grupo es el producto $|G||H|$. Ahora supongamos que $G$ y $H$ son abelianos, luego $(a,b)\ast (c,d)=(a\ast c,b\ast d)=(c\ast a,d\ast b)=(c,d)\ast (a,b)$.</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-133"><strong>(\#exr:unnamed-chunk-133) </strong></span>Demuestre que la intersección de subgrupos es un subgrupo.

Respuesta: Sea $G$ un grupo y sea $\{H_{i}|i\in I \}$ una familia no vacía de subgrupos de $G$. Sea $a,b\in\bigcap_{i\in I}H_{i}$. Entonces para cada $i\in I$, $a,b\in H_{i}$, como cada $H_{i}$ es un subgrupo de $G$, se tiene que $a^{-1}, ab\in H_{i}$, por lo tanto $a^{-1}, ab\in\bigcap_{i\in I} H_{i}$.
	</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:ejc5"><strong>(\#exr:ejc5) </strong></span>Sea $G$ un grupo y $a,b\in G$ de orden finito. Demuestre que se cumplen las siguientes propiedades:

1. $a^{k}=e \Leftrightarrow |\langle a\rangle||k$.
	
2. $a=e \Leftrightarrow |\langle a\rangle|=1$.
	
3. $|\langle a\rangle|=|\langle a^{-1}\rangle|$.
	
4. $|\langle a^{k}\rangle|=\frac{|a|}{(|a|,k)}$. Donde $(m,n)$ denota el máximo común divisor de $m$ y $n$.
	
5. Si $|ab|$ es finito, entonces $|ab|=|ba|$.
	
6. Si $|ab|=|ba|$, entonces $|ab||[|a|,|b|]$. Además si $|a|$ y $|b|$ son coprimos, entonces $|ab|=|a||b|$. Donde $[m,n]$ denota el mínimo común múltiplo de $m$ y $n$.
	
Respuesta:

1. Sea $n$ el oreden de $a$. Note que si $k=qn+r$ para algunos enteros $0\leq r< n$, $a^{k}=a^{qn}a^{r}$. Si $a^{k}=e$, entonces $e=a^{k}=a^{qn}a^{r}=a^{r}$, de donde se sigue que $r$ es necesariamente $0$ .Si $n|k$, $k=qn\Leftrightarrow a^{k}=a^{qn}=e^{q}=e$.
	
2. Si el orden de $a$ es $1$, se tiene que $a=a^{1}=e$. Recíprocamente, si $a=e$, $\langle a\rangle=\langle e\rangle$, por lo tanto el orden de $a$ es $1$.
	
3. Se sigue del hecho que $(a^{-1})^{m}=(a^{m})^{-1}$.
	
4. Sea $n=|\langle a\rangle|$ y $d=(n,k)$. Entonces $n=sd$ y $k=td$. Si $(a^{k})^{m}=a^{km}=e=a^{n}$, entonces $n|km$, por lo tanto $s|tm$. Como $(s,t)=1$, entonces $s|m$, por lo tanto $|\langle a^{k}\rangle|=s$.
	
5. Sea $m$ el orden de $ab$. Esto es $(ab)^{m}=e$ por lo tanto $(ab)(ab)\cdots (ab)=e\Leftrightarrow a(ba)(ba)\cdots (ba)b=e\Leftrightarrow (ba)^{m-1}=a^{-1}b^{-1}=(ba)^{-1}\Leftrightarrow (ba)^{m}=e$
	  
6. Sean $n=|\langle a\rangle|$, $m=|\langle b\rangle|$, $s=|\langle (ab)\rangle|$ y $M=[n,m]$. Si $(ab)$ commuta, $(ab)^{M}=a^{M}b^{M}$. De la parte (a) se tiene que $(ab)^{M}=a^{M}b^{M}=e$ y que $s|M$. Si $(m,n)=1$, $(ab)^{s}=a^{s}b^{s}=e$ entonces $a^{s}=b^{-s}$ por lo tanto $|\langle a^{s}\rangle|=|\langle b^{s}\rangle|$; de los apartados anteriores se sigue que $\frac{n}{(n,s)}=\frac{m}{m,s}\Leftrightarrow n|s\mbox{ y }m|s$ de donde se tiene que $M|s$, y como $s|M$, entonces $s=M$.
	</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-134"><strong>(\#exr:unnamed-chunk-134) </strong></span>Demuestre que si $f:G\longrightarrow H$ es un epimorfismo de grupos, entonces la signación $K\mapsto f(K)$ define una correspondencia uno a uno entre el conjunto $S_{f}(G)$ de todos los subgrupos $K$ de $G$ que contienen al núcleo de $f$ y el conjunto $S(H)$ de todos los subgrupos de $H$. Bajo esta correspondencia, subgrupos normales corresponden a subgrupos normales. Además, si $N$ es un  subgrupo normal de $G$, entonces todo subgrupo de $G/N$ es de la forma $K/N$, donde $K$ es un subgrupo de $G$ que contiene a $N$. Por lo tanto, $K/N$ es normal en $G/N$ si y solo si $K$ es normal en $G$.
	
Respuesta:
La asiganación $K\mapsto f(K)$ define una función $\phi: S_{f}(G)\longrightarrow S(H)$ y $f^{-}(J)$ es un subgrupo de $G$ para todo subgrupo $J$ de $H$. $J<H$ implica que $Ker f< f^{-1}(J)$ y $f(f^{-1}(J))=J$, $\phi$ es sobreyectiva. Como $f(f^{-1}(K))=K$ si y solo si $Ker f<K$, se tiene que $f$ es inyectiva. Si $K\vartriangleleft G$, entonces $f(K)\vartriangleleft H$, al igual que si $J\vartriangleleft H$ entonces $f^{-1}(J)\vartriangleleft G$, de donde se tiene el resultado. Adicionalmente, si se considera el epimorfismo canónico $\pi: G\longrightarrow G/N$, si $N<K<G$, entonces $\pi(K)=K/N$.
</div>\EndKnitrBlock{exercise}

## Anillos

En esta sección estudiaremos otro concepto fundamental para el álgebra, el concepto de *anillo*, concepto básico en el estudio de los temas mas actuales del álgebra moderna. Se estudiarán las definiciones de anillo, dominios de integridad y homomorfismo de anillos, así como la definición de subanillo, ideal y se presentarán los resultados correspondientes a estos. Muchos de los resultados son una generalización directa de los vistos en la sección de grupos. Veremos algunos resultados sobre anillos commutativos, anillos euclideanos, divisibiliadad y factorización única. Por último, se verán algunos resultados sobre anillos cocientes.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-135"><strong>(\#def:unnamed-chunk-135) </strong></span>Un *anillo* es un conjunto no vacío $A$ junto con dos operaciones binarias (usualmente denotada por el símbolo de suma, $+$ y la multiplicación) tales que:
  
1. $(A,+)$ es un grupo abeliano.

2. $(ab)c=a(bc)$ para todo $a,b,c\in A$ (multiplicación asociativa).

3. $a(b+c)=ab+ac$ y $(a+b)c=ac+bc$, para todo $a,b,c\in A$ (leyes distributivas, izquierda y derecha).

Si adicionalmente se tiene que:
	  
4. $ab=ba$ para todo $a,b\in A$, se dice que $A$ es un *anillo commutativo*.

5. Si existe un elemento $1_{A}\in A$ tal que $1_{A}a=a1_{A}=a$ para todo $a\in A$, entonces decimos que $A$ es un *anillo con identidad*.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}La identidad para la suma en un anillo es llamado cero y denotado por $0$. Si $A$ es un anillo, $a\in A$ y $n\in\mathbb{Z}$, entonces $na$ denota la suma de de $a$ consigo mismo, $n$ veces, siempre que $n>0$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:teorema61"><strong>(\#thm:teorema61) </strong></span>Sea $A$ un anillo, entonces:
	
1. $0a=a0=0$ para todo $a\in A$.

2. $(-a)b=a(-b)=-(ab)$ para todo $a,b\in A$.

3. $(-a)(-b)=ab$ para todo $a,b\in A$.

4. $(na)b=a(nb)$ para todo $a,b\in A$.

5. $(\sum_{i=1}^{n} a_{i})(\sum_{j=1}^{m}b_{j})=\sum_{i=1}^{n}\sum_{j=1}^{m}a_{i}b_{j}$ para todo $a_{i},b_{j}\in A$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}1. $0a=(0+0)a=0a+0a$, por unicidad del elemento neutro se sigue que $0a=0$.

2. $ab+(-a)b=(a-a)b=0b=0$, por unicidad del elemento inverso, se sigue que $(-a)b=-(ab)$.

3. Por lo demostrado en (2) se tiene que $(-a)(-b)=-(-(ab))=ab$.

4. Haciendo inducción sobre $n$ y de la propiedad distributiva, se obtiene el resultado.

5. Haciendo inducción sobre $n$ y $m$ se obtiene el resultado.
	</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-138"><strong>(\#def:unnamed-chunk-138) </strong></span>Un elemento $a$ de un anillo $A$ no cero es un *divisor izquierdo* (respectivamente *divisor derecho*) *de cero* si existe un elemento $b\in A$ no cero tal que $ab=0$ (respectivamente $ba=0$). Un *divisor de cero* es un elemento de un anillo $A$ que es a la vez un divisor izquierdo y derecho de cero.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Es fácil verificar que en un anillo $A$ se cumples las leyes de cancelación izquierda y derecha si y solo si no tiene divisores de cero.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-140"><strong>(\#def:unnamed-chunk-140) </strong></span>Un elemento $a$ en un anillo con identidad $A$ se dice que es *invertible izquierdo* (resp. *invertible derecho*) si existe $c\in A$ (resp. $b\in A$) tal que $ca=1_{A}$ (resp. $ab=1_{A}$). El elemento $c$ (resp. $b$) es llamado *inverso izquierdo* (resp. *inverso derecho*) de $a$. Si es es invertible izquierdo y derecho simultáneamente, se dice que es *invertible* o es una *unidad*.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}1. Los inverso derechos e izquierdos de una unidad $a$ en un anillo con identidad $A$, son necesariamente iguales. 

2. El conjunto de unidades de un anillo con identidad $A$, forma un grupo bajo la multiplicación.
	</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-142"><strong>(\#def:unnamed-chunk-142) </strong></span>Un anillo $A$ con identidad $1_{A}\neq 0$ y sin divisores de cero, se llama *dominio de identidad*. Un anillo $D$ con identidad $1_{D}\neq 0$ en el que todo elemento no cero es una unidad, se llama *anillo con división*. Un *cuerpo (o campo)* es un anillo commutativo con división.
	</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}1. Todo dominio de integridad y todo anillo con división tiene al menos dos elementos, denotados $0$ y $1_{A}$.

2. Un anillo $A$ con identidad es un anillo con división si y solo si los elementos no nulos forman un grupo bajo la multiplicación.

3. Todo cuerpo $F$ es un dominio de integridad ya que $ab=0$ y $a\neq 0$ implica que $b=1_{F}b=(a^{-1}a)b=a^{-1}(ab)=a^{-1}0=0$.
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-144"><strong>(\#exm:unnamed-chunk-144) </strong></span>El conjunto de los números enteros es un anillo, más aun, es un dominio de integridad. El conjunto de los enteros pares es un anillo commutativo sin identidad. Los conjuntos de los números racionales, $\mathbb{Q}$, de los números reales $\mathbb{R}$ y de los números complejos $\mathbb{C}$ con las operaciones usuales de suma y multiplicación, son cuerpos. 
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Las matrices sobre $\mathbb{Q}$ (o sobre $\mathbb{R}$ o $\mathbb{C}$) con las operaciones suma y multiplicación de matrices, forman una anillos no commutativo con identidad. (más adelante se estudiará este tema).
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-146"><strong>(\#exm:unnamed-chunk-146) </strong></span>Dados $n\in \mathbb{Z}$ positivo, el conjunto de los enteros módulo $n$, $\mathbb{Z}_{n}$, con las operaciones usuales, es un anillo. Si $n$ no es un número primo, entonces $n=kr$ para enteros $k>1$ y $r>1$, por lo tanto $[k]\neq [0]$, $[r]\neq [0]$ y $[k][r]=[n]=[0]$, entonces $[k]$ y $[r]$ son divisores de cero. Si $n=p$ es un número primo, entonces $\mathbb{Z}_{p}$ es un cuerpo.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-147"><strong>(\#exm:unnamed-chunk-147) </strong></span>Sea $G$ un grupo abeliano. Sea $End(G)$ el conjunto de endomorfismos de $f:G\longrightarrow G$. Definimos la suma en $End(G)$ como $(f+g)(a)=f(a)+g(a)$, para todo $f,g\in End(G)$. Se verifica que $f+g\in End(G)$. De este modo $End(G)$ es un grupo abeliano. Si definimos la multiplicación en $End(G)$ como la composición de funciones, $(f\circ g)(a)=f(g(a))$ para todo $f,g\in End(G)$; claramente $f\circ g\in End(G)$. Con estas dos operaciones, $End(G)$ es un anillos con identidad $I_{G}:G\longrightarrow G$, $I_{G}(a)=a$ (no necesariamente commutativo).
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-148"><strong>(\#exm:unnamed-chunk-148) </strong></span>Los *cuaterniones* (o *cuaternios*): Sea el conjunto $\mathcal{Q}$ de elementos de la forma $\alpha=a_{0}+a_{1}i+a_{2}j+a_{3}k$, con $a_{0}, a_{1}, a_{2}, a_{3}\in \mathbb{R}$, definimos a las operaciones:

1. *Suma* definida por
		\begin{equation*}
		\begin{split}
			\alpha+\beta&=(a_{0}+a_{1}i+a_{2}j+a_{3}k)+(b_{0}+b_{1}i+b_{2}j+b_{3}k)\\
			&=(a_{0}+b_{0})+(a_{1}+b_{1})i+(a_{2}+b_{2})j+(a_{3}+b_{3})k
		\end{split}
		\end{equation*}

2. *Multiplicación* definada por
		\begin{equation*}
			\begin{split}
			\alpha\beta & =(a_{0}+a_{1}i+a_{2}j+a_{3}k)(b_{0}+b_{1}i+b_{2}j+b_{3}k)\\
			&=(a_{1}b_{1}-a_{2}b_{2}-a_{3}b_{3}-a_{4}b_{4})+(a_{1}b_{2}+a_{2}b_{1}+a_{3}b_{4}-a_{4}b_{3})i\\
			&+(a_{1}b_{3}-a_{2}b_{4}+a_{3}b_{1}+a_{4}b_{2})j+(a_{1}b_{4}+a_{2}b_{3}-a_{3}b_{2}+a_{4}b_{1})k
			\end{split}
		\end{equation*}

La multiplicación se puede hacer mediante la propiedad distributiva y usando las siguientes reglas:
		

1. $i^{2}=j^{2}=k^{2}=ijk=-1$;

2. $ij=-ji=k$;

3. $jk=-kj=i$:

4. $ki=-ik=j$.
		 
El conjunto de los elementos $\{\mbox{\textpm} 1,\mbox{\textpm} i, \mbox{\textpm} j,\mbox{\textpm} k \}$ forman un grupo no abeliano  de orden 8 con la multiplicación.

El conjunto $\mathcal{Q}$ junto a las operaciones suma y multiplicación antes definidas forman un anillos no commutativo con división, donde el elemento cero (nulo para la suma) es $0+0i+0j+0k$, la unidad es $1+0i+0j+0k$ y el inverso multiplicativo de un elemnto no nulo $\alpha=a_{0}+a_{1}i+a_{2}j+a_{3}k$ es $(a_{0}/d)+(a_{1}/d)i+(a_{2}/d)j+(a_{3}/d)k$ con $d=a_{0}^{2}+a_{1}^{2}+a_{2}^{2}+a_{3}^{2}$.
</div>\EndKnitrBlock{example}

Nóte que los elemento de un anillo $A$ bajo la operación de multiplicación, forman un semigrupo y si $A$ tiene unidad, forman un monoide. Por lo tanto puede definirse la potenciación. Para cada $a\in A$ y $n\in\mathbb{N}$ no nulo, $a^{n}=a\cdots a$ ($n$ factores) y $a^{0}=1_{A}$ si $A$ tiene identidad. Además $a^{m}a^{n}=a^{m+n}$ y $(a^{m})^{n}=a^{mn}$.La resta en un anillo $A$ está definida como de la menera usual, $a-b=a+(-b)$, por lo tanto $a(b-c)=ab-ac$ y $(a+b)c=ac+bc$ para cualesquiera $a,b,c\in A$.

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-149"><strong>(\#def:unnamed-chunk-149) </strong></span>Una aplicación $\phi$ de un anillo $A$ en un anillo $A´$ se dice que es un *homomorfismo* si:

1. $\phi(a+b)=\phi(a)+\phi(b)$,
	
2. $\phi(ab)=\phi(a)\phi(b)$.
	
Para cualesquiera $a,b\in A$.

Si la función $\phi$ es inyectiva, diremos que es un *isomorfismo*. en este caso se dice que los anillos $A$ y $A´$ son *isomorfos*.
</div>\EndKnitrBlock{definition}

Note que tal homomorfismo de anillos es un homormorfismo de grupos considerando $A$ como un grupo bajo la suma, por lo tanto todos los resultados para homomorfismo de grupos se aplican a los homomorfismo de anillos. En particular,

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-150"><strong>(\#thm:unnamed-chunk-150) </strong></span>Si $\phi$ es un homomorfismo de anillos de $A$ en $A´$, entonces:
	
1. $\phi(0)=0$.

2. $\phi(-a)=-\phi(a)$, para todo $a\in A$.
	</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{remark}<div class="remark">\iffalse{} <span class="remark"><em>Nota. </em></span>  \fi{}Si los anillos $A$ y $A´$ tienen unidades $1_{A}$ y $1_{A´}$, no se tiene en general que $\phi(1_{A})=1_{A´}$. Pero si $A´$ es un dominio de integridad se tiene que $\phi(1_{A})=1_{A´}$. También, si $A´$ es cualquier anillo y $\phi$ es sobreyectiva, entonces $\phi(1_{A})=1_{A´}$. 
</div>\EndKnitrBlock{remark}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-152"><strong>(\#def:unnamed-chunk-152) </strong></span>Si $\phi$ es un homomorfismo de anillos de $A$ en $A´$, el *núcleo* de $\phi$ es el conjunto $\{a\in A: \phi(a)=0 \mbox{ el elemento nulo de } A´\}$ y se denota $I(\phi)$.
</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-153"><strong>(\#lem:unnamed-chunk-153) </strong></span>Si $\phi$ es un homomorfismo de anillo de $A$ en $A´$ con núcleo $I(\phi)$, entonces:
	
(1) $I(\phi)$ es un subgrupo de $A$ bajo la suma.

(2) Si $r\in I(\phi)$ y $a\in A$, entonces $ra, ar\in I(\phi)$.
	</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}La parte (1) se sigue de los resultados de homomorfismo de grupo. 

Veamos (2), sean $r\in I(\phi)$ y $a\in A$, entonces $\phi(ra)=\phi(r)\phi(a)=0\phi(a)=0$, por lo tanto $ra\in I(\phi)$. Análogamente se tiene que $ar\in I(\phi)$.
</div>\EndKnitrBlock{proof}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-155"><strong>(\#exm:unnamed-chunk-155) </strong></span>Sea $\phi:A\longrightarrow A´$, donde $\phi(a)=0$ para todo $a\in A$. Claramente $\phi$ es un homomorfismo (de anillos) y $I(\phi)=A$. A tal función se le llama *homomorfismo cero*.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-156"><strong>(\#exm:unnamed-chunk-156) </strong></span>Dada la función $\phi: A\longrightarrow A$, definida por $\phi(a)=a$ para todo $a\in A$. Es claramente un homomorfismo de anillos y su núcleo está formado por el cero $0$.

En general, a un homomorfismo de $A$ en si mismo se le llama *automorfismo* (al igual que en los grupos). 
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-157"><strong>(\#exm:unnamed-chunk-157) </strong></span>Sea $J(\sqrt{2})$ el conjunto de todos los números de la forma $m+n\sqrt{2}$, con $n,m\in\mathbb{Z}$. Verifique que $J(\sqrt{2})$ forman un anillo bajo la suma y la multiplicación usuales de los números reales. Definamos $\phi:J(\sqrt{2})\longrightarrow J(\sqrt{2})$ definida por $\phi(m+n\sqrt{2})=m-n\sqrt{2}$. $\phi$ es un homomorfismo de anillo y su núcleo solo contiene al elemento cero.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-158"><strong>(\#exm:unnamed-chunk-158) </strong></span>La función canónica $\mathbb{Z}\longrightarrow \mathbb{Z}_{m}$ dada por $k\mapsto [k]$ es un *epimorfismo de anillo*, esto es un homomorfismo sobreyectivo.
</div>\EndKnitrBlock{example}

Así como el lema anterios se obtiene directamente de los resultados de grupo, el teorema que sigue es la traduccción natural del correspondiente a la teoría de grupo, razón por la cual lo presentaremos sin demostración.

\BeginKnitrBlock{theorem}<div class="theorem"><span class="theorem" id="thm:unnamed-chunk-159"><strong>(\#thm:unnamed-chunk-159) </strong></span>El homomorfismo $\phi$ de anillos de $A$ en $A´$ es un isomorfismo si y solo si $I(\phi)=\{0\}$.
</div>\EndKnitrBlock{theorem}

\BeginKnitrBlock{definition}<div class="definition"><span class="definition" id="def:unnamed-chunk-160"><strong>(\#def:unnamed-chunk-160) </strong></span>Un subconjunto no vac?o $I$ de $A$ se dice que es un ideal (bilateral) de $A$ si:

1. $I$ es un subgrupo de $A$ bajo la suma.

2. Para todo $u\in I$ y $a\in A$, tanto $ua$ como $au$ pertenecen a $I$.
	</div>\EndKnitrBlock{definition}

\BeginKnitrBlock{lemma}<div class="lemma"><span class="lemma" id="lem:unnamed-chunk-161"><strong>(\#lem:unnamed-chunk-161) </strong></span>Si $I$ es un ideal de un anillo $A$, entonces $A/I$ es un anillo y es una imagen homomorfa de $A$.
</div>\EndKnitrBlock{lemma}

\BeginKnitrBlock{proof}<div class="proof">\iffalse{} <span class="proof"><em>Demostración. </em></span>  \fi{}Recordemos que los elementos de $A/I$ son las clases laterales $a+I$, con $a\in A$, la suma está definida como $(a+I)+(b+I)=(a+b)+I$ y la multiplicación $(a+I)(b+I)= (ab)+I$ (ya demostramos que están bien definidas). Ver que $A/I$ es un anillo basta probar los axiomas que corresponden a la operación de multiplicación (para la suma ya lo demostramos antes). Se puede verificar fácilemente la propiedad asociativa, ya que $((a+I)(b+I))(c+I)=(((ab)c)+I)=((a(bc))+I)=(a+I)((bc)+I)$. La propiedad distributiva es igualmente sencilla, $(a+I)((b+I)+(c+I))=(a(b+c))+I=(ab+ac)+I=(ab+I)+(ac+I)=((a+I)(b+I))+((a+I)(c+I))$. Considerando la función que a cada $a$ le asigna $a+I$, por la definición de las operaciones se sigue que dicha función es un homomorfismo cuyo núcleo es exactamente $I$.
</div>\EndKnitrBlock{proof}

### Ejercicios

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-163"><strong>(\#exr:unnamed-chunk-163) </strong></span>Complete los detalles de la demostración de las partes (4) y (5) del teorema \@ref{thm:teorema61}.

Repuesta: 
  
(4) Obviamente la proposición es cierta si $n=1$. Supongamos que $(ka)b=a(kb)$ para todo $k\leq n$, $((k+1)a)b=((ka)+a)b=((ka)b+ab)=(a(kb)+ab)=a((kb)+b)=a((k+1)b)$. (5) De lo anterior tenemos que $(\sum_{i=1}^{n} a_{i})b=\sum_{i=1}^{n}a_{i}b$ para todo $a_{i},b\in A$. Haremos inducción sobre $m$. Claramente la proposición es cierta para $m=1$. Supongamos $(\sum_{i=1}^{n} a_{i})(\sum_{j=1}^{k}b_{j})=\sum_{i=1}^{n}\sum_{j=1}^{k}a_{i}b_{j}$ para todo $k\leq m$. 

\begin{equation} 
	\begin{split}
	(\sum_{i=1}^{n} a_{i})(\sum_{j=1}^{k+1}b_{j}) & = (\sum_{i=1}^{n} a_{i})(\sum_{j=1}^{k}b_{j}+b_{k+1}) \\
	& = ((\sum_{i=1}^{n} a_{i})(\sum_{j=1}^{k}b_{j}))+((\sum_{i=1}^{n} a_{i})b_{k+1})) \\
	& = (\sum_{i=1}^{n}\sum_{j=1}^{k}a_{i}b_{j})+(\sum_{i=1}^{n} a_{i}b_{k+1}) \\
	& = \sum_{i=1}^{n}(\sum_{j=1}^{k}a_{i}b_{j}+a_{i}b_{k+1}) \\
	& = \sum_{i=1}^{n}\sum_{j=1}^{k+1}a_{i}b_{j}
	\end{split}
\end{equation}
	</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-164"><strong>(\#exr:unnamed-chunk-164) </strong></span>Sea $A$ un anillo. Demuestre que en $A$ se cumples las leyes de cancelación izquierda y derecha si y solo si $A$ no tiene divisores de cero.
	
Respuesta: 
  
Supongamos que en $A$ se cumplen las leyes derechas e izquierdas de cancelación, sean $a,b\in A$, tales que $ab=0$, supongamos que $a\neq 0$, entonces $ab=0=a0=0b$ por lo tanto $b=0$ (o $a=0$). Por lo tanto $A$ no tiene divisores de cero. Inversamente, supongamos que $A$ no tiene divisores de cero. Sean $a,b,c\in A$, supongamos que $a\neq o$. Si $ab=ac$, entonces $a(b-c)=ab-ac=0$, por lo tanto $b=c$. Análogamente se demuestra la ley de cancelación derecha.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-165"><strong>(\#exr:unnamed-chunk-165) </strong></span>Sea $A$ un anillo con identidad y sea $C=\{a\in A: a \mbox{ una identidad de } A \}$. Demuestre que $C$ junto con la multiplicación (definida en el anillo $A$) forman un grupo.

Respuesta: Claramente el producto es asociativo, el elemento identidad existe y por definición de unidad, los elementos de $C$ tienen inverso.
	</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-166"><strong>(\#exr:unnamed-chunk-166) </strong></span>Si $p\in \mathbb{Z}$ es un número primo, demuestre que $\mathbb{Z}_{p}$ es un cuerpo.

Respuesta: $p$ es primo si y solo si $(m,p)=1$ si y solo si $[m]$ tiene inverso.
	</div>\EndKnitrBlock{exercise}
