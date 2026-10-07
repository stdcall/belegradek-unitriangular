#import "main-defs.typ": *
#import "statements.typ": *

= Models of the theory of a unitriangular group
<sec:unitriangular-models>

== Theories of classes of quasi-unitriangular groups
<sec:quasi-unitriangular-theories>

#proposition[
  For any $n >= 3$ the class of all quasi-$UT_n$-groups is finitely
  axiomatizable.
] <prop:quasi-class-finite-axioms>

#proof[
  The sentence $exists overline(x) op("Basis")_n lr((overline(x)))$ serves as an
  axiom of this class, where the formula $op("Basis")_n lr((overline(x)))$ was
  constructed in @prop:basis-formula.
]

Furthermore, the following assertion holds.

#proposition[
  Let $n >= 3$, and let $frak(R)$ be a finitely axiomatizable class of rings
  with unit that are associative if $n>3$. Then the class of all
  quasi-$UT_n lr((R))$-groups, $R in frak(R)$, is finitely axiomatizable.
] <prop:ring-class-quasi-axioms>

#proof[
  Let $Delta$ be the interpretation of $R$ in
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$ from @sec:ring-group-interpretability.
  Then for any sentence $phi$ of the signature of rings, any group $H$, and any
  basis $frak(h)$ in $H$ we have $H models phi_Delta lr((frak(h)))$ if and only
  if $Ring(H, frak(h)) models phi$. Let $psi$ be an axiom defining the class
  $frak(R)$. Then the class of quasi-$UT_n lr((R))$-groups, $R in frak(R)$, is
  defined by the axiom $exists overline(x)(op("Basis")_n lr((overline(x))) and
    psi_Delta lr((overline(x))))$.
]

_Remark._ The word “finitely” cannot be eliminated in
@prop:ring-class-quasi-axioms. In @prop:product-ring-counterexample, we
construct an associative ring $R$ with unit such that for any $n >= 3$ there
exists a group $G$ that is elementarily equivalent to the group $UT_n lr((R))$
but is not isomorphic to the quasi-$UT_n lr((S))$-group for any $S equiv R$. Let
$frak(R)=op("Mod") Th(R)$. Then the class of quasi-$UT_n lr((S))$-groups,
$S in frak(R)$, is not elementarily closed, although the class $frak(R)$ is
axiomatizable.

== Theories of classes of unitriangular groups
<sec:unitriangular-theories>

The following question arises. Do analogs of the results in
@sec:quasi-unitriangular-theories hold for unitriangular groups? In particular,
is the class of all $UT_n$-groups axiomatizable? The axiomatizability of the
class of all quasi-$UT_n$-groups is caused by the first order definability of
the notion of a quasi-$UT_n$-basis. Since $UT_n$-groups are exactly the groups
possessing a splitting basis, the question under consideration is connected with
the question of the definability of the notion of a splitting basis.

We treat the following similar but considerably simpler question. Is the class
$frak(R)$ of abelian groups of the form $A ⊕ B$ with a distinguished subgroup
$A$ axiomatizable? The answer is negative, as follows from the considerations
below.

We consider a theory $T$ of signature ${+,P^((1))}$ whose models are abelian
groups with a distinguished pure subgroup. The axioms for $T$ assert that $+$ is
a commutative group operation, $P$ is a subgroup, and $P$ is $n$-pure for any
$n$. (A subgroup $A$ of a group $C$ is said to be _n-pure_ if
$A inter n C=n A$.) Thus, $T$ is defined by an infinite recursive set of axioms.
It is clear that $T subset Th(frak(R))$. We show that $T$ is a system of axioms
for $Th(frak(R))$. Let $cal(M)$ be a model of $T$. We consider an
$aleph_1$-saturated model $cal(N)=(C,A)$ such that $cal(N) equiv cal(M)$. It is
obvious that the group $A$ is also $aleph_1$-saturated and, consequently, is
pure injective @bib:eklof1972. Therefore, $C=A ⊕ B$ for some $B<C$. Hence
$cal(N) in frak(R)$. Thus, $cal(M)$ is a model of $Th(frak(R))$.

It is clear that the class $frak(R)$ is not axiomatizable. Indeed, let $A <= C$
be a pure non-split extension of abelian groups. Then $cal(M)=(C,A)$ is a model
of $Th(frak(R))$, but $cal(M) in.not frak(R)$.

This idea allows us to indicate, for any $n >= 3$, a recursive system of axioms
for the theory of the class of all $UT_n^ast lr((R))$, and to show that this
class is not axiomatizable.

For a class of rings $frak(R)$ we denote by $UT_n lr((frak(R)))$ the class of
all $UT_n lr((R))$ such that $R in frak(R)$, and by $UT_n^ast lr((frak(R)))$ the
class of all $UT_n^ast lr((R))$ such that $R in frak(R)$. The classes of all
groups $UT_n lr((R))$ and $UT_n^ast lr((R))$ are simply denoted by $UT_n$ and
$UT_n^ast$ respectively.

#proposition[
  The theory of the class $UT_n^ast$ is recursively enumerable for any $n >= 3$.
  Models of this theory are exactly expanded groups
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$, where every cocycle $g_i$ is pure.
] <prop:expanded-unitriangular-theory>

