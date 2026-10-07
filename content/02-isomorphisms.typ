#import "main-defs.typ": *
#import "statements.typ": *

== Central isomorphisms between quasi-unitriangular groups
<sec:central-isomorphisms>

An isomorphism between $UT_n lr((R,g_1,dots,g_(n-1)))$ and
$UT_n lr((R,g_1',dots,g_(n-1)'))$ is said to be _central_ if it is the identity
on the center and fixes the standard basis modulo center. The second condition
is equivalent to the fact that $theta(t_(i,i+1))$ is congruent to $t_(i,i+1)$
modulo center for all $i$. Indeed, if this is so, then $theta(t_(i j))=t_(i j)$
for $j-i>1$ in view of the obvious induction by the relations
$[t_(i,j-1),t_(j-1,j)]=t_(i j)$.

It is easy to see that central isomorphisms form a subgroup of the group
$op("Sym")(UT_n lr((R)))$.

Let $f:R arrow R$, $f(0)=0$. For $x,y in R$ we set
$f^ast lr((x,y))=f(x)+f(y)-f(x+y)$. Then $f^ast in B^2(R^+,R^+)$. It is obvious
that $f^ast=0$ if and only if $f$ is an endomorphism of the group $R^+$.

Let $f_i:R arrow R$, $f_i lr((0))=0$, $1 <= i < n$. Consider the following
permutation of the set $UT_n lr((R))$:
$
  theta[f_1,dots,f_(n-1)]:(alpha_(i j)) mapsto
  (alpha_(i j))+sum_(i=1)^(n-1) f_i lr((alpha_(i,i+1))) e_(1 n).
$

#proposition[
  The mapping $theta[f_1,dots,f_(n-1)]$ is an isomorphism between
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((R,g_1',dots,g_(n-1)'))$ if and
  only if $g_i-g_i'=f_i^ast$ for all $i$. In particular,

  (1) if $g_i$ is cohomologous to $g_i'$ for all $i$, then
  $
    UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq
    UT_n lr((R,g_1',dots,g_(n-1)')),
  $

  (2) if every $g_i$ is a coboundary, then
  $ UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq UT_n lr((R)), $

  (3) $theta[f_1,dots,f_(n-1)]$ is an automorphism of
  $UT_n lr((R,g_1,dots,g_(n-1)))$ if and only if every $f_i$ is an endomorphism
  of $R^+$.
] <prop:coboundary-central-map>

#proof[
  Let $dot$, $⊙$, and $⊙'$ be the group operations in the groups $UT_n lr((R))$,
  $UT_n lr((R,g_1,dots,g_(n-1)))$, and $UT_n lr((R,g_1',dots,g_(n-1)'))$
  respectively. For $a=(alpha_(i j))$, $b=(beta_(i j))$ we have
  $
    theta[f_1,dots,f_(n-1)](a) ⊙'
    theta[f_1,dots,f_(n-1)](b) \
    =a dot b+sum_(i=1)^(n-1)
    (g_i' lr((alpha_(i,i+1),beta_(i,i+1)))
      +f_i lr((alpha_(i,i+1)))+f_i lr((beta_(i,i+1)))) e_(1 n)
    \
    =a dot b+sum_(i=1)^(n-1)
    (g_i' lr((alpha_(i,i+1),beta_(i,i+1)))
      +f_i^ast lr((alpha_(i,i+1),beta_(i,i+1))) \
      +f_i lr((alpha_(i,i+1)+beta_(i,i+1))))e_(1 n),
  $
  $
    theta[f_1,dots,f_(n-1)](a ⊙ b)
    =a dot b+sum_(i=1)^(n-1)
    (g_i lr((alpha_(i,i+1),beta_(i,i+1)))
      +f_i lr((alpha_(i,i+1)+beta_(i,i+1))))e_(1 n).
  $
  If $g_i=g_i'+f_i^ast$ for all $i$, then $theta[f_1,dots,f_(n-1)]$ is a
  homomorphism from the group $UT_n lr((R,g_1,dots,g_(n-1)))$ to
  $UT_n lr((R,g_1',dots,g_(n-1)'))$. Conversely, if $theta[f_1,dots,f_(n-1)]$ is
  a homomorphism of the above groups, then for $alpha,beta in R$ and every $i$
  we have
  $
    theta[f_1,dots,f_(n-1)](t_(i,i+1) lr((alpha)) ⊙
      t_(i,i+1) lr((beta)))
    \
    =theta[f_1,dots,f_(n-1)](t_(i,i+1) lr((alpha))) ⊙'
    theta[f_1,dots,f_(n-1)](t_(i,i+1) lr((beta))),
  $
  which is equivalent to
  $g_i lr((alpha,beta))=g_i' lr((alpha,beta))+f_i^ast lr((alpha,beta))$.
]

