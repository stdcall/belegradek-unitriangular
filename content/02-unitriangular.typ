#import "main-defs.typ": *
#import "statements.typ": *

== When are quasi-unitriangular groups unitriangular?
<sec:unitriangular-twist-criterion>

Assume that $Ext(R^+, R^+)=0$. Then any quasi-$UT_n lr((R))$-group is isomorphic
to $UT_n lr((R))$ in view of @prop:coboundary-central-map (2). Is the converse
assertion true? It is natural to suppose that if not every $g_i$ is a
coboundary, then $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((R))$ are not
isomorphic. However, this idea is naive. By @ex:multiplication-twist-trivial,
for any commutative associative ring $R$ we have
$UT_3 lr((R,op("pr"),0)) tilde.eq UT_3 lr((R))$, although pr is not necessarily
a coboundary for $R$. Nevertheless, we take the courage to formulate the
following conjecture.

#conjecture[
  $UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq UT_n lr((R))$ for any
  $g_1,dots,g_(n-1)$ if and only if $Ext(R^+, R^+)=0$.
] <conj:all-twists-trivial-conjecture>

This conjecture is open even for $n=3$ and commutative associative rings.
However, we prove that the conjecture is true in this situation for some broad
classes of commutative associative rings. In this subsection, all the rings
under consideration are assumed to be commutative, associative and with unit,
unless explicitly stated otherwise.

#proposition[
  The following conditions are equivalent:

  (1) $UT_3 lr((R,g_1,g_2)) tilde.eq UT_3 lr((R))$.

  (2) For some $alpha_1,alpha_2,beta_1,beta_2 in R$ the element
  $Delta=alpha_1 beta_2-alpha_2 beta_1$ is invertible in $R$, and the cocycle
  $g_i$ is cohomologous to the cocycle $Delta^(-1)alpha_i beta_i op("pr")$ for
  $i=1,2$.
] <prop:three-dimensional-twist-criterion>

#proof[
  (2)$=>$(1). Assume that (2) holds. By @prop:coordinate-basis-form, the triple
  $ frak(h)=((alpha_1,beta_1,0),(alpha_2,beta_2,0),(0,0,Delta)) $
  is a basis in $UT_3 lr((R))$. By @prop:basis-transition-formula,
  $
    (UT_3 lr((R)),frak(h)) tilde.eq UT_3^ast lr(
      (R,
        Delta^(-1)alpha_1 beta_1 op("pr"),
        Delta^(-1)alpha_2 beta_2 op("pr"))
    ).
  $
  By @prop:coboundary-central-map (1),
  $
    UT_3 lr(
      (R,Delta^(-1)alpha_1 beta_1 op("pr"),
        Delta^(-1)alpha_2 beta_2 op("pr"))
    ) tilde.eq UT_3 lr((R,g_1,g_2)).
  $
  Thus, $UT_3 lr((R)) tilde.eq UT_3 lr((R,g_1,g_2))$.

  (1)$=>$(2). Let $phi:UT_3 lr((R,g_1,g_2)) arrow UT_3 lr((R))$ be an
  isomorphism. We denote by $frak(h)$ the $phi$-image of the standard basis in
  $UT_3 lr((R,g_1,g_2))$. Since $frak(h)$ is a basis in $UT_3 lr((R))$, from
  @prop:coordinate-basis-form it follows that for some
  $alpha_1,alpha_2,beta_1,beta_2 in R$
  $
    frak(h)=((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),
      (0,0,Delta)),
  $
  where the element $Delta=alpha_1 beta_2-alpha_2 beta_1$ is invertible in $R$.
  By @prop:congruent-bases-conjugate, we can assume that $gamma_1=gamma_2=0$. By
  @prop:basis-transition-formula,
  $
    UT_3^ast lr((R,g_1,g_2)) tilde.eq (UT_3 lr((R)),frak(h))
    tilde.eq UT_3^ast lr(
      (R,Delta^(-1)alpha_1 beta_1 op("pr"),
        Delta^(-1)alpha_2 beta_2 op("pr"))
    ).
  $
  By @prop:natural-isomorphism-criterion, the cocycle $g_i$ is cohomologous to
  the cocycle $(Delta^(-1)alpha_i beta_i op("pr"))^mu$, where $i=1,2$, for some
  automorphism $mu$ of the ring $R$, i.e., it is cohomologous to the cocycle
  $overline(Delta)^(-1)overline(alpha)_i overline(beta)_i
  op("pr")$, where $overline(Delta)=mu(Delta)$, $overline(alpha)_i=mu(alpha_i)$,
  and $overline(beta)_i=mu(beta_i)$.
]