#proof[
  For a recursive system of axioms for the class of all expanded groups
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$, where every cocycle $g_i$ is pure, we can
  take a set of first order sentences that asserts about $(H,frak(h))$ the
  following: $frak(h)$ is a basis in $H$ and $phi_(1 n) lr((H,frak(h)))$ is an
  $m$-pure subgroup of $phi_(i,i+1) lr((H,frak(h)))$ for all $m,i$. Such
  sentences exist in view of @prop:one-parameter-positive-definability and
  @prop:basis-formula. It is obvious that any $UT_n^ast lr((R))$ is a model of
  this system of axioms.

  Conversely, we show that for an arbitrary model $cal(M)$ of this system of
  axioms any $aleph_1$-saturated model $cal(N)$ such that $cal(N) equiv cal(M)$
  is isomorphic to some $UT_n^ast lr((R))$. Indeed, let $cal(N)=(H,frak(h))$.
  Then the group $Z(H)$ is $aleph_1$-saturated. By
  @prop:splitting-basis-criteria (5), $frak(h)$ is a splitting basis.
]

#proposition[
  For any $n >= 3$ the class $UT_n^ast$ is not axiomatizable.
] <prop:expanded-class-nonaxiomatizable>

#proof[
  Let $R$ be a torsion-free associative ring such that $Ext(R^+, R^+) != 0$ (for
  example, the ring $D$ from @ex:binomial-converse-counterexamples). Since $R$
  is a torsion-free ring, any cocycle of $S^2(R^+,R^+)$ is pure. Let
  $g_1,dots,g_(n-1) in S^2(R^+,R^+)$. Assume that not all $g_i$ are
  coboundaries. By @prop:expanded-unitriangular-theory,
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$ is a model of $Th(UT_n^ast)$. However,
  $UT_n^ast lr((R,g_1,dots,g_(n-1))) in.not UT_n^ast$; otherwise, every $g_i$
  would be a coboundary by @prop:natural-isomorphism-criterion.
]

#proposition[
  Let $n >= 3$, and let $frak(R)$ be a class of rings with unit that are
  associative if $n>3$. Then the axiomatizable closure of the class
  $UT_n^ast lr((frak(R)))$ is the class $frak(U)$ of all
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$, where every $g_i$ is pure and
  $R models Th(frak(R))$.
] <prop:expanded-axiomatizable-closure>

#proof[
  It is obvious that $UT_n^ast lr((frak(R))) subset frak(U)$. Let $Gamma$ and
  $Delta$ be the interpretations from @prop:mutual-ring-group-interpretation.
  The class $frak(U)$ is axiomatizable. Indeed, the system of axioms for
  $Th(UT_n^ast)$ from @prop:expanded-unitriangular-theory, together with all
  sentences of the form $phi_Delta lr((overline(c)))$, where
  $phi in Th(frak(R))$, serves as a system of axioms for $frak(U)$. It remains
  to show that any $UT_n^ast lr((R,g_1,dots,g_(n-1)))$ in $frak(U)$ is a model
  of $Th(UT_n^ast lr((frak(R))))$. We can assume that this structure is
  $aleph_1$-saturated. By @prop:splitting-basis-criteria (5), the standard basis
  in $UT_n lr((R,g_1,dots,g_(n-1)))$ is a splitting basis. Hence
  $UT_n^ast lr((R,g_1,dots,g_(n-1))) tilde.eq UT_n^ast lr((R))$. Let
  $psi in Th(UT_n^ast lr((frak(R))))$. Then $UT_n^ast lr((S)) models psi$ for
  any $S in frak(R)$. Consequently, $S models psi_Gamma$ for any $S in frak(R)$.
  Therefore, $R models psi_Gamma$. Thus, $UT_n^ast lr((R)) models psi$.
]

#corollary[
  Structures that are elementarily equivalent to $UT_n^ast lr((S))$ are
  precisely the expanded groups of the form $UT_n^ast lr((R,g_1,dots,g_(n-1)))$,
  where $R equiv S$ and every $g_i$ is pure.
] <cor:expanded-elementary-models>

The above results might give one the idea that models of the theory of the class
$UT_n$ are precisely all pure quasi-$UT_n$-groups, and the groups that are
elementarily equivalent to $UT_n lr((S))$ are precisely the groups of the form
$UT_n lr((R,g_1,dots,g_(n-1)))$, where $R equiv S$ and every $g_i$ is pure.
However, the real situation is more complicated.

For $m in omega$ a basis $frak(h)$ in a quasi-$UT_n$-group $H$ is said to be
_m-pure_ if $phi_(1 n) lr((H,frak(h)))$ is an $m$-pure subgroup of
$phi_(i,i+1) lr((H,frak(h)))$ for all $i$. For $I subset omega$ a basis is said
to be _I-pure_ if it is $m$-pure for all $m in I$. It is obvious that a basis is
pure if and only if it is an $omega$-pure basis, and any pure basis is $I$-pure
for any $I subset omega$. A quasi-$UT_n$-group is said to be _locally pure_ if
it has an $I$-pure basis for any finite $I subset omega$. It is obvious that any
pure quasi-$UT_n$-group (in particular, any $UT_n$-group) is locally pure.

#proposition[
  For any $n >= 3$ the theory of $UT_n$ is recursively enumerable. Models of
  $Th(UT_n)$ are exactly locally pure quasi-$UT_n$-groups.
] <prop:locally-pure-group-theory>

#proof[
  For a recursive system of axioms for the class of all locally pure
  quasi-$UT_n$-groups we can take the set of all sentences asserting the
  existence of $I$-pure bases for finite sets $I subset omega$. By
  @prop:one-parameter-positive-definability, such a sentence can be written for
  any finite $I subset omega$. Since any $UT_n$-group is locally pure, it
  suffices to prove that any locally pure quasi-$UT_n$-group is elementarily
  equivalent to a $UT_n$-group. Let $H$ be a locally pure quasi-$UT_n$-group. We
  consider an $aleph_1$-saturated model $H'$ such that $H' equiv H$. It is easy
  to see that $H'$ is pure. Moreover, $Z(H')$ is an $aleph_1$-saturated group.
  By @prop:splitting-basis-criteria (5) and @cor:unitriangular-characterization,
  $H'$ is a $UT_n$-group.
]