#remark[
  The case $UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq UT_n lr((R))$ can occur not
  only if every $g_i$ is a coboundary. For example, let $R$ be commutative and
  associative. As was shown in @ex:multiplication-twist-trivial,
  $UT_3 lr((R,op("pr"),0)) tilde.eq UT_3 lr((R))$. But pr is not necessarily a
  coboundary. The simplest example of such a situation is given by the residue
  field $ZZ_2$. Indeed, the group of coboundaries is zero in this case: for any
  mapping $f:ZZ_2 arrow ZZ_2$ such that $f(0)=0$ we have $f^ast=0$, since
  $ f(0)+f(0)-f(0+0)=f(1)+f(1)-f(1+1)=0. $
  Consequently, in this case, pr is not a coboundary. There exist exactly two
  symmetric 2-cocycles from the additive group $ZZ_2$ to itself, namely, the
  zero cocycle and pr. The extension $ZZ_2 times {0} <= ZZ_2 times ZZ_2$ is
  associated with the first cocycle, whereas the non-split extension
  $2 ZZ_4 <= ZZ_4$ corresponds to the second one. In the sequel, we study for
  which $R$ the cocycle pr is a coboundary.
] <rem:binary-field-cocycle>

#proposition[
  Let
  $
    U=UT_n lr((R,g_1,dots,g_(n-1))), quad
    U'=UT_n lr((R,g_1',dots,g_(n-1)')).
  $
  Central isomorphisms between $U$ and $U'$ are precisely the isomorphisms of
  the form $theta[f_1,dots,f_(n-1)]$, where $f_i:R arrow R$, $f_i lr((0))=0$,
  $g_i-g_i'=f_i^ast$. In particular, central automorphisms of the group $U$ are
  precisely the automorphisms of the form $theta[f_1,dots,f_(n-1)]$, where the
  $f_i$ are endomorphisms of the group $R^+$.
] <prop:central-isomorphism-form>

#proof[
  It is obvious that the isomorphisms $theta[f_1,dots,f_(n-1)]$ are central. Let
  $theta$ be an arbitrary central isomorphism between $U$ and $U'$. Since the
  formulas $phi_(i j) lr((v,overline(x)))$ constructed in
  @sec:one-parameter-definability are $cal(L)^op("com")$-formulas, we have
  $
    theta(U_(i,i+1))=theta(phi_(i,i+1) lr((U,frak(t))))
    =phi_(i,i+1) lr((U,theta(frak(t))))
    \
    =phi_(i,i+1) lr((U,frak(t)))=U_(i,i+1).
  $
  For $alpha in R$ the element $theta(t_(i,i+1) lr((alpha)))$ has the form
  $t_(i,i+1) lr((s_i lr((alpha)))) ⊙
  t_(1 n) lr((f_i lr((alpha))))$. Applying $theta$ to the equalities
  $
    t_(1 n) lr((alpha))=[t_12 lr((alpha)),t_(2 n)]
    =[t_(1,n-1),t_(n-1,n) lr((alpha))]
    \
    =[[t_(1 i),t_(i,i+1) lr((alpha))],t_(i+1,n)],
  $
  we find that $s_i lr((alpha))=alpha$, i.e.,
  $theta(t_(i,i+1) lr((alpha)))=t_(i,i+1) lr((alpha)) ⊙
  t_(1 n) lr((f_i lr((alpha))))$. Let $j-i>1$. Applying $theta$ to the
  equalities $[t_(i,i+1) lr((alpha)),t_(i+1,j)]=t_(i j) lr((alpha))$, we find
  that $theta(t_(i j) lr((alpha)))=t_(i j) lr((alpha))$. Applying $theta$ to the
  equalities
  $
    t_(i,i+1) lr((alpha)) ⊙ t_(i,i+1) lr((beta))
    =t_(i,i+1) lr((alpha+beta)) ⊙
    t_(1 n) lr((g_i lr((alpha,beta)))),
  $
  we find that $f_i lr((alpha))+f_i lr((beta))+g_i' lr((alpha,beta))
  =f_i lr((alpha+beta))+g_i lr((alpha,beta))$, i.e., $g_i-g_i'=f_i^ast$.
  Therefore, $theta[f_1,dots,f_(n-1)]$ is an isomorphism between
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((R,g_1',dots,g_(n-1)'))$. Since
  $theta$ and $theta[f_1,dots,f_(n-1)]$ act on $t_(i j) lr((alpha))$ in the same
  way and the set of all such elements generates the group $U$, we conclude that
  $theta=theta[f_1,dots,f_(n-1)]$.
]