Up to this point we have not considered examples of quasi-unitriangular groups
that are not isomorphic to ordinary unitriangular groups. Now, we give the first
example.

#proposition[
  $UT_3 lr((ZZ_2,op("pr"),op("pr")))$ is not isomorphic to $UT_3 lr((ZZ_2))$.
] <prop:binary-field-nonunitriangular>

#proof[
  Assume the contrary. By @prop:three-dimensional-twist-criterion, there are
  $alpha_1,alpha_2,beta_1,beta_2 in ZZ_2$ such that the element
  $Delta=alpha_1 beta_2-alpha_2 beta_1$ is invertible in $ZZ_2$ and the cocycle
  pr is cohomologous to the cocycle $Delta^(-1)alpha_i beta_i op("pr")$ for
  $i=1,2$. In $ZZ_2$, 1 is the only invertible element. If $g$ is a nonzero
  cocycle from $S^2(ZZ_2,ZZ_2)$, then $g(0,0)=g(1,0)=g(0,1)=0$, $g(1,1)=1$,
  i.e., $g=op("pr")$. By @prop:idempotent-torsion-obstruction, pr is not a
  coboundary for $ZZ_2$. Hence for $ZZ_2$ the zero cocycle is a unique
  coboundary, and two cocycles are cohomologous if and only if they coincide.
  Therefore, $alpha_1 beta_2-alpha_2 beta_1=1$ and
  $alpha_1 beta_1=alpha_2 beta_2=1$. The second fact means that $alpha_1$,
  $beta_1$, $alpha_2$, and $beta_2$ are equal to 1, contradicting the first
  fact.
]

The above assertion contrasts with the fact that for any $S$ we have
$UT_3 lr((S)) tilde.eq UT_3 lr((S,op("pr"),0)) tilde.eq
UT_3 lr((S,0,op("pr")))$, as was shown in @ex:multiplication-twist-trivial.

The arguments of Proposition~@prop:binary-field-nonunitriangular do not work for
all commutative associative rings.

#proposition[
  Let $R$ be an algebraically closed field of characteristic 2. Then pr is not a
  coboundary for $R$, but
  $UT_3 lr((R,zeta_1 op("pr"),zeta_2 op("pr"))) tilde.eq UT_3 lr((R))$
  for any $zeta_1,zeta_2 in R$.
] <prop:algebraically-closed-twists>

#proof[
  The first assertion follows from @prop:idempotent-torsion-obstruction. Let us
  prove the second assertion. Since $R$ is an algebraically closed field, there
  are $alpha_1,alpha_2,beta_1,beta_2 in R$ such that $alpha_1 beta_1=zeta_1$,
  $alpha_2 beta_2=zeta_2$, and $Delta=alpha_1 beta_2-alpha_2 beta_1=1$. Then
  $zeta_i op("pr")=Delta^(-1)alpha_i beta_i op("pr")$, and the required
  assertion follows from @prop:three-dimensional-twist-criterion.
]

We say that the group $Ext(R^+, R^+)$ is _small_ if any cocycle in
$S^2(R^+,R^+)$ is cohomologous to $zeta op("pr")$ for some $zeta in R$. The ring
$ZZ_2$ is the simplest example of the case where $Ext(R^+, R^+)$ is small but
nontrivial. In this case, there is exactly one symmetric 2-cocycle, namely pr,
that is not a coboundary.

The following proposition can be regarded as an approximation to
Conjecture~@conj:all-twists-trivial-conjecture in the case where $n=3$ and $R$
is a commutative associative ring.

#proposition[
  If $UT_3 lr((R,g_1,g_2)) tilde.eq UT_3 lr((R))$ for any $g_1$ and $g_2$, then
  the group $Ext(R^+, R^+)$ is small.
] <prop:small-extension-group>

#proof[
  The assertion follows directly from @prop:three-dimensional-twist-criterion.
]

We present a number of examples of rings $R$ for which the group $Ext(R^+, R^+)$
is small but nontrivial. These examples generalize the above example $R=ZZ_2$.

#proposition[
  Let $R$ be a ring, not necessarily with unit. Suppose that $R$ has a subring
  $S$ such that $S tilde.eq ZZ_2$ and $R^+ tilde.eq S^+
  ⊕ A$, where $A$ is a torsion-free divisible abelian group. Then the group
  $Ext(R^+, R^+)$ is small but nontrivial.
] <prop:small-nontrivial-example>

