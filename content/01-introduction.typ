#import "main-defs.typ": *

#heading(numbering: none)[Introduction] <sec:introduction>

Model theory studies algebraic structures by methods of mathematical logic. More
exactly, it studies the truth relation connecting sentences of formal languages
with structures. This branch of mathematics originated in work of Tarski and
Mal’tsev. At present, this direction is a deeply ramified and actively
developing field of mathematics. There are a number of monographs on model
theory. We mention Chang and Keisler @bib:chang1990 and Hodges @bib:hodges1993.
#footnote[1991 _Mathematics Subject Classification._ Primary 03-02, 03C60;
  Secondary 03C45, 03D35, 20A10, 20A15, 20F18, 20H25, 20J05.]
#footnote[Translation of the main part of the author’s D.Sc. thesis, Kemerovo
  State University, Kemerovo, Russia, 1995.]

The branch of model theory studying classical structures (groups, rings, fields,
etc.) is usually referred to as model-theoretic algebra. The first development
in this direction sprang from the study of the decidability of theories. A large
contribution was made by Mal’tsev and his scientific school. Advances at this
stage are summarized in @bib:ershov1965b. Later it turned out that the methods
developed at this stage were useful in the study of other questions of
model-theoretic algebra.

Even at this period, the most important problems concerning some class of
structures $frak(K)$ were stated:

- the decidability of the theory of $frak(K)$,
- the problem of finding a criterion for the elementary equivalence of
  structures of $frak(K)$,
- the axiomatizability of $frak(K)$,
- the description of models of the theory of $frak(K)$ if $frak(K)$ is not
  axiomatizable (in particular, the description of structures that are
  elementarily equivalent to a given structure).

With the advance of model theory this list became longer. If a certain property
was studied in model theory (for example, categoricity in a given cardinality,
stability, quantifier elimination, etc.), then the corresponding question of
describing all structures of $frak(K)$ with this property was also discussed.

Group-theoretic research has a significant place in model-theoretic algebra. The
first (and very important) work in this direction was the paper by Szmielew
@bib:szmielew1955, devoted to elementary theories of abelian groups. Many
results of the model theory of various classes of groups are presented in
@bib:baldwin1979, @bib:noskov1979, @bib:remeslennikov1983.

The first study of model-theoretic properties of groups was in large part caused
by the fact that the class of groups, being one of the best-investigated
classes, is a testing area for general model-theoretic notions and ideas.
However, in the eighties, after pioneer work by Zil’ber, it turned out that
groups play a special role in stability theory. Under some general conditions
(containing no word about algebra!) on a model, some infinite group, which
implicitly exerts control over the structure of the model, can be interpreted
there. This group implicitly “governs” the structure of models. This
understanding, together with known model-theoretic properties of groups, makes
it possible to solve a number of important problems of stable theories. There
are many papers devoted to stable groups. Many results are described in the
monographs by Poizat @bib:poizat1987, by Borovik and Nesin @bib:borovik1994, and
in the collection @bib:nesin1989.

Since the early seventies, existentially closed models and, in particular,
groups have been intensively studied by methods of mathematical logic. The
results are described in detail in the monographs by Hodges @bib:hodges1985,
@bib:hodges1993, by Higman and Scott @bib:higman1988, and in the survey by
Leinen @bib:leinen1995.

In the eighties, connections between model theory and the theory of permutation
groups were studied. Many results in this direction are presented in
@bib:kaye1994.

Mal’tsev @bib:maltsev1961 initiated the study of elementary properties of the
class of linear groups. In particular, he proved that for
$G = "GL", "PGL", "SL", "PSL"$, $n, m >= 3$, and fields $F$ and $K$ of
characteristic $0$ the groups $G_n lr((F))$ and $G_m lr((K))$ are elementarily
equivalent if and only if $n = m$ and the fields $F$ and $K$ are elementarily
equivalent. At present, it is clear that this result, as well as more general
analogous results, can be deduced from known theorems on isomorphisms of
classical groups @bib:omeara1974 by a passage to ultraproducts. This result is
true for arbitrary commutative integral domains $F$ and $K$. It is also true in
the case $n, m >= 2$ for the groups GL, PGL, SL and arbitrary fields $F$, $K$.
In the case PSL and $n, m >= 2$, it remains valid for fields $F$ and $K$ of
characteristic $0$.

In @bib:tolstykh1992, there are criteria for infinite-dimensional classical
groups over skew fields to be elementarily equivalent.

Mal’tsev’s paper @bib:maltsev1960 is very important. In it he studied the
correspondence $R arrow.bar UT_3 lr((R))$ between rings with unit (not
necessarily associative) and groups of upper unitriangular $3 times 3$ matrices.
Mal’tsev proved that a ring $R$ can be interpreted in the group $UT_3 lr((R))$
with two parameters, the transvections $t_(1 2) lr((1))$ and $t_(2 3) lr((1))$.
In fact, he proved how, for any 2-step nilpotent group $G$, starting with any
elements $a_1$ and $a_2$ such that $C_G lr((a_1)) ∩ C_G lr((a_2)) = Z(G)$ and
$[a_1, C_G lr((a_2))] = [C_G lr((a_1)), a_2] = G'$, we can define multiplication
in $(G, a_1, a_2)$ on the abelian group $G'$ with respect to which it becomes
the additive group of some ring with unit $Ring(G, a_1, a_2)$.

He used this method to interpret the arithmetic of integers in a free $n$-step
nilpotent group of rank $k$, where $n >= 2$, $k >= 2$. He proved that the theory
of this group is hereditarily undecidable.

Using Mal’tsev’s method, Ershov @bib:ershov1972 proved that, in any finitely
generated nilpotent group that has no abelian subgroups of finite index, it is
possible to interpret some ring in which the ring of integers $bb(Z)$ can be
defined by using results on commutative algebra. Therefore, a finitely generated
nilpotent group has a decidable theory if and only if it is abelian-by-finite.
This result was generalized by Romanovskii @bib:romanovskii1980 to the case of
polycyclic groups and by Noskov @bib:noskov1983b to the case of finitely
generated solvable groups.

Mal’tsev @bib:maltsev1960 also gave an abstract characterization of expanded
groups of the form
$UT_3^* lr((R)) = (UT_3 lr((R)), t_(1 2) lr((1)), t_(2 3) lr((1)))$
as expanded groups $(G, a_1, a_2)$ satisfying the following conditions:

- (1) $G$ is a 2-step nilpotent group,
- (2) $C_G lr((a_1))$ and $C_G lr((a_2))$ are abelian groups,
- (3) $C_G lr((a_1)) ∩ C_G lr((a_2)) = Z(G)$,
- (4) $[a_1, C_G lr((a_2))] = [C_G lr((a_1)), a_2] = Z(G)$,
- (5) $Z(G)$ is a direct summand of $C_G lr((a_1))$ and $C_G lr((a_2))$.

In fact, condition (5) in @bib:maltsev1960 is stronger and more cumbersome.
However, a slight modification of the proof allows us to formulate the
characterization in the above more elegant form.