#proposition[
  Let $frak(h)$ and $frak(h)'$ be quasi-$UT_n$-bases in a group $H$ that are
  componentwise congruent modulo the center. Then these bases are conjugate by
  an automorphism.
] <prop:congruent-bases-conjugate>

#proof[
  By @thm:quasi-unitriangular-characterization, we can assume $(H,frak(h))$ has
  the form $UT_n^ast lr((R,g_1,dots,g_(n-1)))$. We must prove that for any
  elements $gamma_1,dots,gamma_(n-1) in R$ there is an automorphism $theta$ of
  $UT_n lr((R,g_1,dots,g_(n-1)))$ such that
  $theta(t_(i,i+1))=t_(i,i+1)+gamma_i e_(1 n)$ and $theta(t_(i j))=t_(i j)$ for
  $j-i>1$. We set $f_i lr((alpha))=gamma_i alpha$ for $alpha in R$. It is clear
  that $f_i in op("End")(R^+)$. For $theta$ we can take
  $theta[f_1,dots,f_(n-1)]$ in view of @prop:coboundary-central-map (3).
]

== Ring isomorphisms between quasi-unitriangular groups
<sec:ring-isomorphisms>

Let $mu$ be an isomorphism between rings $R$ and $S$. For $g in S^2(R^+,R^+)$ we
denote by $g^mu$ the 2-cocycle in $S^2(S^+,S^+)$ that is induced by $mu$. Thus,
$g^mu lr((mu(alpha),mu(beta)))=mu(g(alpha,beta))$ for $alpha,beta in R$.

For a matrix $a=(alpha_(i j))$ over $R$ we denote by $a^mu$ the matrix
$(mu(alpha_(i j)))$ over $S$.

#proposition[
  The mapping $hat(mu):a mapsto a^mu$ is an isomorphism of the groups
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((S,q_1,dots,q_(n-1)))$ if and
  only if $g_i^mu=q_i$ for all $i$.
] <prop:ring-isomorphism-lift>