#proof[
  By @bib:fuchs1970 [52.2],
  $
    Ext(R^+, R^+) tilde.eq Ext(S^+, S^+) times Ext(A, S^+) times
    Ext(R^+, A).
  $
  Since $A$ is divisible, $Ext(R^+, A)=0$ in view of @bib:fuchs1970 [24.5].
  Since $A$ is a torsion-free group, any extension of $S^+$ by $A$ is pure and,
  consequently, splits by @bib:fuchs1970 [27.5]. Thus, $Ext(A, S^+)=0$. We have
  $Ext(R^+, R^+) tilde.eq Ext(S^+, S^+)$, i.e., $abs(Ext(R^+, R^+))=2$. By
  @prop:idempotent-torsion-obstruction, pr is not a coboundary for $R$.
  Therefore, any cocycle in $S^2(R^+,R^+)$ is cohomologous to pr or 0. Hence the
  group $Ext(R^+, R^+)$ is small but nontrivial.
]

In view of @prop:small-extension-group, for any ring $R$ that is a commutative
associative counterexample to Conjecture~@conj:all-twists-trivial-conjecture for
$n=3$, the group $Ext(R^+, R^+)$ is small but nontrivial. Therefore, it is
interesting to study those $R$ for which such a situation occurs. The author
does not know examples of such $R$ except for those indicated in
@prop:small-nontrivial-example. We will see that these examples are not
accidental.

#proposition[
  Let $R$ be a ring, not necessarily with unit. If the group $Ext(R^+, R^+)$ is
  small but nontrivial, then $R^+$ contains an involution.
] <prop:small-extension-involution>

#proof[
  On the contrary, suppose that $R^+$ is a 2-torsion-free group. By
  @bib:fuchs1970 [52], $Ext(R^+, R^+)$ is a 2-divisible group. In particular,
  the cocycle pr is cohomologous to $2 g$ for some $g in S^2(R^+,R^+)$. Since
  the group $Ext(R^+, R^+)$ is small, $g$ is cohomologous to $zeta op("pr")$ for
  some $zeta in R$. Thus, for $gamma in R$ the cocycle $gamma op("pr")$ is
  cohomologous to the cocycle $2 gamma zeta op("pr")$, which is a coboundary
  because $2 gamma zeta x y=gamma zeta(x+y)^2-gamma zeta x^2-gamma zeta y^2$.
  Since the group $Ext(R^+, R^+)$ is small, any cocycle $g in S^2(R^+,R^+)$ is
  cohomologous to a cocycle of the form $gamma op("pr")$. Consequently,
  $Ext(R^+, R^+)=0$. We obtain a contradiction.
]

#proposition[
  Let $R$ be a ring, not necessarily with unit. Suppose that $R^+$ is the direct
  sum of finite cyclic subgroups. Then the group $Ext(R^+, R^+)$ is small if and
  only if $R tilde.eq ZZ_2$.
] <prop:finite-cyclic-additive-smallness>