A question arises: Does the notion of purity coincide with that of local purity?
In @prop:purity-not-elementary, we give a negative answer to this question.

The following assertion generalizes @prop:locally-pure-group-theory.

#proposition[
  Let $n >= 3$, and let $frak(R)$ be a class of rings with unit that are
  associative if $n>3$. Then the axiomatizable closure of the class
  $UT_n lr((frak(R)))$ is the class $frak(X)$ of all quasi-$UT_n$-groups $H$
  such that for any finite $I subset omega$ and $phi in Th(frak(R))$ there is an
  $I$-pure basis $frak(h)$ in $H$ such that $Ring(H, frak(h)) models phi$.
] <prop:ordinary-axiomatizable-closure>

#proof[
  Let $phi$ be a sentence of the signature of rings, and let $I subset omega$ be
  a finite set. Using the interpretation $Delta$ from
  @prop:mutual-ring-group-interpretation, it is easy to construct a sentence
  $Phi(phi, I)$ in the group language that asserts the existence of an $I$-pure
  basis in a group $H$ such that $Ring(H, frak(h)) models phi$. Then the set of
  all sentences $Phi(phi, I)$, where $phi in Th(frak(R))$ and $I$ is a finite
  subset of $omega$, serves as a system of axioms for $frak(X)$. It is clear
  that $UT_n lr((frak(R))) subset frak(X)$, since, in the case
  $UT_n lr((frak(R)))$, for $frak(h)$ we can take the standard basis for any $I$
  and $phi$. It remains to show that any group $H in frak(X)$ is a model of
  $Th(UT_n lr((frak(R))))$. We can assume that $H$ is $aleph_1$-saturated. Then
  $H$ has a pure basis $frak(h)$ such that
  $Ring(H, frak(h)) models Th(frak(R))$. By
  @prop:expanded-axiomatizable-closure,
  $(H,frak(h)) models Th(UT_n^ast lr((frak(R))))$. Hence
  $H models Th(UT_n lr((frak(R))))$.
]

#proposition[
  Let $S$ be a commutative or integral torsion-free associative ring. Then a
  group is elementarily equivalent to $UT_n lr((S))$ if and only if it is
  $UT_n lr((R,g_1,dots,g_(n-1)))$ for some $R equiv S$.
] <prop:torsion-free-elementary-models>

#proof[
  _Sufficiency._ Let $R equiv S$. Then $R^+$ is a torsion-free group. Therefore,
  any cocycle of $S^2(R^+,R^+)$ is pure. By @cor:expanded-elementary-models,
  $UT_n^ast lr((R,g_1,dots,g_(n-1))) equiv
  UT_n^ast lr((S))$.

  To prove the necessity, we need the following assertion.
]

#proposition[
  Let $S$ be an associative ring, and let
  $
    UT_n lr((R,g_1,dots,g_(n-1))) equiv
    UT_n lr((S,q_1,dots,q_(n-1))).
  $
  If $S$ is commutative, then $R equiv S$. If $S$ is integral, then $R equiv S$
  or $R equiv S^op("op")$.
] <prop:elementary-groups-determine-ring>

#proof[
  By the Keisler–Shelah theorem @bib:shelah1971, two structures are elementarily
  equivalent if and only if their ultrapowers over some ultrafilter are
  isomorphic. Thus, for some ultrafilter $cal(D)$ we have
  $
    UT_n lr((R,g_1,dots,g_(n-1)))^cal(D) tilde.eq
    UT_n lr((S,q_1,dots,q_(n-1)))^cal(D).
  $
  Since
  $
    UT_n lr((R,g_1,dots,g_(n-1)))^cal(D) tilde.eq
    UT_n lr((R^cal(D),g_1^cal(D),dots,g_(n-1)^cal(D))), \
    UT_n lr((S,q_1,dots,q_(n-1)))^cal(D) tilde.eq
    UT_n lr((S^cal(D),q_1^cal(D),dots,q_(n-1)^cal(D))),
  $
  we have
  $
    UT_n lr((R^cal(D),g_1^cal(D),dots,g_(n-1)^cal(D))) tilde.eq
    UT_n lr((S^cal(D),q_1^cal(D),dots,q_(n-1)^cal(D))).
  $
  If $S$ is commutative, then $R^cal(D) tilde.eq S^cal(D)$ by
  @th:quasi-groups-determine-ring. If $S$ is integral, then
  $R^cal(D) tilde.eq S^cal(D)$ or $R^cal(D) tilde.eq (S^cal(D))^op("op")$, which
  yields the required assertion.
]

#proof(
  head: [Proof of Proposition~@prop:torsion-free-elementary-models
    (continued).],
)[
  _Necessity._ Let $G equiv UT_n lr((S))$. By @prop:locally-pure-group-theory,
  $G$ can be represented as $UT_n lr((R,g_1,dots,g_(n-1)))$. By
  @prop:elementary-groups-determine-ring, $R equiv S$ or $R^op("op") equiv S$.
  In particular, $R^+$ is a torsion-free group. Taking
  @prop:opposite-ring-twisted-isomorphism into account, we assert that, in any
  case, $G$ can be represented as $UT_n lr((R,g_1,dots,g_(n-1)))$ for some
  $R equiv S$.
]