#proof[
  Let $dot$, $dot'$, $⊙$, and $⊙'$ be the group operations in $UT_n lr((R))$,
  $UT_n lr((S))$, $UT_n lr((R,g_1,dots,g_(n-1)))$, and
  $UT_n lr((S,q_1,dots,q_(n-1)))$, respectively. For matrices $a=(alpha_(i j))$
  and $b=(beta_(i j))$ from $UT_n lr((R))$ we have
  $
    (a ⊙ b)^mu
    =(a dot b dot t_(1 n) lr(
        (sum_(i=1)^(n-1)
          g_i lr((alpha_(i,i+1),beta_(i,i+1))))
      ))^mu
    \
    =a^mu dot' b^mu dot' t_(1 n) lr(
      (sum_(i=1)^(n-1)
        mu(g_i lr((alpha_(i,i+1),beta_(i,i+1)))))
    ),
  $
  $
    a^mu ⊙' b^mu=a^mu dot' b^mu dot'
    t_(1 n) lr(
      (sum_(i=1)^(n-1)
        q_i lr((mu(alpha_(i,i+1)),mu(beta_(i,i+1)))))
    ).
  $
  Therefore, $(a ⊙ b)^mu=a^mu ⊙' b^mu$ if and only if
  $
    sum_(i=1)^(n-1) mu(g_i lr((alpha_(i,i+1),beta_(i,i+1))))
    equiv sum_(i=1)^(n-1)
    q_i lr((mu(alpha_(i,i+1)),mu(beta_(i,i+1)))).
  $
  The last identity is equivalent to the identity
  $mu(g_i lr((alpha,beta))) equiv q_i lr((mu(alpha),mu(beta)))$ for all $i$.
  (The sufficiency is obvious. To prove the necessity, we set
  $alpha_(j,j+1)=beta_(j,j+1)=0$ for $j != i$.) But this means that $g_i^mu=q_i$
  for all $i$.
]

It is obvious that if $g_i^mu=q_i$ for all $i$, then the mapping $hat(mu)$ is
even an isomorphism between $UT_n^ast lr((R,g_1,dots,g_(n-1)))$ and
$UT_n^ast lr((S,q_1,dots,q_(n-1)))$. Isomorphisms of the form $hat(mu)$ are
referred to as _ring isomorphisms_.

== Natural isomorphisms between quasi-unitriangular groups
<sec:natural-isomorphisms>

#proposition[
  For an isomorphism $phi$ between $UT_n lr((R,g_1,dots,g_(n-1)))$ and
  $UT_n lr((S,q_1,dots,q_(n-1)))$ the following conditions are equivalent:

  (1) The $phi$-images of the standard basis in the first group and the standard
  basis in the second group are congruent modulo the center.

  (2) $phi$ is the composition of a ring isomorphism and a central isomorphism,
  i.e., there exist mappings $f_i:S arrow S$ such that $f_i lr((0))=0$,
  $1 <= i < n$, and a ring isomorphism $mu:R arrow S$ such that
  $g_i^mu-q_i=f_i^ast$ and $phi=theta[f_1,dots,f_(n-1)] compose hat(mu)$.
] <prop:natural-isomorphism-criterion>

#proof[
  It is easy to see that (2) implies (1). Assume that (1) holds. The restriction
  of the mapping $phi$ to the center is an isomorphism from the ring
  $R'=Ring(UT_n^ast lr((R,g_1,dots,g_(n-1))))$ onto the ring
  $Ring(UT_n lr((S,q_1,dots,q_(n-1))), phi frak(t))$, i.e., as was explained in
  @prop:central-basis-perturbation, onto
  $S'=Ring(UT_n^ast lr((S,q_1,dots,q_(n-1))))$. Since the mapping
  $alpha mapsto t_(1 n) lr((alpha))$, $alpha in R$, is an isomorphism between
  $R$ and $R'$ and the mapping $alpha mapsto t_(1 n) lr((alpha))$, $alpha in S$,
  is an isomorphism between $S$ and $S'$, there exists a ring isomorphism
  $mu:R arrow S$ such that $phi(t_(1 n) lr((alpha)))=t_(1 n) lr((mu(alpha)))$,
  for $alpha in R$.

  By @prop:ring-isomorphism-lift, $hat(mu)$ is an isomorphism between the groups
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((S,g_1^mu,dots,g_(n-1)^mu))$.
  Therefore, the mapping $phi compose hat(mu)^(-1)$ is an isomorphism between
  the groups $UT_n lr((S,g_1^mu,dots,g_(n-1)^mu))$ and
  $UT_n lr((S,q_1,dots,q_(n-1)))$; moreover, this isomorphism is central. By
  @prop:central-isomorphism-form,
  $phi compose hat(mu)^(-1)=theta[f_1,dots,f_(n-1)]$ for some mappings
  $f_i:S arrow S$ such that $g_i^mu-q_i=f_i^ast$, which implies (2).
]