#proof[
  _Sufficiency._ This was mentioned above.

  _Necessity._ Assume that the group $Ext(R^+, R^+)$ is small and
  $R^+=⊕_(i in I) C_i$, where the $C_i$ are finite cyclic subgroups. By
  @bib:fuchs1970 [52.2],
  $ Ext(R^+, R^+) tilde.eq product_(i in I) Ext(C_i, R^+), $
  $
    Ext(C_i, R^+) tilde.eq Ext(C_i, C_i) times
    Ext(C_i, ⊕_(j != i) C_j).
  $
  Since $Ext(C_i, C_i) tilde.eq C_i$ in view of @bib:fuchs1970 [52], the group
  $product_(i in I) C_i$ is embedded in $Ext(R^+, R^+)$. If $I$ is infinite,
  then
  $ abs(Ext(R^+, R^+)) >= abs(product_(i in I) C_i)=2^(abs(I))>abs(I). $
  Let $tau:R^+ arrow Ext(R^+, R^+)$ be a homomorphism sending $zeta$ to the
  cohomology class of the cocycle $zeta op("pr")$. Since $Ext(R^+, R^+)$ is
  small, $tau$ is surjective. If $I$ were infinite, we would have
  $abs(R) >= abs(Ext(R^+, R^+))>abs(I)$, whereas

  $abs(R)=abs(⊕_(i in I) C_i)=abs(I)$. Therefore, $I$ is finite. Hence $R$ is
  finite and
  $
    abs(Ext(R^+, R^+)) <= abs(R)=abs(product_(i in I) C_i)
    <= abs(Ext(R^+, R^+)).
  $
  Therefore, $abs(R)=abs(Ext(R^+, R^+))$. Consequently, $tau$ is an isomorphism
  between $R^+$ and $Ext(R^+, R^+)$. For any $zeta in R$ the cocycle
  $2 zeta op("pr")$ is a coboundary, since
  $2 zeta x y=zeta(x+y)^2-zeta x^2-zeta y^2$. Hence $tau(2 zeta)=0$, i.e.,
  $2 zeta=0$. Consequently, $2 R^+=0$. Thus, every $C_i$ is a cyclic group of
  order 2. By @bib:fuchs1970 [52], $Ext(C_i, C_j)$ is a cyclic group of order 2
  for any $i,j in I$. Since $I$ is finite, from @bib:fuchs1970 [52.2] for
  $n=abs(I)$ it follows that
  $
    ZZ_2^n tilde.eq Ext(R^+, R^+) tilde.eq product_(i,j in I) Ext(C_i, C_j)
    tilde.eq ZZ_2^(n^2).
  $
  Therefore, $n=1$, i.e., $R^+$ is a cyclic group of order 2. Hence
  $R tilde.eq ZZ_2$ or $R$ is a ring with zero multiplication. The last case is
  impossible. Indeed, in this case, the group $Ext(R^+, R^+)$ is trivial because
  it is small. Thus, $R tilde.eq ZZ_2$.
]

#proposition[
  If $R$ is an integral domain, then the group $Ext(R^+, R^+)$ is small but
  nontrivial if and only if $R tilde.eq ZZ_2$.
] <prop:integral-smallness>

#proof[
  _Sufficiency._ This was mentioned above.

  _Necessity._ Assume that the group $Ext(R^+, R^+)$ is small but nontrivial. By
  @prop:small-extension-involution, $2 alpha=0$ for some nonzero $alpha in R$.
  Then $2=0$ in $R$, because $R$ is an integral domain. Hence $R^+$ is the
  direct sum of cyclic subgroups of order 2. By
  @prop:finite-cyclic-additive-smallness, we have $R tilde.eq ZZ_2$.
]

#proposition[
  Let $R$ be a 2-torsion-free ring. Then
  Conjecture~@conj:all-twists-trivial-conjecture is valid for $R$ if $n=3$.
] <prop:torsion-free-twist-conjecture>

#proof[
  Assume that $Ext(R^+, R^+) != 0$. By @prop:small-extension-involution, the
  group $Ext(R^+, R^+)$ is not small. By @prop:small-extension-group,
  $UT_3 lr((R,g_1,g_2))$ is not isomorphic to $UT_3 lr((R))$ for some $g_1$ and
  $g_2$.
]

#proposition[
  Let $R^+$ be the direct sum of finite cyclic groups. Then
  Conjecture~@conj:all-twists-trivial-conjecture is valid for $R$ if $n=3$.
] <prop:finite-cyclic-twist-conjecture>

#proof[
  By @prop:finite-cyclic-additive-smallness, either the group $Ext(R^+, R^+)$ is
  not small or $R tilde.eq ZZ_2$. In the first case, $UT_3 lr((R,g_1,g_2))$ is
  not isomorphic to $UT_3 lr((R))$ for some $g_1$ and $g_2$ in view of
  @prop:small-extension-group. In the second case, the same is true by
  @prop:binary-field-nonunitriangular.
]

#corollary[
  Let $R$ be a ring of finite characteristic. Then
  Conjecture~@conj:all-twists-trivial-conjecture is valid for $R$ if $n=3$.
] <cor:finite-characteristic-twist-conjecture>

#proposition[
  Let $R$ be an integral domain. Then
  Conjecture~@conj:all-twists-trivial-conjecture is valid for $R$ if $n=3$.
] <prop:integral-twist-conjecture>

#proof[
  If $R$ is a 2-torsion-free ring, then we use
  @prop:torsion-free-twist-conjecture. Otherwise, $2 alpha=0$ for some nonzero
  $alpha in R$. Since $R$ is an integral domain, we have $2=0$, and so we are in
  the situation of @cor:finite-characteristic-twist-conjecture.
]