#lemma[
  Let $A$ be an abelian group, and let $A=B ⊕ D$, where $B$ is a bounded group
  and $D$ is a divisible group. Let $I$ be the set of all primary divisors of
  the number $op("exp")(B)$. Then the abelian extension $A <= C$ is pure if and
  only if it is $I$-pure.
] <lem:bounded-divisible-purity>

#proof[
  The necessity is obvious. We prove the sufficiency. Since $D$ is a divisible
  group, it suffices to prove that $B$ is a pure subgroup of the group $C$,
  i.e., $B inter p^k C <= p^k B$ for any prime $p$ and natural $k$. We choose
  $m$ such that $p^m$ divides $op("exp")(B)$ and $p^(m+1)$ does not divide
  $op("exp")(B)$. Then $p^m B$ is a $p$-torsion-free group. Therefore, this
  group is $p$-divisible. Hence $p^k B=p^m B$ for $k >= m$. Since $B$ is a
  $p^m$-pure subgroup of $C$, for any $k >= m$ we have
  $ B inter p^k C <= B inter p^m C=p^m B=p^k B. $
  If $k <= m$, then $B inter p^k C <= p^k B$, since $p^k in I$ and $B$ is an
  $I$-pure subgroup of $C$.
]

#proposition[
  Let $S^+=B ⊕ D$, where $B$ is a bounded group and $D$ is a divisible group.
  Then the following assertions hold.

  (1) $(G,frak(g)) equiv UT_n^ast lr((S))$ if and only if
  $(G,frak(g)) tilde.eq UT_n^ast lr((R))$ for some $R equiv S$.

  (2) $G equiv UT_n lr((S))$ if and only if for any $phi in Th(S)$ there exists
  a model $R^phi$ of $phi$ such that $G tilde.eq UT_n lr((R^phi))$. In
  particular, $G equiv UT_n lr((S))$ implies $G tilde.eq UT_n lr((R))$ for some
  $R$.

  (3) If $Th(S)$ is finitely axiomatizable, then $Th(UT_n^ast lr((S)))$ and
  $Th(UT_n lr((S)))$ are finitely axiomatizable.
] <prop:bounded-divisible-models>

#proof[
  Let $m=op("exp")(B)$. Then $m S^+ tilde.eq D$ and $D$ is divisible. Therefore,
  if $A equiv S^+$, then $m A$ is divisible. Hence $A=m A ⊕ B'$ for some group
  $B'$. It is clear that $m B'=0$. Then $A$ is a pure injective group because it
  is the direct sum of a bounded group and a divisible group (cf.~@bib:fuchs1970
  [21.2, 27.5, 38.3]).

  (1) The sufficiency is obvious. We prove the necessity. Let
  $(G,frak(g)) equiv UT_n^ast lr((S))$. Then $Z(G) equiv S^+$ and, consequently,
  the group $Z(G)$ is pure injective. It is clear that $frak(g)$ is a pure
  basis. Therefore, it is a splitting basis by @prop:splitting-basis-criteria
  (1). Hence $(G,frak(g)) tilde.eq UT_n^ast lr((R))$ for some ring $R$. It is
  obvious that $R equiv S$.

  (2) The sufficiency is a special case of @prop:ordinary-axiomatizable-closure.
  We prove the necessity. Let $I$ be the set of all primary divisors of $m$. It
  is clear that $I$ is finite. Let $phi in Th(S)$. Since $G equiv UT_n lr((S))$,
  we see that, by @prop:ordinary-axiomatizable-closure, $G$ has an $I$-pure
  basis $frak(g)^phi$ such that $R^phi=Ring(G, frak(g)^phi)$ is a model of
  $phi$. By @lem:bounded-divisible-purity, the basis $frak(g)^phi$ is pure. By
  @prop:splitting-basis-criteria (1), $frak(g)^phi$ is a splitting basis.
  Therefore, $(G,frak(g)^phi) tilde.eq UT_n^ast lr((R^phi))$ in view of
  @cor:unitriangular-characterization.

  (3) If $Th(S)$ is defined by a single axiom $phi$, then the theory
  $Th(UT_n^ast lr((S)))$ is defined by a single axiom asserting about
  $(H,frak(h))$ that $frak(h)$ is an $I$-pure basis and $Ring(H, frak(h))$ is a
  model of $phi$. The theory of $UT_n lr((S))$ is defined by a single axiom
  asserting the existence of an $I$-pure basis such that the corresponding ring
  is a model of $phi$.
]

Peretyat’kin and Herre were independently interested in an example of an
infinite group whose theory is finitely axiomatizable.
Assertion~@prop:bounded-divisible-models (3) gives such examples, because there
exist infinite rings of finite characteristic with a finitely axiomatizable
theory. Examples of such rings are atomless Boolean rings. As is known, the
theory of all such rings is finitely axiomatizable and countably categorical.
Consequently, it is complete.

_Remark._ We will show (cf.~@prop:product-ring-counterexample) that, generally
speaking, $R$ in @prop:bounded-divisible-models (2) cannot be chosen so that
$R equiv S$. However, the following assertion holds.

#proposition[
  If $S$ is a commutative or integral associative ring such that $S^+=B ⊕ D$,
  where $B$ is a bounded group and $D$ is a divisible group, then
  $G equiv UT_n lr((S))$ if and only if $G tilde.eq UT_n lr((R))$ for some
  $R equiv S$.
] <prop:bounded-divisible-ring-models>

#proof[
  The sufficiency is obvious. We prove the necessity. Let
  $G equiv UT_n lr((S))$. By @prop:bounded-divisible-models (2),
  $G tilde.eq UT_n lr((R))$ for some associative ring $R$. By
  @prop:elementary-groups-determine-ring, $R equiv S$ or $R equiv S^op("op")$.
  By @prop:opposite-ring-twisted-isomorphism,
  $UT_n lr((R)) tilde.eq UT_n lr((R^op("op")))$. We obtain the required
  assertion in any case.
]