Myasnikov and Remeslennikov @bib:myasnikov1982, @bib:myasnikov1983 used a
modification of this characterization in order to find a definable subgroup of
the form $UT_3 lr((k')) times A$ of a $k$-powered nilpotent group of finite
rank, where $k$ is a field of characteristic $0$, $k'$ is a finite extension of
$k$, and $A$ is an abelian subgroup. They used this result to study isomorphisms
between $k$-step nilpotent groups of finite rank and the decidability of
theories of such groups.

Grünenwald and Haug @bib:grunenwald1993 showed how to find a definable 2-step
nilpotent subgroup $G$ of a stable nilpotent group and noncommuting elements
$a_1, a_2 in G$ such that $C_G lr((a))$ is an abelian group for any
$a in G without Z(G)$ and $[a_1, C_G lr((a_2))] = [C_G lr((a_1)), a_2] = G'$.
For such $G$, $a_1$, $a_2$ the ring $Ring(G, a_1, a_2)$ is a commutative
integral ring. In view of stability, it is a field @bib:cherlin1976. Thus, a
field of characteristic $0$ is interpreted in a stable nilpotent torsion-free
group.

The paper @bib:maltsev1960 did not answer a number of natural questions related
to the following key question: _What role do parameters of this characterization
play?_ A ring $R$ and the expanded group $UT_3^* lr((R))$ are interpreted in
each other without parameters. Therefore, $R$ and $UT_3^* lr((R))$ are, in a
certain sense, the same object. Is the same assertion true for $R$ and
$UT_3 lr((R))$?

It is obvious that $UT_3^* lr((R)) tilde.eq UT_3^* lr((S))$ implies
$R tilde.eq S$. But it is not clear to what extent the group $UT_3 lr((R))$
(without parameters!) determines the ring $R$. For example, is it true that
$UT_3 lr((R)) equiv UT_3 lr((S))$ implies $R equiv S$? It is easy to see that
the theory of the expanded group $UT_3^* lr((R))$ and the theory of the ring $R$
are recursively equivalent. It is clear that the theory of the group
$UT_3 lr((R))$ is decidable whenever the theory of the ring $R$ is decidable.
However, is the converse assertion valid? By the Mal’tsev interpretation, the
theory of $UT_3 lr((R))$ is undecidable only if $R$ is a ring with hereditarily
undecidable theory.

Is the class of all groups of the form $UT_3 lr((R))$ axiomatizable? The
difficulty is caused by the fact that, although conditions (1)–(4) are
elementary, condition (5) is not. Therefore, the axiom “there are $a_1$ and
$a_2$ such that conditions (1)–(5) hold” which defines this class does not look
like a first order axiom. However, it does not exclude _a priori_ the
possibility of an elementary axiomatization of this class by some other method.
Compactness arguments cannot help us to establish the nonaxiomatizability of the
class, because this class is closed under ultraproducts. If this class is not
axiomatizable, the following question arises: What groups belong to the
axiomatizable closure of this class?

What groups are elementarily equivalent to $UT_3 lr((R))$? Is it true that they
are exactly the groups $UT_3 lr((S))$ with $S equiv R$?

Does the spectrum function of the theory of the group $UT_3 lr((R))$ coincide
with the theory of a ring $R$, i.e., is the number of models of these theories
the same in every infinite cardinality? It is natural to attempt to generalize
the Mal’tsev characterization and answer the above questions for any $n >= 3$
(the case $n = 2$ is not of interest because the group $UT_2 lr((R))$ is
isomorphic to the additive group of the ring $R$).

Rose @bib:rose1978 applied the idea of Mal’tsev @bib:maltsev1960 to the ring
$"NT"_n lr((R))$ of all upper niltriangular $n times n$ matrices, $n >= 3$, over
an associative ring $R$ with unit. He showed that $R$ can be interpreted
(uniformly in $R$) in the ring $"NT"_n lr((R))$ with parameters
$e_(1 2), dots, e_(n - 1, n)$, and indicated a finite first order axiomatization
of the class of all rings of the form $"NT"_n lr((F))$, where $F$ is a field.
Therefore, if a ring is elementarily equivalent to the ring $"NT"_n lr((F))$,
then it is isomorphic to the ring $"NT"_n lr((K))$ for some field $K$. The
question of whether we can take $K equiv F$ remained open. If we can, then the
theory of the ring $"NT"_n lr((F))$ is uncountably categorical for any
algebraically closed field $F$. This fact was proved by Rose, but his method was
less natural. Wheeler @bib:wheeler1980 gave the positive answer by proving that
$"NT"_n lr((F)) tilde.eq "NT"_n lr((K))$ implies $F tilde.eq K$ for any fields
$F$ and $K$. His proof is based on the following fact: under the action of the
group of automorphisms of the ring $"NT"_n lr((F))$, the orbit of the tuple
$(e_(1 2), dots, e_(n - 1, n))$ is definable without parameter in this ring
(uniformly in all fields $F$). In particular, this tuple realizes an isolated
type in $"NT"_n lr((F))$. Moreover, answering Rose’s question, Wheeler proved
that for any $n >= 3$ the theory of rings of niltriangular $n times n$ matrices
over algebraically closed fields is the model completion of the theory of rings
of niltriangular matrices over fields.

Videla @bib:videla1986, @bib:videla1988 generalized Wheeler’s result on the
definability of an orbit to the case of the rings of niltriangular $n times n$
matrices, $n >= 3$, over arbitrary associative rings with unit. (A secondary
product of his proof is a new proof of Levchuk’s result @bib:levchuk1975 on the
description of automorphisms of the ring $"NT"_n lr((R))$.) Thus,
$"NT"_n lr((R)) tilde.eq "NT"_n lr((S))$ implies $R tilde.eq S$ for any
associative rings $R$ and $S$. In particular,
$"NT"_n lr((R)) equiv "NT"_n lr((S))$ implies $R equiv S$. If the tuple
$(e_(1 2), dots, e_(n - 1, n))$ realizes an isolated type in $"NT"_n lr((R))$,
then the theory of $R$ is recursively equivalent to the theory of
$"NT"_n lr((R))$.

Videla described rings that are elementarily equivalent to the ring
$"NT"_n lr((R))$ as follows. For a ring $S$ we consider factor sets
$g_i: S times S arrow S$, $1 <= i < n$, of abelian extensions of $S^+$ by $S^+$.
In the ring $"NT"_n lr((S))$, we change the addition operation as follows: for
$a = (alpha_(i j))$ and $b = (beta_(i j))$ we introduce the sum
$a + b + sum_i g_i lr((alpha_(i, i + 1), beta_(i, i + 1))) e_(1 n)$. We obtain a
new ring which will be denoted by $"NT"_n lr((S, g_1, dots, g_(n - 1)))$. It
turns out that models of the theory of $"NT"_n lr((R))$ are exactly all rings
$"NT"_n lr((S, g_1, dots, g_(n - 1)))$ for some $S equiv R$ and pure extensions
$g_i$ for some $i = 1, 2, dots, n - 1$, of $S^+$ by $S^+$. It is easy to deduce
that for every $n >= 3$ the class of rings of the form $"NT"_n lr((R))$ is not
elementarily closed.

Using the description of models of the theory $Th("NT"_n lr((R)))$, Videla
proved that the spectrum function of the theory coincides with the spectrum
function of $Th(R)$.

Thus, analogs of natural questions formulated above for unitriangular groups
were successfully answered in the case of niltriangular rings. However, the
situation is more complicated for unitriangular groups. Videla @bib:videla1988
wrote that the reason he studied the model theory of niltriangular rings was, in
particular, that this study could help to understand relationships between the
model theory of a ring $R$ and the model theory of the group $UT_n lr((R))$. As
the most interesting open question he mentioned the question of whether the
spectrum function of $Th(R)$ coincides with the spectrum function of
$Th(UT_n lr((R)))$. In addition, he asked if it is true that
$UT_n lr((R)) equiv UT_n lr((S))$ implies $R equiv S$ for any associative rings
$R$ and $S$ for $n >= 3$.

Videla @bib:videla1986, @bib:videla1990, @bib:videla1995 obtained only partial
results concerning these questions. The approach of @bib:videla1986,
@bib:videla1990 consists in an attempt to adapt the scheme of the proof for
niltriangular rings to the case of unitriangular groups. Using the Mal’tsev
method, it is easy to interpret a ring $R$ in the group $UT_n lr((R))$ with
parameters $t_(i, i + 1) lr((1))$, $1 <= i < n$. It is natural to attempt to
prove that the orbit of the tuple
$(t_(1 2) lr((1)), dots, t_(n - 1, n) lr((1)))$ under the action of the group of
automorphisms of $UT_n lr((R))$ is definable without parameters in
$UT_n lr((R))$. Videla found a defining formula for $n >= 5$ and the commutative
integral domain $R$ (uniformly in all such $R$). For $n = 3, 4$, this was not
done. However, the case of small $n$ has been studied for fields. A byproduct of
Videla’s proof is a new proof of the Levchuk description @bib:levchuk1975 of
automorphisms of $UT_n lr((R))$ in the case of commutative integral domains. One
more consequence of these results is the following assertion. For any $n >= 3$,
the theory of a field $F$ is model-complete if and only if the theory of the
group $UT_n lr((F))$ is model-complete.

Videla @bib:videla1986, @bib:videla1990 also generalized the arguments used for
fields to the case of maximal unipotent subgroups of Chevalley groups, and
proved that if $cal(L)$ is a system of roots and $F$ is a field of
characteristic $!= 2, 3$, then any group that is elementarily equivalent to
$U_(cal(L)) lr((F))$ is isomorphic to $U_(cal(L)) lr((K))$ for some $K equiv F$.
We note that $UT_n lr((F))$ is $U_(cal(L)) lr((F))$ for a system of roots
$cal(L)$ of type $A_(n - 1)$.

Videla @bib:videla1995 also proved that $UT_n lr((R)) tilde.eq UT_n lr((S))$
implies $R tilde.eq S$ if $n >= 3$ and $R$ and $S$ are commutative rings with
unit. Hence $UT_n lr((R)) equiv UT_n lr((S))$ implies $R equiv S$. On the basis
of this result, he showed that the spectrum function of $Th(R)$ coincides with
the spectrum function of $Th(UT_n lr((R)))$ if the ring $R$ is commutative.

For binomial rings $R$ and $S$ the fact that $UT_3 lr((R))$ and $UT_3 lr((S))$
are isomorphic implies that $R tilde.eq S$ was first indicated and used in
@bib:myasnikov1982b. Based of this fact, the following assertion was proved: for
a field $F$ of characteristic $0$ we have $G equiv UT_3 lr((F))$ if and only if
$G tilde.eq UT_3 lr((K))$ for some $K equiv F$. We note that the proof of this
fact was not satisfactory in @bib:myasnikov1982b. In fact, only the assertion
that $UT_3^* lr((R)) tilde.eq UT_3^* lr((S))$ implies $R tilde.eq S$ was
explained there.

In this paper we show that the Videla method does not work in the general
situation. We show that $(t_(1 2) lr((1)), dots, t_(n - 1, n) lr((1)))$ does not
necessarily realize an isolated type in $UT_n lr((R))$. We give a criterion for
the type of this tuple to be isolated. In general,
$UT_n lr((R)) tilde.eq UT_n lr((S))$ does not imply $R tilde.eq S$. This allows
us to construct unexpected counterexamples for the model theory of unitriangular
groups. Such examples demonstrate a number of principal differences from the
case of niltriangular rings. However, pathologies are impossible for some broad
natural classes of rings.

In Section~@sec:quasi-unitriangular-groups, we generalize the notion of a
unitriangular group and introduce the notion of a quasi-unitriangular group,
which is a key notion in the model theory of unitriangular groups. The
importance of the study of these algebraic objects can be supported by the fact
that any model of the theory of the class of all $UT_n$-groups is a
quasi-unitriangular group.

We recall some known properties of unitriangular groups (cf.
@sec:unitriangular-groups) and necessary facts of the theory of group extensions
(cf. @sec:extensions-cocycles).

In @sec:twisted-group-operation, we introduce the notion of a
quasi-unitriangular group as follows. Let $n >= 3$, and let $R$ be a ring with
unit. If $n > 3$ we assume that $R$ is associative. Let $g_1, dots, g_(n - 1)$
be symmetric 2-cocycles from $R^+$ to $R^+$. For matrices $a = (alpha_(i j))$
and $b = (beta_(i j))$ in $UT_n lr((R))$ we set
$a ⊙ b = a dot b + (sum_i g_i lr(
    (alpha_(i, i + 1),
      beta_(i, i + 1))
  )) e_(1 n)$. It turns out (cf. @prop:twisted-operation-group) that
$UT_n lr((R))$ is a group with respect to the operation $⊙$. We denote this new
group by $UT_n lr((R, g_1, dots, g_(n - 1)))$. Such groups are said to be
_quasi-unitriangular_ (or _quasi-$UT_n$-groups_ for brevity). If all $g_i$ are
zero cocycles, we obtain the ordinary group $UT_n lr((R))$. We show that the
notion of a quasi-unitriangular group is a special case of the general
construction of the extension theory introduced in @sec:extensions-cocycles.

It turns out (cf. @prop:twisted-conjugation–@prop:twisted-lower-central-series)
that the conjugation operation, the commutation operation, and the lower central
series in $UT_n lr((R, g_1, dots, g_(n - 1)))$ coincide with similar operations
in $UT_n lr((R))$. Thus, $UT_n lr((R, g_1, dots, g_(n - 1)))$ is an
$(n - 1)$-step nilpotent group.

In @sec:quasi-unitriangular-relations, we find generators and defining relations
of quasi-unitriangular groups (cf. @thm:quasi-unitriangular-presentation).

For $i < j$ we denote by $t_(i j) lr((alpha))$ the transvection
$e + alpha e_(i j)$ in the group $U = UT_n lr((R, g_1, dots, g_(n - 1)))$. For
brevity, we write $t_(i j)$ instead of $t_(i j) lr((1))$. We introduce the
notation $U_(i j) = {t_(i j) lr((alpha)): alpha in R}$ for $i + 1 < j$ and
$U_(i, i + 1) = {t_(i, i + 1) lr((alpha)) + beta e_(1 n):
  alpha, beta in R}$ for $i < n$. It is obvious that $U_(i j)$ is a subgroup of
$U$ for $i < j$. We set
$
  bold(t) = {t_(i j): 1 <= i < j <= n}, quad
  frak(U) = {U_(i j): 1 <= i < j <= n}.
$
In @sec:one-parameter-subgroups, we list some properties of the expanded group
$(U, frak(U), bold(t))$. We show (cf. @sec:quasi-unitriangular-characterization)
that these properties provide an abstract characterization of expanded groups of
the form $(U, frak(U), bold(t))$, i.e., if $(H, frak(H), frak(h))$ satisfies a
finite set of first order sentences, then a ring $R$ can be interpreted in
$(H, frak(H), frak(h))$ without parameters. Here $R = Ring(H, frak(H), frak(h))$
is such that for symmetric 2-cocycles $g_1, dots, g_(n - 1)$ from $R^+$ to $R^+$
we have $(U, frak(U), bold(t)) tilde.eq (H, frak(H), frak(h))$, where
$U = UT_n lr((R, g_1, dots, g_(n - 1)))$ (cf.
@thm:quasi-unitriangular-characterization). As a consequence, we obtain an
abstract characterization of expanded groups $(U, frak(U), bold(t))$ in the case
where $U$ is an ordinary unitriangular group (cf.
@cor:unitriangular-characterization). To the characterizing axioms for
quasi-$UT_n$-groups we add the following (nonelementary) axiom: “$U_(1 n)$ is a
direct summand of $U_(i, i + 1)$, $1 <= i < n$.”

As is proved in @sec:one-parameter-definability, all subgroups $U_(i j)$ are
definable in $U$ with parameters $bold(t)$.

Therefore, we can regard Theorem~@thm:quasi-unitriangular-characterization and
Corollary~@cor:unitriangular-characterization as abstract characterizations of
expanded groups of the form $(U, bold(t))$, and write $Ring(H, frak(h))$ instead
of $Ring(H, frak(H), frak(h))$. By @thm:quasi-unitriangular-characterization,
the class of all quasi-$UT_n$-groups is finitely axiomatizable in the first
order logic. For brevity, we write $UT_n^* lr((R, g_1, dots, g_(n - 1)))$
instead of $(UT_n lr((R, g_1, dots, g_(n - 1))), bold(t))$.

The results characterizing quasi-$UT_n$-groups and $UT_n$-groups generalize the
Mal’tsev characterization of $UT_3$-groups.

Generalizing our method, Grünenwald and Haug @bib:grunenwald1993 described
expanded groups $(G, a_1, a_2)$ satisfying conditions (1)–(3) and the condition
obtained from (4) by replacing $Z(G)$ by $G'$. Such groups were called
_generalized unitriangular groups_.

In @sec:bases, we introduce the notion of a basis in a quasi-unitriangular
group. A tuple $frak(h)$ is called a _basis_ in a group $H$ if
$(H, frak(h)) tilde.eq (U, bold(t))$, where $U$ is
$UT_n lr((R, g_1, dots, g_(n - 1)))$ for some $R$, $g_1, dots, g_(n - 1)$. The
tuple $bold(t)$ is called the _standard basis_ in $U$. A basis $frak(h)$ in a
group $H$ is called a _splitting basis_ if for any $i$ the extension
$H_(1 n) <= H_(i, i + 1)$ splits or, which is equivalent,
$(H, frak(h)) tilde.eq UT_n^* lr((R))$ for some $R$. A basis $frak(h)$ is said
to be _pure_ if $H_(1 n)$ is a pure subgroup of $H_(i, i + 1)$ for any $i$. A
group is said to be _pure_ if it possesses a pure basis. We note that a tuple is
or is not a basis in $UT_n lr((R))$ and $UT_n lr((R, g_1, dots, g_(n - 1)))$
simultaneously.

Proposition~@prop:splitting-basis-criteria provides a number of sufficient
conditions for a basis to be a splitting basis. These simple results are used
throughout the paper.

In @sec:cartesian-products, we study the Cartesian product of
quasi-$UT_n$-groups. It turns out that the Cartesian product of a family of
groups is a quasi-$UT_n$-group if and only if every factor is a
quasi-$UT_n$-group (cf. @cor:cartesian-quasi-unitriangular-criterion). A
quasi-$UT_n$-group over a directly indecomposable ring is directly
indecomposable (cf. @cor:indecomposable-ring-group). Note that $UT_n lr((R))$ is
directly decomposable if and only if the ring $R$ is directly decomposable (cf.
@cor:unitriangular-product-decomposition). We use these facts in order to
construct examples.

As is proved in @sec:ring-nonuniqueness,
$UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq
UT_n lr((R^"op", g_(n - 1), dots, g_1))$ for any $R$, $g_1, dots, g_(n - 1)$. In
particular, $UT_n lr((R)) tilde.eq UT_n lr((R^"op"))$ (cf.
@cor:opposite-ring-unitriangular-isomorphism). We show (cf.
@prop:nonisomorphic-associated-rings) that there exist associative rings $R$ and
$S$ such that $UT_n lr((R)) tilde.eq UT_n lr((S))$ for any $n >= 3$ but
$R ≇ S, S^"op"$.

However, as is proved in @sec:ring-reconstruction, for any $n >= 3$ and
associative rings $R$ and $S$, from $UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq
UT_n lr((S, q_1, dots, q_(n - 1)))$ it follows that $R tilde.eq S$ if $R$ is
commutative. If $R$ is integral, then $R tilde.eq S$ or $R tilde.eq S^"op"$ (cf.
@th:quasi-groups-determine-ring). The method of the proof is based on the idea
of how to restore a ring from a bilinear mapping. This idea goes back to
Myasnikov @bib:myasnikov1990, who proved that any nondegenerate bilinear mapping
of abelian groups $f: A_1 times A_2 arrow A_0$ such that $f(A_1, A_2)$ generates
$A_0$ is $P_f$-bilinear for some commutative ring $P_f$ and some $P_f$-module
structures on $A_0$, $A_1$, and $A_2$, and $P_f$ is the largest ring with these
properties.

Let $n >= 3$, and let $G$ be an $(n - 1)$-step nilpotent group. Consider the
lower central series of $G$:
$ G = G_1 > G_2 > dots > G_(n - 1) > G_n = 1. $
It is easy to see that the mapping
$
  f_G: G_1 \/ G_2 times G_(n - 2) \/ G_(n - 1) arrow G_(n - 1), quad
  f_G lr((x G_2, y G_(n - 1))) = [x, y]
$
is a well-defined bilinear mapping of abelian groups. It is clear that
$G tilde.eq H$ implies $f_G tilde.eq f_H$. If
$U = UT_n lr((R, g_1, dots, g_(n - 1)))$, then $f_U$ can be explicitly computed
(cf. @prop:associated-bilinear-map-coordinates). In this case, $f_U$ is
isomorphic to the bilinear mapping
$
  f_n^R: R^(n - 1) times R^2 arrow R, quad
  f_n^R lr(((alpha, beta, overline(gamma)), (alpha', beta')))
  = alpha beta' - alpha' beta.
$
We prove that for any $n >= 3$ and associative rings $R$ and $S$ with unit such
that $f_n^R tilde.eq f_n^S$, the commutativity of $R$ implies that
$R tilde.eq S$ (cf. @prop:bilinear-centers). If $R$ is integral, then
$R tilde.eq S$ or $R tilde.eq S^"op"$ (cf. @prop:bilinear-integral-rings). By
these results, Theorem~@th:quasi-groups-determine-ring follows.

In @prop:basis-centralizer-criterion, we show that for $n = 3$ the above
characterization of expanded groups $UT_n^* lr((R))$ is a reformulation of
Mal’tsev’s characterization, and the characterization of expanded groups of the
form $UT_3^* lr((R, g_1, g_2))$ goes to the Mal’tsev conditions (1)–(4). In
particular, a pair $(a_1, a_2)$ in $UT_3 lr((R, g_1, g_2))$ satisfies conditions
(1)–(4) if and only if the triple $(a_1, a_2, [a_1, a_2])$ is a basis. We
indicate conditions on elements of the matrices $a_1$ and $a_2$ under which
conditions (1)–(4) are satisfied. If $R$ is a commutative associative ring, then
all pairs in $UT_3 lr((R, g_1, g_2))$ satisfying (1)–(4) can be described as
pairs $((alpha_1, beta_1, gamma_1),
  (alpha_2, beta_2, gamma_2))$ such that the element
$Delta = alpha_1 beta_2 - alpha_2 beta_1$ is invertible in $R$ (cf.
@prop:basis-centralizer-criterion). For brevity, we denote by
$(alpha, beta, gamma)$ the matrix
$ mat(delim: "[", 1, alpha, gamma; 0, 1, beta; 0, 0, 1). $

If $frak(h)$ is a basis in $UT_n lr((S, q_1, dots, q_(n - 1)))$, then
$
  (UT_n lr((S, q_1, dots, q_(n - 1))), frak(h)) tilde.eq
  UT_n^* lr((R, g_1, dots, g_(n - 1)))
$
for some $R$, $g_1, dots, g_(n - 1)$. Moreover, if $S$ is a commutative
associative ring, then $R tilde.eq S$ in view of
@th:quasi-groups-determine-ring. We show (cf. @prop:basis-transition-formula)
how to find, starting with $frak(h)$, $g_1$, and $g_2$, an explicit form of
cocycles $r_1$ and $r_2$ such that
$
  (UT_3 lr((S, q_1, q_2)), frak(h)) tilde.eq
  UT_3^* lr((S, r_1, r_2))
$
provided that the ring $S$ is commutative and associative. These formulas are
called the _transition formulas_, and will be useful in our further
considerations.

In @sec:central-isomorphisms, we study central isomorphisms between
quasi-$UT_n$-groups. An isomorphism $theta$ between
$UT_n lr((R, g_1, dots, g_(n - 1)))$ and $UT_n lr((R, g_1', dots, g_(n - 1)'))$
is said to be _central_ if it is the identity on the center and fixes the
standard basis modulo center. We describe such isomorphisms in
@prop:central-isomorphism-form. In @prop:congruent-bases-conjugate, we show that
if two bases in a quasi-unitriangular group are congruent modulo center, then
they are conjugate by a central automorphism.

In @sec:ring-isomorphisms, we study cases in which an isomorphism between rings
$R$ and $S$ induces an isomorphism between a quasi-$UT_n lr((R))$-group and a
quasi-$UT_n lr((S))$-group. If this happens, the corresponding isomorphism
between the groups is called a _ring isomorphism_.

In @sec:natural-isomorphisms, we consider the so-called _natural_ isomorphisms
between quasi-unitriangular groups. An isomorphism between a
quasi-$UT_n lr((R))$-group and a quasi-$UT_n lr((S))$-group is said to be
_natural_ if the image of the standard basis in the first group and the standard
basis in the second group are congruent modulo center. It turns out (cf.
@prop:natural-isomorphism-criterion) that an isomorphism is natural if and only
if it is the composition of a ring isomorphism and a central isomorphism. Two
quasi-$UT_n$-groups are said to be _naturally isomorphic_ if they are isomorphic
by a natural isomorphism. It turns out (cf. @prop:expanded-natural-isomorphism)
that $UT_n lr((R, g_1, dots, g_(n - 1)))$ and
$UT_n lr((S, q_1, dots, q_(n - 1)))$ are naturally isomorphic if and only if
$UT_n^* lr((R, g_1, dots, g_(n - 1))) tilde.eq
UT_n^* lr((S, q_1, dots, q_(n - 1)))$. If $UT_n lr((R, g_1, dots, g_(n - 1)))$
is isomorphic to a group, then $UT_n lr((R, g_1, dots, g_(n - 1)))$ is naturally
isomorphic to this group if and only if any two bases in
$UT_n lr((R, g_1, dots, g_(n - 1)))$ are conjugate by an automorphism (cf.
@prop:transitive-bases-natural-isomorphism).

In @sec:conjugacy-of-bases, we study conditions on a ring $R$ under which any
two bases in an arbitrary quasi-$UT_n lr((R))$-group are conjugate by an
automorphism. If this happens, then $R tilde.eq R^"op"$ and $Ext(R^+, R^+) = 0$
(cf. @prop:transitive-bases-necessary). For a commutative or integral ring $R$
the converse assertion is also true (cf. @prop:transitive-bases-criterion). But,
in general, the converse assertion fails (cf. @ex:opposite-ring-counterexample).

The following natural question arises: For what rings $R$ are any two bases in
$UT_n lr((R))$ conjugate by an automorphism? We answer this question in the case
of a commutative associative ring $R$ and $n = 3$. It turns out (cf.
@prop:three-dimensional-bases-coboundary) that for a commutative associative
ring $R$ any two bases in the group $UT_3 lr((R))$ are conjugate by an
automorphism if and only if the 2-cocycle $"pr": (x, y) arrow.bar x y$ from
$R^+$ to $R^+$ is a coboundary.

In @sec:multiplication-coboundary, we study conditions on a commutative
associative ring $R$ (not necessarily with unit) under which the cocycle $"pr"$
is a coboundary. It is easy to see that the condition $Ext(R^+, R^+) = 0$ is
sufficient. Therefore, $"pr"$ is a coboundary if $R^+$ is a divisible or free
abelian group. One more sufficient condition is the requirement that the ring
$R$ be _2-binomial_, i.e., the sentence $forall x exists ! y (x (x - 1) = 2 y)$
be true in $R$. By @prop:idempotent-torsion-obstruction, we can obtain new
examples of rings for which $"pr"$ is a coboundary.

Namely, the cocycle $"pr"$ for $R_1 times R_2$ is a coboundary if and only if
$"pr"$ is a coboundary for $R_1$ and $R_2$. If $"pr"$ is a coboundary for $R$,
then $2 n a = 0$ implies $n a = 0$ in $R$ for any natural number $n$ and
idempotent $a$ (cf. @prop:idempotent-torsion-obstruction). Therefore, if $R$ is
an integral domain and $"pr"$ is a coboundary for $R$, then $R$ is a
2-torsion-free ring (cf. @prop:integral-coboundary-torsion-free). In a ring $R$
of finite characteristic, $"pr"$ is a coboundary if and only if $char(R)$ is odd
(cf. @prop:finite-characteristic-coboundary). For a field $R$ the cocycle $"pr"$
is a coboundary if and only if $char(R) != 2$ (cf. @prop:field-coboundary). If
$R_1$ is obtained from $R$ by adjoining a unit, then the cocycle $"pr"$ is a
coboundary for $R_1$ if and only if it is a coboundary for $R$ (cf.
@prop:unit-adjunction-coboundary). Therefore, by adjoining the unit to the ring
with an arbitrary abelian group and zero multiplication, we obtain a ring with
an arbitrary additive group (possibly with 2-torsion) for which $"pr"$ is a
coboundary. If $"pr"$ is a coboundary for $R$, then $"pr"$ is a coboundary for
any free commutative associative $R$-algebra (cf.
@prop:free-algebra-coboundary).

If $g_1, dots, g_(n - 1)$ are coboundaries, then
$UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq UT_n lr((R))$
(cf. @prop:coboundary-central-map). In general, the converse assertion is not
true. For example (cf. @ex:multiplication-twist-trivial), for any commutative
associative ring $R$ we have
$
  UT_3 lr((R, "pr", 0)) tilde.eq UT_3 lr((R, 0, "pr"))
  tilde.eq UT_3 lr((R)),
$
although $"pr"$ is not necessarily a coboundary for $R$ (for example, as in the
case of rings of even characteristic, by
@prop:finite-characteristic-coboundary). In contrast with the above situation,
we note that
$ UT_3 lr((bb(Z)_2, "pr", "pr")) ≇ UT_3 lr((bb(Z)_2)) $
(cf. @prop:binary-field-nonunitriangular), but for any $zeta_1, zeta_2 in R$
$ UT_3 lr((R, zeta_1 "pr", zeta_2 "pr")) tilde.eq UT_3 lr((R)) $
if $R$ is an algebraically closed field of characteristic $2$ (cf.
@prop:algebraically-closed-twists).

In @sec:unitriangular-twist-criterion, we obtain results concerning the
following conjecture: For a ring $R$ the following conditions are equivalent:

- (1) $UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq UT_n lr((R))$ for any
  $g_1, dots, g_(n - 1)$,
- (2) $Ext(R^+, R^+) = 0$.

It is easy to see that (2) implies (1). However, even for a commutative
associative ring $R$ and $n = 3$ it is not known if (1) implies (2). We will
focus our attention on this case.

Proposition~@prop:small-extension-group is an approximation of the implication
(1)$==>$(2). Namely, if (1) holds, then $Ext(R^+, R^+)$ is small in the
following sense: any symmetric 2-cocycle from $R^+$ to $R^+$ is cohomologous to
$zeta "pr"$ for some $zeta in R$. The ring $bb(Z)_2$ illustrates the case where
$Ext(R^+, R^+)$ is small but nontrivial. Furthermore, if a subring $S$ of $R$ is
isomorphic to $bb(Z)_2$ and $R^+ tilde.eq S^+ ⊕ A$, where $A$ is a divisible
torsion-free abelian group, then $Ext(R^+, R^+)$ is small but nontrivial (cf.
@prop:small-nontrivial-example). These examples are not accidental. If
$Ext(R^+, R^+)$ is small but nontrivial, then $R^+$ contains an involution (cf.
@prop:small-extension-involution). Moreover, if $R^+$ is the direct sum of
finite cyclic groups, then $Ext(R^+, R^+)$ is small if and only if
$R tilde.eq bb(Z)_2$ (cf. @prop:finite-cyclic-additive-smallness). For an
integral domain $R$, $Ext(R^+, R^+)$ is small but nontrivial if and only if
$R tilde.eq bb(Z)_2$ (cf. @prop:integral-smallness).

The above results mean that (1)$<==>$(2) for $n = 3$ and a commutative
associative ring $R$ satisfying the following additional assumption: either $R$
is an integral domain or $R^+$ is the direct sum of finite cyclic subgroups (cf.
@prop:finite-cyclic-twist-conjecture and @prop:integral-twist-conjecture).

For any $n >= 3$, a ring $R$ and the expanded group $UT_n^* lr((R))$ can be
interpreted in each other (uniformly in $R$). In
@sec:ring-group-interpretability, we consider the relationship between these
interpretations.

Let $Gamma$ be a natural interpretation of $UT_n^* lr((R))$ in $R$, and let
$Delta$ be the interpretation of $R$ in $UT_n^* lr((R))$ introduced in
@sec:quasi-unitriangular-characterization. It turns out (cf.
@prop:homotopic-composition) that the pair $(Gamma, Delta)$ is a
bi-interpretation (in the sense of @bib:ahlbrandt1986) if and only if
$R tilde.eq ZZ_m$ for some $m$. Furthermore, for an algebraically closed field
$R$ we can prove that $R$ and $UT_n lr((R))$ are not bi-interpretable (cf.
@prop:algebraically-closed-no-biinterpretation).

The group $UT_n lr((R))$ is interpretable in a ring $R$ without parameters. The
following natural question arises: Is it possible to interpret $R$ in
$UT_n lr((R))$ without parameters or at least with definable parameters (in the
sense of @bib:hodges1993, p. 213)? In general, this is not so, because there
exists an associative ring $R$ such that $"Th" lr((UT_n lr((R))))$ is decidable
for any $n >= 3$, whereas $"Th" lr((R))$ is undecidable (cf.
@thm:distinct-ring-group-turing-degrees). However, if $R$ is commutative and
associative, then for any $n >= 3$ the ring $R$ is interpretable in
$UT_n lr((R))$ without parameters (cf. @prop:parameter-free-commutative-ring).
For an integral associative ring $R$ and any $n >= 3$ the ring $R times R^"op"$
and the group $UT_n lr((R))$ are interpretable in each other with definable
parameters (cf. @prop:opposite-ring-interpretation).

From these results we obtain a recursive isomorphism between the theories
$"Th" lr((UT_n lr((R))))$ and $"Th" lr((R))$ for any $n >= 3$ if the associative
ring $R$ is commutative or integral (cf. @prop:recursive-theory-isomorphism).

In Section @sec:unitriangular-models, we study models of elementary theories of
some classes of unitriangular groups. First of all, we show (cf.
@prop:ring-class-quasi-axioms) that for any $n >= 3$ and any finitely
axiomatizable class of rings $cal(K)$, the class of groups that are isomorphic
to groups $UT_n lr((R,g_1,dots,g_(n-1)))$ for $R in cal(K)$ is finitely
axiomatizable. As is shown in @prop:product-ring-counterexample, the word
“finitely” is essential in this formulation.

For $n >= 3$ the class of all expanded groups $UT_n^* lr((R))$ is not
axiomatizable (cf. @prop:expanded-class-nonaxiomatizable). However, the theory
of this class is recursively axiomatizable. Models of this theory are expanded
groups of the form $UT_n^* lr((R,g_1,dots,g_(n-1)))$, where $g_1,dots,g_(n-1)$
are pure cocycles (cf. @prop:expanded-unitriangular-theory). For any $R$, the
models of $"Th" lr((UT_n^* lr((R))))$ are exactly expanded groups
$UT_n^* lr((S,q_1,dots,q_(n-1)))$ for $S equiv R$ and pure $q_1,dots,q_(n-1)$
(cf. @cor:expanded-elementary-models).

Thus, in the case of $UT_n^* lr((R))$, the situation looks like the case of
niltriangular rings which was studied by Videla @bib:videla1988. It turns out
that the situation is significantly more complicated for $UT_n lr((R))$.

For $m in omega$ a basis in a group $H$ is said to be $m$-pure if $H_(1 n)$ is
an $m$-pure subgroup of $H_(i,i+1)$ for all $i$. A subgroup $A$ of an abelian
group $B$ is said to be $m$-pure if $A ∩ m B = m A$. A quasi-unitriangular group
is said to be locally pure if for any finite $I subset omega$ it has a basis
that is $m$-pure for all $m in I$.

We show (cf. @prop:locally-pure-group-theory) that for any $n >= 3$ the theory
of the class of all $UT_n$-groups is recursively axiomatizable, and models of
this theory are exactly locally pure quasi-$UT_n$-groups. It turns out (cf.
@prop:purity-not-elementary) that the notion of a pure quasi-$UT_n$-group does
not coincide with that of a locally pure quasi-$UT_n$-group. In
@prop:ordinary-axiomatizable-closure, for any class $cal(K)$ of rings and
$n >= 3$ we characterize models of the theory of a class of groups
$UT_n lr((R))$, $R in cal(K)$.

If an associative ring $S$ is commutative or integral, then
$UT_n lr((R,g_1,dots,g_(n-1))) equiv UT_n lr((S,q_1,dots,q_(n-1)))$ implies
$R equiv S$ or $R equiv S^"op"$. We note that for an arbitrary associative ring
$S$ this assertion fails. There exist finite associative rings $R$ and $S$ such
that $UT_n lr((R)) tilde.eq UT_n lr((S))$ but $R$ is isomorphic to neither $S$
nor $S^"op"$ (cf. @prop:nonisomorphic-associated-rings and
@prop:asymmetric-triangular-ring). This gives a negative answer to Videla’s
question: Is it true that $UT_n lr((R)) equiv UT_n lr((S))$ implies $R equiv S$?

If a torsion-free associative ring $S$ is commutative or integral, then
$G equiv UT_n lr((S))$ if and only if $G$ is $UT_n lr((R,g_1,dots,g_(n-1)))$ for
some $R equiv S$ (cf. @prop:torsion-free-elementary-models).

If the additive group of a ring $S$ is the direct sum of a bounded group and a
divisible group, then the following assertions hold:

(i) If a group is elementarily equivalent to $UT_n lr((S))$, then it is
$UT_n lr((R))$ for some $R$.

(ii) An expanded group is elementarily equivalent to $UT_n^* lr((S))$ if and
only if it is an expanded group $UT_n^* lr((R))$ for some $R equiv S$.

(iii) If $"Th" lr((S))$ is finitely axiomatizable, then
$"Th" lr((UT_n lr((S))))$ is finitely axiomatizable (cf.
@prop:bounded-divisible-models).

Assertion (iii) allows us to construct examples of infinite groups with finitely
axiomatizable theories. For example, for $S$ we can take an atomless Boolean
ring.

In general, it is impossible to choose a ring $R$ in (i) such that $R$ is
elementarily equivalent to the ring $S$ (cf. @prop:product-ring-counterexample).
If, in addition, $S$ is commutative or integral, then a group is elementarily
equivalent to $UT_n lr((S))$ if and only if it is $UT_n lr((R))$ for some
$R equiv S$ (cf. @prop:bounded-divisible-ring-models). In particular, this is so
if $S$ is a skew field.

In @cor:ordinary-class-nonaxiomatizable, we prove that the class of all
$UT_3$-groups is not elementarily closed; moreover, there exists a group that is
elementarily equivalent to $UT_3 lr((ZZ))$ and is not isomorphic to any
$UT_3$-group (cf. @prop:nonunitriangular-integer-model). The last assertion
disproves the result of @bib:myasnikov1989 asserting that a group is
elementarily equivalent to $UT_n lr((ZZ))$ if and only if it is $UT_n lr((R))$
for some $R equiv ZZ$. In fact, such a group is $UT_n lr((R,g_1,dots,g_(n-1)))$
for some $R equiv ZZ$. However, it is not obvious that $UT_3 lr((R,g_1,g_2))$
need not be isomorphic to $UT_3 lr((R))$ for $R equiv ZZ$. The proof is based on
our results asserting a peculiar role of the cocycle $"pr"$ and the fact that
$"Ext" lr((R^+,R^+)) != 0$ for some $R equiv ZZ$.

The main result of @sec:locally-pure-nonpure-example is an example of a locally
pure but not pure quasi-$UT_3$-group. Using generators and defining relations,
we indicate a commutative associative ring $R$ such that the group
$UT_3 lr((R,"pr","pr"))$ has the required property. From this result we conclude
that the class of $UT_3$-groups and the class of pure quasi-$UT_3$-groups are
not elementarily closed (cf. @prop:purity-not-elementary). Simultaneously, we
find that the theory of the class of $UT_3$-groups is not finitely axiomatizable
(cf. @th:no-finite-unitriangular-axioms) although it is recursively
axiomatizable (cf. @prop:locally-pure-group-theory).

In @sec:models-counterexample, we prove that the theory of the $UT_n$-group over
a ring $R$ does not determine the theory of $R$. We construct an associative
ring $R$ (of prime characteristic) such that for any $n >= 3$ a group
$G equiv UT_n lr((R))$ cannot be represented as $UT_n lr((S,q_1,dots,q_(n-1)))$
for any $S equiv R$ (cf. @prop:product-ring-counterexample).

In Section @sec:spectrum-function, we consider the number of models of the
theory of a unitriangular group. Answering the Videla question (@bib:videla1986,
@bib:videla1988), we construct (cf. @sec:spectrum-negative-result) an example of
an associative ring $R$ such that $I lr((lambda,UT_n lr((R))))$ and
$I lr((lambda,R))$ are finite and different for some uncountable $lambda$ (cf.
@thm:spectrum-function-counterexample). By the results of Lachlan
@bib:lachlan1975, this is possible only if the ring $R$ is $aleph_0$-categorical
and $aleph_0$-stable and $lambda < aleph_omega$.

In @sec:finite-uncountable-spectrum we show that the following situation is
impossible: the cardinals $I lr((lambda,R))$ and $I lr((lambda,UT_n lr((R))))$
are different for some uncountable $lambda$; moreover one of these cardinals is
finite and the other is infinite (cf. @cor:finite-spectrum-transfer). This is
valid in view of the following general result. Let $M'$ be an expansion of a
structure $M$ by a finite number of constants, and let $lambda > aleph_0$. Then
$I lr((lambda,M))$ is finite if and only if $I lr((lambda,M'))$ is finite (cf.
@cor:finite-spectrum-constant-expansion).

This result is a consequence of the following theorem: a complete countable
theory $T$ has a finite number of models in some uncountable cardinality if and
only if $T$ is uncountably categorical or some extension of $T$ by definitions
is almost totally categorical (cf.
@thm:finite-spectrum-almost-total-categoricity).

The notion of an almost totally categorical theory was introduced and studied by
the author in 1971 (see @bib:belegradek1973). By an almost totally categorical
theory we mean an $aleph_0$-categorical theory that has a model with a
one-cardinal set of rank 1. As was proved in @bib:belegradek1973, if $T$ is
almost totally categorical, then $I lr((aleph_m,T)) < aleph_0$ for any
$m < omega$.

Lachlan (@bib:lachlan1975, p. 481) formulated the following open question
concerning the structure of theories with a finite number of models in some
uncountable cardinality: “In some sense every known example can be seen as a
combination of a finite number of theories categorical in every infinite power.
Can this idea be formalized and demonstrated for all such theories?” It seems
that Theorem @thm:finite-spectrum-almost-total-categoricity solves this problem
if we take into account the fact that the structure of $aleph_0$-categorical
strongly minimal sets is known (@bib:zilber1984, @bib:cherlin1985).

In @sec:spectrum-positive-results, we present positive results on the connection
between $I lr((lambda,UT_n lr((R))))$ and $I lr((lambda,R))$. By Shelah’s
theorem @bib:shelah1990, for a nonsuperstable theory $"Th" lr((R))$ we have
$I lr((lambda,UT_n lr((R)))) = I lr((lambda,R)) = 2^lambda$ for any uncountable
$lambda$, since $R$ and $UT_n lr((R))$ are interpretable in each other. If
$"Th" lr((R))$ is not small, then
$I lr((aleph_0,UT_n lr((R)))) = I lr((aleph_0,R)) = 2^(aleph_0)$. If an
associative ring $R$ is commutative or integral and $"Th" lr((R))$ is stable or
small, then $G equiv UT_n lr((R))$ if and only if $G tilde.eq UT_n lr((S))$ for
some $S equiv R$ (cf. @prop:commutative-integral-group-models). Therefore, for
any commutative associative ring $R$ and infinite cardinal $lambda$ we have
$I lr((lambda,UT_n lr((R)))) = I lr((lambda,R))$ (cf.
@prop:commutative-spectrum-equality). If an associative ring $R$ is integral,
then $I lr((lambda,UT_n lr((R)))) = I lr((lambda,R))$ for any uncountable
$lambda$, and $I lr((aleph_0,UT_n lr((R)))) <= I lr((aleph_0,R))$; moreover, the
strict inequality holds if and only if $R$ is a skew field, $I lr((aleph_0,R))$
is finite, and there exists a countable ring $S$ such that
$S equiv S^"op" equiv R$ but $S tilde.eq.not S^"op"$ (cf.
@prop:integral-uncountable-spectrum and @prop:integral-countable-spectrum). The
question of whether such a situation is possible remains open. However, the
existence of such a skew field $R$ seems to be unlikely.

In @sec:stability-smallness, we indicate several applications of unitriangular
groups which answer some questions formulated in the literature.

Baldwin and Saxl @bib:baldwin1976 asked about the existence of stable but not
$aleph_0$-stable groups of bounded exponent. Such an example was first given by
the author @bib:belegradek1978 (see also @bib:baldwin1979). Namely, if $F$ is a
separably closed but not algebraically closed field of characteristic $p$, then
$UT_n lr((F))$ is a group of exponent dividing $p^(n-1)$ that has a stable
nonsuperstable theory (cf. @cor:stable-nonsuperstable-bounded-group). This
question occurred in connection with the open problem of the existence of groups
that are $aleph_0$-categorical and stable but not $aleph_0$-stable.

Meirembekov @bib:meirembekov1986 noted that every abelian-by-finite group has a
stable theory. In connection with this fact, he asked whether there exists an
unstable group that has a definable stable subgroup of finite index. Using
unitriangular groups, for any $m >= 2$ we construct an example of an unstable
group having an uncountably categorical $m$-step nilpotent subgroup of index 2
such that this subgroup is definable without parameters. These results give a
positive answer to the above question (cf. @prop:unstable-index-two-subgroup).

In @sec:uncountably-categorical-rings, we study unitriangular groups over
uncountably categorical rings. We prove that a ring $R$ is uncountably
categorical if and only if $UT_n lr((R))$ is uncountably categorical (cf.
@prop:ring-group-uncountable-categoricity). However, for any ring $R$ and
$n >= 3$ the group $UT_n lr((R))$ is not almost strongly minimal (cf.
@prop:failure-almost-strong-minimality).

If a ring $R$ is countably categorical, then $G equiv UT_n lr((R))$ if and only
if $G tilde.eq UT_n lr((S))$ for some $S equiv R$ (cf.
@prop:countable-group-categoricity). The question of whether a similar assertion
is true for an uncountably categorical ring $R$ remains open.

We prove the following assertion (cf.
@prop:prime-model-isolated-basis–@prop:morley-tower-correspondence). Let $R$ be
an uncountably categorical ring, and let $R_0$ be a prime model of
$"Th" lr((R))$. The following conditions are equivalent:

(i) $G equiv UT_n lr((R))$ if and only if $G tilde.eq UT_n lr((S))$ for some
$S equiv R$.

(ii) $UT_n lr((R_0))$ is a prime model of $"Th" lr((UT_n lr((R))))$.

(iii) The standard basis $bold(t)$ realizes an isolated type in
$UT_n lr((R_0))$.

If, in addition, $R$ is a commutative or integral ring, then (i)–(iii) hold. In
contrast, we mention (cf. @prop:prime-ring-nonprime-group) that for the ring
$S = ZZ times QQ$ the following assertions hold:

(a) $S$ is a prime minimal model.

(b) $UT_3 lr((S))$ is a minimal but not prime model.

(c) The type of the standard basis in $UT_3 lr((S))$ is isolated.

By @prop:isolated-basis-characterization, the type of the standard basis in
$UT_n lr((R))$ is isolated if and only if the groups that are elementarily
equivalent to $UT_n lr((R))$ are precisely the groups
$UT_n lr((S,q_1,dots,q_(n-1)))$ for $S equiv R$ and pure cocycles $q_i$,
$i = 1,2,dots,n-1$.

Thus, there are two reasons why the standard basis in $UT_n lr((R))$ realizes a
nonisolated type. Both can occur. For the ring $R$ from
@prop:product-ring-counterexample, the standard basis in $UT_n lr((R))$ realizes
a nonisolated type in view of the first reason. Let $R$ be the commutative
associative ring from @prop:purity-not-elementary such that
$H = UT_3 lr((R,"pr","pr"))$ is locally pure but not pure. If $H' equiv H$ and
$H'$ is $aleph_1$-saturated, then $H' tilde.eq UT_3 lr((R'))$ for some
$R' equiv R$ (cf. the proof of @prop:purity-not-elementary). Hence the standard
basis in $UT_3 lr((R'))$ realizes a nonisolated type in view of the second
reason.

These examples demonstrate that the case of unitriangular groups significantly
differs from the case of niltriangular rings.

We also use unitriangular groups to construct a counterexample that gives an
answer to the following question (Meirembekov @bib:meirembekov1986): Is it true
that if $H$ is a definable normal subgroup of a group $G$, then
$I lr((lambda,G)) >= I lr((lambda,G\/H))$ for any cardinal $lambda$? We prove
(cf. @prop:categorical-group-noncategorical-quotient) that there exists an
uncountably categorical group $G$ such that $G\/Z lr((G))$ is not uncountably
categorical.

In Section @sec:undecidability, we consider the question of undecidability for
theories of unitriangular groups. The main problem studied in
@sec:undecidability-positive-results is the relationship between the degrees of
unsolvability of the theories $"Th" lr((R))$ and $"Th" lr((UT_n lr((R))))$.
Since $R$ is interpretable in $UT_n lr((R,g_1,dots,g_(n-1)))$ with parameters,
the hereditary undecidability of $"Th" lr((R))$ implies the hereditary
undecidability of $"Th" lr((UT_n lr((R,g_1,dots,g_(n-1)))))$. Therefore, the
theory of the class of all $UT_n$-groups and the theory of the class of all
quasi-$UT_n$-groups are undecidable but recursively enumerable.

As was mentioned above, if an associative ring $R$ is commutative or integral,
then the theories $"Th" lr((R))$ and $"Th" lr((UT_n lr((R))))$ are recursively
isomorphic. In general, this assertion is not true. We prove (cf.
@thm:distinct-ring-group-turing-degrees) that for any Turing degrees $bold(d)_1$
and $bold(d)_2$ such that $bold(d)_1 <= bold(d)_2$ there exists an associative
ring $R$ such that for any $n >= 3$, $"Th" lr((UT_n lr((R))))$ has degree
$bold(d)_1$, whereas $"Th" lr((R))$ has degree $bold(d)_2$.

At first glance, the statement of the problem studied in
@sec:decision-problem-degrees is not at all related to unitriangular groups.
However, this problem admits a simple solution by using the Mal’tsev
correspondence. For a group formula $phi lr((bold(x)))$ the first order decision
problem $? bold(x) phi lr((bold(x)))$ for a finitely presented group $G$ is to
decide, for a tuple $bold(x)$, whether the formula $phi lr((bold(x)))$ holds in
$G$. It is easy to see that the Turing degree for this problem is arithmetic.

Sacerdote @bib:sacerdote1972b formulated the following conjecture: For any
arithmetic degree of unsolvability $D$, there exist a first order decision
problem $P$ and a finitely presented group $G$ such that $P$ has degree $D$ for
$G$.

This question was stimulated by a problem stated by Boone (cf.
@bib:sacerdote1972), who conjectured that the Turing degree for any first order
decision problem for any finitely presented group is recursively enumerable.
Sacerdote @bib:sacerdote1972b disproved this assertion by constructing a
finitely presented group $G$ and a formula $phi lr((bold(x)))$ such that the
problem $? bold(x) phi lr((bold(x)))$ has degree $0''$ for $G$.

We prove the Sacerdote conjecture in the following stronger form. The group
$UT_3 lr((ZZ))$ is a free 2-step nilpotent group of rank 2 and, consequently, is
finitely presented. We show (cf. @thm:arithmetical-decision-problem-degree) that
for any arithmetic $m$-degree $bold(d)$ there exists a group formula
$phi_(bold(d)) lr((x))$ in one free variable such that the problem
$? x phi_(bold(d)) lr((x))$ has $m$-degree $bold(d)$ for $UT_3 lr((ZZ))$.