#corollary[
  Let $phi$ be an isomorphism between $UT_n lr((R))$ and $UT_n lr((S))$. The
  following conditions are equivalent:

  (1) The $phi$-images of the standard basis in the first group and the standard
  basis in the second group are congruent modulo the center.

  (2) $phi$ is the composition of a ring isomorphism between the groups
  $UT_n lr((R))$ and $UT_n lr((S))$ and a central automorphism of
  $UT_n lr((S))$.
] <cor:ordinary-natural-isomorphism>

#proof[
  It suffices to verify that, in the proof of
  @prop:natural-isomorphism-criterion, $theta[f_1,dots,f_(n-1)]$ is an
  automorphism of the group $UT_n lr((S))$. Since $g_i,q_i=0$, we have
  $f_i^ast=g_i^mu-q_i=0$, i.e., every $f_i$ is an endomorphism of the group
  $S^+$. Hence the required result follows from @prop:coboundary-central-map
  (3).
]

An isomorphism $phi$ between quasi-$UT_n$-groups is said to be _natural_ if it
satisfies the equivalent conditions (1) and (2) from
@prop:natural-isomorphism-criterion. It is obvious that the composition of
natural isomorphisms is again a natural isomorphism, and the isomorphism inverse
to a natural isomorphism is also natural. We say that two quasi-$UT_n$-groups
are _naturally isomorphic_ if the are isomorphic by a natural isomorphism.

If $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((S,q_1,dots,q_(n-1)))$ are
naturally isomorphic, then $R tilde.eq S$. By @sec:ring-nonuniqueness, there
exist quasi-$UT_n$-groups (even $UT_n$-groups) that are isomorphic but not
naturally isomorphic.

#proposition[
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((S,q_1,dots,q_(n-1)))$ are
  naturally isomorphic if and only if
  $UT_n^ast lr((R,g_1,dots,g_(n-1))) tilde.eq
  UT_n^ast lr((S,q_1,dots,q_(n-1)))$.
] <prop:expanded-natural-isomorphism>

#proof[
  The sufficiency is obvious. The necessity follows from
  @prop:congruent-bases-conjugate.
]

#proposition[
  All bases in the group $UT_n lr((R,g_1,dots,g_(n-1)))$ are conjugate by an
  automorphism if and only if any quasi-$UT_n$-group is naturally isomorphic to
  $UT_n lr((R,g_1,dots,g_(n-1)))$ provided it is isomorphic to
  $UT_n lr((R,g_1,dots,g_(n-1)))$.
] <prop:transitive-bases-natural-isomorphism>

#proof[
  Let $U^0=UT_n lr((R,g_1,dots,g_(n-1)))$, and let $frak(t)^0$ be its standard
  basis.

  _Necessity._ Let $phi$ be an isomorphism between a quasi-$UT_n$-group $U$ with
  the standard basis $frak(t)$ and the group $U^0$. Then $phi frak(t)$ is a
  basis in $U^0$. By assumption, $theta phi frak(t)=frak(t)^0$ for some
  automorphism $theta$ of $U^0$. Consequently,
  $(U,frak(t)) tilde.eq (U^0,frak(t)^0)$ and $U$ is naturally isomorphic to
  $U^0$.

  _Sufficiency._ Let $frak(h)$ be a basis in $U^0$. Then there exists an
  isomorphism $phi$ between the group $U^0$ and some quasi-$UT_n$-group $U$ such
  that $phi frak(h)$ is the standard basis in $U$. By assumption, the group $U$
  is naturally isomorphic to the group $U^0$. By
  @prop:expanded-natural-isomorphism, there exists an isomorphism
  $theta:U arrow U^0$ such that $theta phi frak(h)=frak(t)^0$. Thus, an
  arbitrary basis in the group $U^0$ is conjugate to the standard basis
  $frak(t)^0$ by the automorphism $theta compose phi$. Therefore, any two bases
  in this group are conjugate by an automorphism.
]