#corollary[
  If $S$ is a skew field, then $G equiv UT_n lr((S))$ if and only if
  $G tilde.eq UT_n lr((R))$ for some $R equiv S$.
] <cor:skew-field-models>

Now we consider the axiomatizability of the class $UT_n$. As is well known
@bib:chang1990, a class is axiomatizable if and only if it is closed under
ultraproducts and is elementarily closed. It is easy to see that the class
$UT_n$ is closed under ultraproducts. Therefore, the question on the
axiomatizability of $UT_n$ is equivalent to the question of whether $UT_n$ is
elementarily closed. It turns out that the answer to this question is negative.

We prove that the class $UT_3$ is not elementarily closed by two different
methods. The first proof gives an example of a pure quasi-$UT_3$-group that is
elementarily equivalent to some $UT_3$-group but is not isomorphic to any
$UT_3$-group. The second proof yields an example of a locally pure but not pure
quasi-$UT_3$-group.

#proposition[
  Let $R$ be a torsion-free commutative associative ring. Then the following
  conditions are equivalent:

  (1) $G equiv UT_3 lr((R))$ implies that $G tilde.eq UT_3 lr((S))$ for some
  ring $S equiv R$.

  (2) $G equiv UT_3 lr((R))$ implies that $G in UT_3$.

  (3) $Ext(S^+, S^+)=0$ for any ring $S equiv R$.
] <prop:torsion-free-unitriangular-closure>

#proof[
  (1)$=>$(2) is obvious.

  (2)$=>$(3). Let $S equiv R$. By @prop:torsion-free-elementary-models,
  $UT_3 lr((S,q_1,q_2)) equiv UT_3 lr((R))$ for any cocycles $q_1,q_2$. By
  condition (2), $UT_3 lr((S,q_1,q_2)) tilde.eq UT_3 lr((P))$ for some ring $P$.
  By @th:quasi-groups-determine-ring, $P tilde.eq S$. Thus,
  $UT_3 lr((S,q_1,q_2)) tilde.eq UT_3 lr((S))$ for any cocycles $q_i$. Since $S$
  is a torsion-free commutative associative ring, we obtain $Ext(S^+, S^+)=0$ in
  view of @prop:torsion-free-twist-conjecture.

  (3)$=>$(1). By @prop:torsion-free-elementary-models, $G equiv UT_3 lr((R))$
  implies that $G$ is $UT_3 lr((S,q_1,q_2))$ for some $S equiv R$. Since
  $Ext(S^+, S^+)=0$, the cocycles $q_1$ and $q_2$ are coboundaries. By
  @prop:coboundary-central-map, $G tilde.eq UT_3 lr((S))$.
]

#example[
  Let $D$ be the ring from @ex:binomial-converse-counterexamples. Then
  $Ext(D^+, D^+) != 0$. By @prop:torsion-free-unitriangular-closure,
  $UT_3 lr((D,q_1,q_2)) in.not UT_3$ for some $q_1$ and $q_2$. Since $D$ is a
  torsion-free ring, we have $UT_3 lr((D,q_1,q_2)) equiv UT_3 lr((D))$.
] <ex:nonunitriangular-elementary-example>

#corollary[
  The class $UT_3$ is not axiomatizable.
] <cor:ordinary-class-nonaxiomatizable>

The following assertion was formulated in @bib:myasnikov1989: If a group is
elementarily equivalent to $UT_n lr((ZZ))$, then it is $UT_n lr((R))$ for some
$R equiv ZZ$. However, this assertion is not true. We consider the case $n=3$,
which is of a special interest since
$UT_3 lr((ZZ))$
is a free 2-step nilpotent group of rank 2. In this case, we cannot act as in
@ex:nonunitriangular-elementary-example because $Ext(ZZ, ZZ)=0$. Therefore, we
need the following fact.

#proposition[
  Let a countable ring $S$ be elementarily equivalent to the ring $ZZ$. Then
  $Ext(S^+, S^+)=0$ if and only if $S tilde.eq ZZ$.
] <prop:countable-integers-extension>

#proof[
  The sufficiency is obvious since the additive group of $ZZ$ is free. We prove
  the necessity. Let $S$ be a countable nonstandard model of $Th(ZZ)$. We show
  that the group $S^+$ is not reduced, i.e., it contains a nonzero divisible
  subgroup. As we know, the order is 0-definable in the ring $ZZ$. This fact is
  based on the Lagrange theorem asserting that any nonnegative integer is
  represented as the sum of four squares of integers. The sentence asserting
  that for any $n>0$ there is an $m>0$ such that $k$ divides $m$ for any $k$
  with $0<k<=n$ is true in $ZZ$. For such an $m$ we can take $n!$. Since $S$ is
  a nonstandard model, there is an $a in S$ such that $a>1,2,dots$. Since
  $S equiv ZZ$, there exists $b>0$ in $S$ such that $c$ divides $b$ for any $c$
  such that $0<c<=a$. In particular, $b$ is divisible by $1,2,dots$. Thus, $S^+$
  contains a nonzero divisible subgroup. Then $S^+=D ⊕ C$, where $D$ is a
  nonzero divisible group and $C$ is a reduced group. Since $ZZ$ is not
  divisible, $S^+$ is not divisible. Therefore, $C != 0$. As is known
  @bib:fuchs1970[§40, Ex.3], a countable reduced pure injective group is
  bounded. Hence $C$ cannot be a pure injective group. A torsion-free abelian
  group is pure injective if and only if it is a coperiodic group
  @bib:fuchs1970[54.5]. Consequently, $Ext(QQ, C) != 0$. Taking
  @bib:fuchs1970[52.2] into account, we obtain $Ext(S^+, S^+) != 0$.
]

#remark(numbered: false)[
  For an uncountable nonstandard model $S$ of $Th(ZZ)$ it can happen that
  $Ext(S^+, S^+)=0$. Indeed, let $S$ be an $aleph_1$-saturated model of
  $Th(ZZ)$. Then the group $S^+$ is pure injective. Since $S^+$ is a
  torsion-free group, any abelian extension of $S^+$ by $S^+$ is pure. Hence it
  is a split extension. Therefore, $Ext(S^+, S^+)=0$.
]

#proposition[
  There exists a group $G$ such that $G equiv UT_3 lr((ZZ))$ but
  $G in.not UT_3$.
] <prop:nonunitriangular-integer-model>

#proof[
  The assertion follows immediately from
  @prop:torsion-free-unitriangular-closure and
  @prop:countable-integers-extension.
]

It would be interesting to prove analogs of
@prop:torsion-free-unitriangular-closure, @cor:ordinary-class-nonaxiomatizable,
and @prop:nonunitriangular-integer-model for an arbitrary $n>=3$.

== A locally pure but not pure group
<sec:locally-pure-nonpure-example>

We construct an example of a quasi-$UT_3$-group that is locally pure but not
pure. The existence of such a group has the following consequence.

#proposition[
  There exists a $UT_3$-group $G$ such that there is a group that is
  elementarily equivalent to $G$ and is not a pure quasi-$UT_3$-group. In
  particular, the class $UT_3$ and the class of all pure $UT_3$-groups are not
  elementarily closed.
] <prop:purity-not-elementary>

#proof[
  Let $H$ be a locally pure but not pure quasi-$UT_3$-group. Consider an
  $aleph_1$-saturated group $H^ast$ such that $H^ast equiv H$. By
  @prop:locally-pure-group-theory, $H^ast$ is locally pure. Since the group
  $H^ast$ is $aleph_1$-saturated, there is a pure basis $frak(h)$ in $H^ast$. By
  @prop:splitting-basis-criteria(5), $frak(h)$ is a splitting basis in $H^ast$.
  Hence $H^ast$ is a $UT_3$-group. Thus, the quasi-$UT_3$-group $H$ is
  elementarily equivalent to the $UT_3$-group $H^ast$ but is not pure.
]

We look for a locally pure but not pure group of the form
$UT_3 lr((R,op("pr"),op("pr")))$, where $R$ is a commutative associative ring.
In this case, the condition that a group is pure or locally pure can be
reformulated as conditions on the ring $R$. Thus, the problem is reduced to the
problem of constructing a commutative associative ring with unit that satisfies
certain conditions. Such a ring will be explicitly defined by generators and
defining relations.

For an integer $n>1$ and abelian groups $A$ and $B$ we say that a cocycle $g$ in
$S^2(A,B)$ is _n-pure_ if the extension $E(g)$ is n-pure. We denote by $C$ the
group $[A,B,g]$. The universe of this group is $A times B$. We will identify $A$
with the subgroup $A times {0}$.

#lemma[
  The following conditions are equivalent:

  (i) A cocycle $g$ is n-pure.

  (ii) For any $b in B$, from $n b=0$ it follows that
  $g(b,b)+dots+g lr(((n-1)b,b)) in n A$.
] <lem:cocycle-n-purity>

#proof[
  By an obvious induction, for $(a,b) in C$ we have
  $ n(a,b)=(n a+f(b,n),n b), $
  where $f(b,n)=g(b,b)+dots+g lr(((n-1)b,b))$. It is obvious that condition (i)
  means that $n(a,b) in A$ implies $n(a,b) in n A$, i.e., $n b=0$ implies
  $n a+f(b,n) in n A$. The latter is equivalent to condition (ii).
]

#lemma[
  Let $R$ be a commutative associative ring with unit and let $zeta in R$. Then
  the following assertions hold:

  (1) For any odd $n$ the cocycle $zeta op("pr")$ is n-pure.

  (2) If $n=2^k m$, where $k>=1$ and $m$ is odd, then the cocycle
  $zeta op("pr")$ is n-pure if and only if $2^k alpha=0$ implies
  $2^(k-1) zeta alpha^2 in 2^k R$, for any $alpha in R$.
] <lem:multiplication-n-purity>

#proof[
  We apply @lem:cocycle-n-purity to $A=B=R^+$ and $g=zeta op("pr")$. In this
  case,
  $
    g(alpha,alpha)+dots+g lr(((n-1)alpha,alpha))
    =zeta alpha^2+dots+zeta(n-1)alpha^2
    \
    =frac(n(n-1), 2) dot zeta alpha^2.
  $
  Hence the fact that $zeta op("pr")$ is n-pure means that
  $frac(n(n-1), 2) dot zeta alpha^2 in n R$ if $n alpha=0$.

  If $n$ is odd, then $(n-1)/2$ is an integer. Under the condition $n alpha=0$,
  we have $frac(n(n-1), 2) dot zeta alpha^2=0 in n R$.

  Let $n=2^k m$, where $k>=1$ and $m$ is odd. Then the fact that the cocycle
  $zeta op("pr")$ is n-pure means that $2^k m alpha=0$ implies
  $2^k m divides 2^(k-1)m(2^k m-1)zeta alpha^2$, i.e., since $2^k$ and
  $m(2^k m-1)$ are mutually prime, $2^k m alpha=0$ implies
  $2^k divides 2^(k-1)zeta alpha^2$. This condition is equivalent to the
  condition in (2). Indeed, it obviously implies the condition in (2).
  Conversely, if the condition in (2) holds, then $2^k m alpha=0$ implies
  $2^k divides 2^(k-1)m^2 zeta alpha^2$, which, in turn, implies
  $2^k divides 2^(k-1)zeta alpha^2$ since $2^k$ and $m^2$ are mutually prime.
]

#lemma[
  Let $R$ be a commutative associative ring with unit, let $frak(h)$ be a basis
  in $UT_3 lr((R,op("pr"),op("pr")))$, and let
  $frak(h)=((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),
    (0,0,Delta))$, where $Delta=alpha_1 beta_2-alpha_2 beta_1$. Then the
  following assertions hold:

  (1) $frak(h)$ is an n-pure basis for any odd $n$.

  (2) If $n=2^k m$, where $k>=1$ and $m$ are odd, then $frak(h)$ is an n-pure
  basis if and only if $2^k alpha=0$ implies
  $2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k R$
  for any $alpha in R$, $i=1,2$.
] <lem:coordinate-n-pure-basis>

#proof[
  We assume $gamma_1=gamma_2=0$ since
  $frak(h) prime=((alpha_1,beta_1,0),(alpha_2,beta_2,0),(0,0,Delta))$
  is a basis in $UT_3 lr((R,op("pr"),op("pr")))$ which, by
  @prop:congruent-bases-conjugate, is conjugate by an automorphism to $frak(h)$.

  By the transition formulas in Proposition @prop:basis-transition-formula, we
  have
  $lr((UT_3 lr((R,op("pr"),op("pr"))),frak(h))) tilde.eq UT_3^ast lr((R,r_1,r_2))$,
  where $r_i=Delta^(-1)(alpha_i beta_i+alpha_i^2+beta_i^2)op("pr")$. Thus, a
  basis $frak(h)$ in $UT_3 lr((R,op("pr"),op("pr")))$ is n-pure if and only if
  the standard basis in $UT_3 lr((R,r_1,r_2))$ is n-pure. The last condition is
  equivalent to the fact that the cocycles $r_1$ and $r_2$ are n-pure. We obtain
  the required assertion by @lem:multiplication-n-purity.
]

To illustrate this criterion for a basis to be n-pure, we show how it works in
the case where $R$ is the residue ring $ZZ_s$.

#proposition[
  Let $n=2^k m$ and $s=2^t q$, where $m$ and $q$ are odd. Then the following
  assertions hold:

  (1) If $k=0$ or $k != t$, then any basis in
  $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ is n-pure.

  (2) If $k=t>=1$, then $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ has no n-pure bases.
] <prop:residue-ring-n-purity>

#proof[
  Let $frak(h)=((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),
    (0,0,Delta))$ be a basis in the group $UT_3 lr((ZZ_s,op("pr"),op("pr")))$.
  We use @lem:coordinate-n-pure-basis.

  (1) If $k=0$, then the required assertion follows from
  @lem:coordinate-n-pure-basis(1). Assume that $k>=1$, $k != t$,
  $alpha in ZZ_s$, and $2^k alpha=0$. Let $alpha$ be the residue class of a
  number $l$. Then $s divides 2^k l$. Hence $q divides l$ and, consequently,
  $2^t q divides 2^t l$, i.e., $s divides 2^t l$. Thus, $2^t alpha=0$ in $ZZ_s$.

  If $k>t$, then
  $2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2=0 in 2^k ZZ_s$.

  If $1<=k<t$, then $2^(t-k) divides l$ because $s divides 2^k l$. Hence
  $alpha in 2 ZZ_s$. Therefore,
  $2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k ZZ_s$. By
  @lem:coordinate-n-pure-basis(2), the basis $frak(h)$ is n-pure in the case
  under consideration.

  (2) Let $k=t>=1$. For a contradiction, assume that $frak(h)$ is an n-pure
  basis. Since $2^t q=0$ in $ZZ_s$, we have
  $2^(t-1)(alpha_i beta_i+alpha_i^2+beta_i^2)q^2 in 2^t ZZ_s$
  for $i=1,2$ in view of @lem:coordinate-n-pure-basis(2). Hence
  $alpha_i beta_i+alpha_i^2+beta_i^2 in 2 ZZ_s$. Then
  $alpha_i,beta_i in 2 ZZ_s$. (Indeed, if $alpha_i equiv 1 (mod 2)$ or
  $beta_i equiv 1 (mod 2)$, then
  $alpha_i beta_i+alpha_i^2+beta_i^2 equiv 1 (mod 2)$. But in this case,
  $Delta=alpha_1 beta_2-alpha_2 beta_1 in 2 ZZ_s$, which contradicts the fact
  that $Delta$ is invertible in $ZZ_s$.)
]

#proposition[
  The following conditions are equivalent:

  (i) $UT_3 lr((ZZ_s,op("pr"),op("pr"))) tilde.eq UT_3 lr((ZZ_s))$.

  (ii) The group $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ is isomorphic to a
  $UT_3$-group.

  (iii) The group $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ is pure.

  (iv) The group $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ is locally pure.

  (v) $s$ is odd.
] <prop:residue-ring-pure-criterion>

#proof[
  It is obvious that (i)$=>$(ii)$=>$(iii)$=>$(iv). The implication (iv)$=>$(v)
  follows from @prop:residue-ring-n-purity(2). Indeed, if $s$ is even, then
  $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ has no s-pure bases. It remains to show
  that (v) implies (i). If $s$ is odd, then $op("pr")$ is a coboundary for
  $ZZ_s$ in view of @prop:finite-characteristic-coboundary. By
  @prop:coboundary-central-map(2), we obtain (i).
]

#remark(numbered: false)[
  Proposition @prop:residue-ring-pure-criterion generalizes
  @prop:binary-field-nonunitriangular.
]

As an application of @prop:residue-ring-n-purity, we obtain the following
result.

#theorem[
  $Th(UT_3)$ and $Th(UT_3^ast)$ are not finitely axiomatizable.
] <th:no-finite-unitriangular-axioms>

#proof[
  Introduce the notation $T=Th(UT_3)$ and $T^ast=Th(UT_3^ast)$. For $n<omega$
  consider a sentence $Phi_n$ of the signature of the theory $T^ast$ that
  asserts that the corresponding basis is n-pure. As is proved in
  @prop:expanded-unitriangular-theory, the set of all $Phi_n$ forms a system of
  axioms for $T^ast$. For a finite set $I subset omega$ we consider a sentence
  $Psi_I$ of the signature of the theory of groups that asserts the existence of
  an I-pure quasi-$UT_3$-basis. As is proved in @prop:locally-pure-group-theory,
  the set of all $Psi_I$ forms a system of axioms for $T$. It suffices to show
  that for any $m>0$ the sets $T_m^ast={Phi_n:n<m}$ and $T_m={Psi_I:I subset m}$
  are not systems of axioms for $T^ast$ and $T$ respectively. Let $s=2^t>m$. By
  @prop:residue-ring-n-purity, any basis in $UT_3 lr((ZZ_s,op("pr"),op("pr")))$
  is n-pure for $n<m$ but is not s-pure. Therefore,
  $UT_3^ast lr((ZZ_s,op("pr"),op("pr")))$ is a model of $T_m^ast$ but is not a
  model of $T^ast$, whereas $UT_3 lr((ZZ_s,op("pr"),op("pr")))$ is a model of
  $T_m$ but is not a model of $T$.
]

Lemma @lem:coordinate-n-pure-basis has the following consequence.

#proposition[
  Let $R$ be a commutative associative ring with unit. Then the following
  assertions hold:

  (i) The group $UT_3 lr((R,op("pr"),op("pr")))$ is pure if and only if there
  exist $alpha_1,beta_1,alpha_2,beta_2 in R$ such that
  $alpha_1 beta_2-alpha_2 beta_1=1$ and, for $alpha in R$, $k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k R.
  $

  (ii) The group $UT_3 lr((R,op("pr"),op("pr")))$ is locally pure if and only if
  for any $n>0$ there are $alpha_1,beta_1,alpha_2,beta_2 in R$ such that
  $alpha_1 beta_2-alpha_2 beta_1=1$ and, for $alpha in R$, $n>=k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k R.
  $
] <prop:ring-purity-criterion>

#proof[
  (i). _Sufficiency._ Under the above conditions on $alpha_1$, $beta_1$,
  $alpha_2$, and $beta_2$, the triple
  $((alpha_1,beta_1,0),(alpha_2,beta_2,0),(0,0,1))$ is a pure basis in
  $UT_3 lr((R,op("pr"),op("pr")))$.

  _Necessity._ Assume that
  $((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),(0,0,Delta))$
  is a pure basis in $UT_3 lr((R,op("pr"),op("pr")))$. Then the element $Delta$
  is invertible in $R$ and, for $alpha in R$, $k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k R.
  $
  We set $alpha_1 prime=alpha_1 Delta^(-1)$, $beta_1 prime=beta_1 Delta^(-1)$,
  $alpha_2 prime=alpha_2$, and $beta_2 prime=beta_2$. Then
  $alpha_1 prime beta_2 prime-alpha_2 prime beta_1 prime=1$ and, for
  $alpha in R$, $k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i prime beta_i prime+(alpha_i prime)^2
      +(beta_i prime)^2)alpha^2 in 2^k R.
  $

  (ii). _Sufficiency._ Let $I subset omega$ be a finite set. We find an I-pure
  basis in $UT_3 lr((R,op("pr"),op("pr")))$. Let $n$ be the greatest number in
  $I$. We choose $alpha_1$, $beta_1$, $alpha_2$, and $beta_2$ such that
  $alpha_1 beta_2-alpha_2 beta_1=1$ and, for $alpha in R$, $n>=k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i beta_i+alpha_i^2+beta_i^2)alpha^2 in 2^k R.
  $
  Then the triple $((alpha_1,beta_1,0),(alpha_2,beta_2,0),(0,0,1))$ is a
  $\{1,dots,n\}$-pure basis and, consequently, is an I-pure basis in
  $UT_3 lr((R,op("pr"),op("pr")))$.

  _Necessity._ Let $n>0$. If $UT_3 lr((R,op("pr"),op("pr")))$ is locally pure,
  then this group has a $\{1,dots,n\}$-pure basis, say,
  $((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),(0,0,Delta))$. Setting, as
  in (i), $alpha_1 prime=alpha_1 Delta^(-1)$, $beta_1 prime=beta_1 Delta^(-1)$,
  $alpha_2 prime=alpha_2$, $beta_2 prime=beta_2$, we find that
  $alpha_1 prime beta_2 prime-alpha_2 prime beta_1 prime=1$ and, for
  $alpha in R$, $n>=k>0$, $i=1,2$,
  $
    2^k alpha=0 "implies"
    2^(k-1)(alpha_i prime beta_i prime+(alpha_i prime)^2
      +(beta_i prime)^2)alpha^2 in 2^k R.
  $
]
