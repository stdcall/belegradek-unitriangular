#import "main-defs.typ": *
#import "statements.typ": *

== Mutual interpretability of a ring and the unitriangular group over the ring
<sec:ring-group-interpretability>

From the proof of @thm:quasi-unitriangular-characterization it follows that a
ring $R$ and the group $UT_n lr((R))$ are interpretable in each other. We study
these interpretations and the relationships between them. First of all, we
recall some known definitions and facts. (Notions concerning interpretability
are systematically presented in @bib:hodges1993 [5.3].)

Consider signatures $K$ and $L$, a $K$-structure $cal(A)$, an $L$-structure
$cal(B)$, and a positive integer $n$. We say that we are given an
($n$-dimensional) interpretation $Gamma$ of the structure $cal(B)$ in the
structure $cal(A)$ if the following three objects are given:

(a) a formula $partial_Gamma lr((x_1,dots,x_n))$ of signature $K$;

(b) for every atomic formula $phi(y_1, dots, y_m)$ of signature $L$ of the form
$y_1=y_2$, $P(y_1,dots,y_m)$ or $f(y_1,dots,y_(m-1))=y_m$, where $P$ is a
predicate symbol and $f$ is a functional symbol of $L$ of the corresponding
arity, a formula $phi_Gamma lr((overline(x)_1,dots,overline(x)_m))$ of signature
$K$ is given, where the $overline(x)_i$ are disjoint $n$-tuples of different
variables;

(c) a surjection $f_Gamma:partial_Gamma lr((cal(A))) arrow cal(B)$ such that for
any atomic $L$-formula of the form indicated in (b) and
$overline(a)_i in partial_Gamma lr((cal(A)))$ we have
$
  cal(B) models phi(
    f_Gamma lr((overline(a)_1)), dots,
    f_Gamma lr((overline(a)_m))
  ) <=>
  cal(A) models phi_Gamma lr((overline(a)_1,dots,overline(a)_m)).
$
The formula $partial_Gamma$ is called a _domain formula of the interpretation_
$Gamma$, and the $phi_Gamma$ are referred to as _defining formulas_ of this
interpretation. The mapping $f_Gamma$ is called the _coordinate mapping_ of the
interpretation $Gamma$. We denote $cal(B)$ by $Gamma(cal(A))$. The
interpretation $Gamma$ is said to be _injective_ if the mapping $f_Gamma$ is
injective. If the signature $L$ and the mapping $phi mapsto phi_Gamma$ are
recursive, then the interpretation $Gamma$ is said to be _recursive_. If $L$ is
finite, then it is obvious that any $Gamma$ is recursive.

We say that $cal(B)$ _is interpretable in_ $cal(A)$ if there exists an
interpretation of $cal(B)$ in $cal(A)$. We say that $cal(B)$ _is interpretable
in_ $cal(A)$ _with parameters_ $overline(a)$ if there exists an interpretation
of $cal(B)$ in $(cal(A),overline(a))$.

By induction on the complexity of a formula, it is easy to prove the following
assertion, which is referred to as the reduction theorem.

#fact[
  Let $Gamma$ be an $n$-dimensional interpretation of an $L$-structure $cal(B)$
  in a $K$-structure $cal(A)$. Then for any $L$-formula $phi(y_1, dots, y_m)$
  there exists a $K$-formula $phi_Gamma lr((overline(x)_1,dots,overline(x)_m))$
  such that for any
  $overline(a)_i in partial_Gamma lr((cal(A)))$
  $
    cal(B) models phi(
      f_Gamma lr((overline(a)_1)), dots,
      f_Gamma lr((overline(a)_m))
    ) \
    <=>
    cal(A) models phi_Gamma lr((overline(a)_1,dots,overline(a)_m)).
  $
  Moreover, if $Gamma$ is recursive, then we can choose a recursive injective
  mapping $phi mapsto phi_Gamma$. In particular, $Th(cal(B)) <=_1 Th(cal(A))$.
] <fact:interpretation-reduction>

The mapping $phi mapsto phi_Gamma$ depends only on parts (a) and (b) of the
interpretation $Gamma$, not on the coordinate mapping $f_Gamma$. Parts (a) and
(b) are called the _interpretation of the signature_ $L$ _in the signature_ $K$,
and the mapping $phi mapsto phi_Gamma$ is called the _reduction mapping_ of this
interpretation.

Consider two interpretations $Gamma_1$ and $Gamma_2$ of $L$-structures
$cal(B)_1$ and $cal(B)_2$ in a $K$-structure $cal(A)$ such that the
corresponding interpretations of $L$ in $K$ coincide, whereas the coordinate
mappings may be different. Let $Gamma$ be the common (for $Gamma_1$ and
$Gamma_2$) interpretation of the signature $L$ in the signature $K$. Then the
correspondence ${(f_(Gamma_1) lr((overline(a))),f_(Gamma_2) lr((overline(a)))):
  overline(a) in partial_Gamma lr((cal(A)))}$ is obviously an isomorphism
between $cal(B)_1$ and $cal(B)_2$. Thus, $Gamma$ determines the isomorphism type
of a structure. Hence for any structure $cal(B)$ of this isomorphism type we
write $cal(B)=Gamma(cal(A))$.

Let $overline(c)$ be a tuple of new constants for $K$, and let
$psi(overline(c))$ be a $K(overline(c))$-sentence. Assume that
$cal(A) models exists overline(z) psi(overline(z))$. Let $Gamma$ be an
interpretation of $L$ in $K(overline(c))$ such that for any
$overline(a) in psi(cal(A))$ the structure $cal(B)$ is interpretable in
$(cal(A),overline(a))$ by $Gamma$ under a suitable choice of the coordinate
mapping $f_Gamma$. In this case, $Gamma$ is referred to as an _interpretation of
the structure_ $cal(B)$ _in the structure_ $cal(A)$ _with definable parameters_.
(It is obvious that an interpretation without parameters is a special case of an
interpretation with definable parameters.) Assume that for an $L$-sentence $phi$
the sentence $phi_Gamma$ has the form $phi^ast lr((overline(c)))$, where
$phi^ast lr((overline(z)))$ is a $K$-formula. Then $cal(B) models phi$ if and
only if $cal(A) models forall overline(z)
(psi(overline(z)) arrow phi^ast lr((overline(z))))$. Therefore, the following
fact holds.

#fact[
  Let $Gamma$ be a recursive interpretation with definable parameters of the
  structure $cal(B)$ in the structure $cal(A)$. Then
  $Th(cal(B)) <=_1 Th(cal(A))$.
] <fact:recursive-parameters-reduction>

Consider signatures $M$, $L$, and $K$, an interpretation $Delta$ of $M$ in $L$,
and an interpretation $Gamma$ of $L$ in $K$. Then we can define an
interpretation $Xi$ of the signature $M$ in the signature $K$ as follows:
$partial_Xi:=(partial_Delta)_Gamma$, $phi_Xi:=(phi_Delta)_Gamma$ for atomic
formulas $phi$ of the form indicated in (b). This interpretation $Xi$ is called
the _composition_ of the interpretations $Gamma$ and $Delta$, and is denoted by
$Delta compose Gamma$.

For any signature $K$ we can consider the _identity interpretation_ $E=E_K$.
This interpretation is a one-dimensional interpretation such that $partial_E$ is
$x_1=x_1$ and $phi_E$ is $phi$ for every $phi$. If $cal(A)$ is a $K$-structure
and for the coordinate mapping we take the identity mapping from $cal(A)$ to
$cal(A)$, then $E(cal(A))=cal(A)$.

Let $Gamma$ and $Delta$ be interpretations of two $L$-structures in a
$K$-structure $cal(A)$. Following @bib:ahlbrandt1986, we say that the
interpretations $Gamma$ and $Delta$ are _homotopic_ if there exists a
$K$-formula $chi(overline(x), overline(y))$ such that
$
  {(f_Gamma lr((overline(a))),f_Delta lr((overline(b)))):
    cal(A) models partial_Gamma lr((overline(a))) and
    partial_Delta lr((overline(b))) and chi(overline(a), overline(b))}
$
is an isomorphism between $Gamma(cal(A))$ and $Delta(cal(A))$. We write
$Gamma tilde Delta$.

Let $Delta$ be an interpretation of $cal(A)$ in $cal(B)$, and let $Gamma$ be an
interpretation of $cal(B)$ in $cal(A)$. The pair $(Gamma,Delta)$ is called a
_bi-interpretation_ between $cal(A)$ and $cal(B)$ if $Gamma compose Delta$ and
$Delta compose Gamma$ are homotopic to the identity interpretations of $cal(B)$
and $cal(A)$ respectively. The condition that $Delta compose Gamma$ is homotopic
to the identity interpretation of $cal(A)$ can be formulated as follows: “the
copy $Delta(Gamma(cal(A)))$ (living in the Shelah extension $cal(A)^op("eq")$ of
the structure $cal(A)$ by imaginary elements) of the structure $cal(A)$ is
0-definably isomorphic to $cal(A)$ in $cal(A)^op("eq")$.”

We proceed to the study of questions concerning the interpretability of
unitriangular groups.

There is an obvious injective $frac(n(n-1), 2)$-dimensional interpretation
$Gamma$ of the expanded group $UT_n^ast lr((R))$ in a ring $R$, under which a
matrix in $UT_n lr((R))$ is naturally identified with a tuple of length
$frac(n(n-1), 2)$. It is clear that the matrix multiplication and elements of
the standard basis are 0-definable in the ring $R$. Moreover, since $Gamma$ is
an interpretation of signatures, it depends only on $n$, not on $R$.

The proof of @thm:quasi-unitriangular-characterization, together with
@prop:one-parameter-positive-definability, shows that there exists an injective
one-dimensional interpretation $Delta$ of $R$ in
$UT_n^ast lr((R,g_1,dots,g_(n-1)))$. Here
$
  partial_Delta lr((x_1)):=forall v (x_1 v=v x_1),
  (y_1=y_2)_Delta:=x_1=x_2, \
  (y_1+y_2=y_3)_Delta:=x_1 dot x_2=x_3, \
  (y_1 y_2=y_3)_Delta:=exists u v (phi_12 lr((u)) and
    phi_(2 n) lr((v)) and [u,v]=x_3 \ and [u,t_(2 n)]=x_1
    and [t_12,v]=x_2).
$
Here, the center of $UT_n lr((R,g_1,dots,g_(n-1)))$ serves as the interpretation
domain, whereas the coordinate mapping $f_Delta$ associates the matrix
$t_(1 n) lr((alpha))$ with the element $alpha$ of $R$.

We note that $Delta$, regarded as an interpretation of signatures, depends only
on $n$ and is independent of $R$ and $g_1,dots,g_(n-1)$. Thus, the following
proposition holds.

#proposition[
  $UT_n^ast lr((R))$ is interpretable in $R$, and $R$ is interpretable in
  $UT_n^ast lr((R,g_1,dots,g_(n-1)))$ for any $n >= 3$, $R$, and
  $g_1,dots,g_(n-1)$.
] <prop:mutual-ring-group-interpretation>

#proposition[
  The interpretation $Delta compose Gamma$ is homotopic to the identity
  interpretation. The interpretation $Gamma compose Delta$ is homotopic to the
  identity interpretation if and only if $R tilde.eq ZZ_m$ for some $m$. In
  particular, the pair $(Gamma,Delta)$ is a bi-interpretation if and only if
  $R tilde.eq ZZ_m$ for some $m$.
] <prop:homotopic-composition>

#proof[
  We begin by verifying that $Delta compose Gamma tilde E$. The copy
  $Delta(Gamma(R))$ of the ring $R$ consists of matrices of the form
  $t_(1 n) lr((alpha))$, $alpha in R$. It is obvious that the mapping
  $alpha mapsto t_(1 n) lr((alpha))$ is an isomorphism between $R$ and
  $Delta(Gamma(R))$ that is 0-definable in $R$.

  Consider the interpretation $Gamma compose Delta$. We denote $UT_n lr((R))$
  and $UT_n^ast lr((R))$ by $U$ and $U^ast$ respectively. The universe of the
  ring $Delta(U^ast)$ coincides with $Z(U)$. Therefore, the universe of the
  expanded group $Gamma(Delta(U^ast))$ consists of tuples of length
  $frac(n(n-1), 2)$ from $Z(U)$. There is an isomorphism between $U^ast$ and
  $Gamma(Delta(U^ast))$ that sends the matrix $(alpha_(i j))$ to the tuple
  $(t_(1 n) lr((alpha_(i j))))$.

  Suppose that $R tilde.eq ZZ_m$. Then the standard basis generates the group
  $U$. Indeed, by @cor:ordered-transvection-coordinates, the matrices
  $t_(i j) lr((overline(k)))$, $overline(k) in ZZ_m$, generate the group $U$ and
  $t_(i j) lr((overline(k)))=t_(i j)^k$. Hence any element is 0-definable in
  $U^ast$. Since $U$ is finite, the isomorphism
  $(alpha_(i j)) mapsto (t_(1 n) lr((alpha_(i j))))$ is 0-definable in $U^ast$.
  Hence $Gamma compose Delta tilde E$.

  If $R tilde.eq.not ZZ_m$, then for any $m$ the interpretation
  $Gamma compose Delta$ is not homotopic to the identity interpretation, i.e.,
  there exists no isomorphism between $U^ast$ and $Gamma(Delta(U^ast))$ that is
  0-definable in $U^ast$. Assume the contrary. It is obvious that for any
  $S equiv R$ there exists an isomorphism between $UT_n^ast lr((S))$ and
  $Gamma(Delta(UT_n^ast lr((S))))$ that is 0-definable in $UT_n^ast lr((S))$.
  Therefore, we can assume that the ring $R$ is $aleph_0$-saturated.

  We need the following general remarks. If an abelian group $A$ is generated by
  an element $a$, then $f(a) != 0$ for any nonzero endomorphism $f$ of $A$. In
  general, the converse assertion fails. For example, all endomorphisms of the
  group $ZZ$ have the form $x mapsto n x$. Therefore, $f(2) != 0$ for any
  nonzero endomorphism $f$ of $ZZ$, although 2 does not generate $ZZ$. However,
  the following assertion holds.
]

#lemma(numbered: false)[
  Let $A$ be an $aleph_0$-saturated abelian group, and let $a in A$. The
  following conditions are equivalent:

  (1) $f(a) != 0$ for any nonzero endomorphism $f$ of $A$.

  (2) $A$ is a finite cyclic group generated by $a$.
] <lem:saturated-generator>

#proof[
  The implication (2)$=>$(1) is obvious. We prove that (1) implies (2). Assume
  that (2) fails. It is required to prove that $A$ has a proper subgroup $A^0$
  such that $a in A^0$ and $A\/A^0$ is embeddable in $A$. Let $A$ be a group of
  finite exponent. Note that any abelian group of finite exponent is
  $aleph_0$-saturated. We can assume that $A$ is a $p$-group. Indeed, let
  $A=⊕ A_p$ be the primary decomposition of the group $A$, $a=sum alpha_p$,
  $alpha_p in A_p$. If $A_p^0 < A_p$, $alpha_p in A_p^0$, and $A_p\/A_p^0$ is
  embeddable in $A_p$, then for $A^0$ we can take $⊕ A_p^0$. Let
  $op("exp")(A)=p^n$. If the order of $a$ is equal to $p^k$, where $k<n$, then
  for $A^0$ we can take $A[p^k]={x in A:p^k x=0}$. Indeed, $A$ is the direct sum
  of cyclic $p$-groups. If $C$ is a cyclic group of order $p^m$, then
  $C\/C[p^k]$ is embeddable in $C$, because this group is the zero group for
  $k >= m$ and a cyclic group of order $p^(m-k)$ for $k<m$. If the order of $a$
  is equal to $p^n$, then $⟨ a ⟩$ is a direct summand of $A$ in view of
  @bib:fuchs1970 [15.1]. Moreover, $⟨ a ⟩ != A$, since condition (2) fails.
  Therefore, for $A^0$ we can take $⟨ a ⟩$.

  Now, let $A$ be a group of unbounded exponent. Since $A$ is
  $aleph_0$-saturated, it contains a copy $QQ^((omega))$ and, consequently, is
  represented as the direct sum $⊕_(n<omega) B_n$, where $B_n tilde.eq QQ$ for
  $n>0$. It is clear that $a in B_0 ⊕ dots ⊕ B_n$ for some $n$. For $A^0$ we can
  take $B_0 ⊕ dots ⊕ B_n$.
]

#proof(
  head: [Proof of Proposition~@prop:homotopic-composition (continued).],
)[
  Since $R$ is $aleph_0$-saturated, from the lemma it follows that there exists
  a nonzero endomorphism $f$ of the group $R^+$ such that $f(1)=0$. Then the
  central automorphism $phi=theta[f,0,dots,0]$ of the group $U$ is not the
  identity, but it acts identically on the standard basis. Hence $phi$ is an
  automorphism of $U^ast$. Let $q$ be an isomorphism between $U^ast$ and
  $Gamma(Delta(U^ast))$ that is 0-definable in $U^ast$. Then $q$ commutes with
  any automorphism of $U^ast$, in particular, with $phi$. Let $a in U$ be such
  that $phi(a) != a$. Then $q(a) != q(phi(a))=phi(q(a))$. Since
  $q(a) in Z(U)^(frac(n(n-1), 2))$, we obtain a contradiction with the fact that
  $phi$ is the identity on $Z(U)$.
]

Since the ring $R$ is interpretable in $UT_n lr((R))$ with parameters, a natural
question arises: Is $R$ interpretable in $UT_n lr((R))$ without parameters or,
at least, with definable parameters? It turns out that in general the answer is
negative.

#proposition[
  There exists an associative ring $R$ such that for any $n >= 3$ there exists
  no interpretation with definable parameters (in particular, interpretation
  without parameters) of the ring $R$ in the group $UT_n lr((R))$.
] <prop:noninterpretable-ring>

#proof[
  In @thm:distinct-ring-group-turing-degrees, we will construct an associative
  ring $R$ such that $Th(R)$ is undecidable and $Th(UT_n lr((R)))$ is decidable
  for any $n >= 3$. By @fact:recursive-parameters-reduction, this ring $R$ is
  suitable for our purposes.
]

The following assertion is a strong form of a pure algebraic theorem
(Theorem~@th:quasi-groups-determine-ring).

#proposition[
  A commutative associative ring $R$ is interpretable in the group
  $UT_n lr((R,g_1,dots,g_(n-1)))$ without parameters (uniformly with respect to
  $R$ and $g_1,dots,g_(n-1)$).
] <prop:parameter-free-commutative-ring>

#proof[
  Let $R$ be commutative, and let $U=UT_n lr((R,g_1,dots,g_(n-1)))$. For
  $gamma in R$ and $a=(alpha_(i j)) in U$ we denote by $gamma a$ a matrix
  $(beta_(i j)) in U$ such that $beta_(i j)=gamma alpha_(i j)$ for $i<j$. It is
  obvious that $gamma a in U_k$ if $a in U_k$.
]

#auxiliary-lemma[
  Let $frak(h)$ be a basis in a quasi-$UT_n$-group $H$. Then $z=z_1 ⊡ z_2$ in
  $Ring(H, frak(h))$ if and only if $z=[x_1,x_2]$ for some $x_1 in H$,
  $x_2 in H_(n-2)$ such that $[x_1,h_(2 n)]=z_1$, $[h_12,x_2]=z_2$, and
  $[h_(n-1,n),x_2]=e$.
] <lem:interpretation-product>

#proof[
  We can assume the group $(H,frak(h))$ has the form
  $UT_n^ast lr((S,q_1,dots,q_(n-1)))$ for some $S,q_1,dots,q_(n-1)$. Let
  $z=t_(1 n) lr((zeta))$, $z_i=t_(1 n) lr((zeta_i))$, $i=1,2$. Assume that
  $z=z_1 ⊡ z_2$. Then $x_1=t_12 lr((zeta_1))$ and $x_2=t_(2 n) lr((zeta_2))$
  satisfy the required conditions in view of
  @prop:associated-bilinear-map-coordinates.

  Now, assume that $x_1=(gamma_(i j))$ and $x_2=(delta_(i j))$ satisfy the
  assumptions of the lemma. By @prop:associated-bilinear-map-coordinates, we
  have $gamma_12=zeta_1$ since $[x_1,t_(2 n)]=z_1$, $delta_(2 n)=zeta_2$ since
  $[t_12,x_2]=z_2$, and $delta_(1,n-1)=0$ since $[t_(n-1,n),x_2]=e$. By
  @prop:associated-bilinear-map-coordinates, we have
  $
    z=[x_1,x_2]=t_(1 n) lr(
      (gamma_12 delta_(2 n)
        -delta_(1,n-1)gamma_(n-1,n))
    )
    \
    =t_(1 n) lr((zeta_1 zeta_2))=z_1 ⊡ z_2.
  $
  The lemma is proved.
]

#auxiliary-lemma[
  Let $frak(h)$ be a basis in $U$. Then for $gamma in R$ and $z_i in Z(U)$ we
  have
  $ (gamma z_1) ⊡ z_2=z_1 ⊡ (gamma z_2)=gamma(z_1 ⊡ z_2) $
  in $Ring(U, frak(h))$. In other words, $Ring(U, frak(h))$ is an $R$-algebra.
] <lem:interpretation-algebra>

#proof[
  First, we prove that for $gamma in R$, $a in U$, and $b in U_(n-2)$ we have
  $ gamma[a,b]=[gamma a,b]=[a,gamma b]. $
  Indeed, since $gamma b in U_(n-2)$ for $b in U_(n-2)$, this is equivalent, by
  @prop:associated-bilinear-map-coordinates, to the equalities
  $
    gamma(alpha_12 beta_(2 n)-beta_(1,n-1)alpha_(n-1,n))
    =(gamma alpha_12)beta_(2 n)-beta_(1,n-1)(gamma alpha_(n-1,n))
    \
    =alpha_12(gamma beta_(2 n))-(gamma beta_(1,n-1))alpha_(n-1,n),
  $
  which are valid because the ring $R$ is commutative and associative.

  We set $z=z_1 ⊡ z_2$. By Lemma~@lem:interpretation-product, there are
  $x_1 in U$ and $x_2 in U_(n-2)$ such that $z=[x_1,x_2]$, $[x_1,h_(2 n)]=z_1$,
  $[h_12,x_2]=z_2$, and $[h_(n-1,n),x_2]=e$. By the above remark,
  $
    gamma z=gamma[x_1,x_2]=[gamma x_1,x_2]=[x_1,gamma x_2],
    quad [gamma x_1,h_(2 n)] \
    =gamma[x_1,h_(2 n)]=gamma z_1,
    [h_12,gamma x_2]=gamma[h_12,x_2]=gamma z_2, \
    quad [h_(n-1,n),gamma x_2]=gamma[h_(n-1,n),x_2]=e.
  $
  Applying Lemma~@lem:interpretation-product again, we obtain
  $gamma z=(gamma z_1) ⊡ z_2=z_1 ⊡ (gamma z_2)$.
]

#auxiliary-lemma[
  Let $A$ be an $R$-algebra with unit, and let there exist an element $a$ of $A$
  such that every element of $A$ is uniquely represented as $alpha a$ for some
  $alpha in R$. Let $1_A=delta a$, $delta in R$. Then

  (1) $delta$ is invertible in $R$,

  (2) $alpha a dot beta a=(alpha beta delta^(-1))a$ for any $alpha,beta in R$,

  (3) $alpha mapsto (delta alpha)a$ is a ring isomorphism of $R$ and $A$.
] <lem:interpretation-rank-one>

#proof[
  Let $a dot a=gamma a$, where $gamma in R$. Then
  $(delta gamma)a=delta(a dot a)=1_A dot a=a$. Hence $delta gamma=1_R$ and,
  consequently, (1) holds. We have $alpha a dot beta a=(alpha beta gamma)a
  =(alpha beta delta^(-1))a$. Hence (2) holds. Since $delta$ is invertible in
  $R$, the mapping $alpha mapsto (delta alpha)a$ is an additive isomorphism of
  $R$ and $A$. This mapping preserves multiplication because
  $(delta alpha beta)a
  =(delta alpha delta beta delta^(-1))a
  =(delta alpha)a dot lr((delta beta))a$ in view of (2). Thus, we have verified
  (3).
]

It is obvious that the $R$-algebra $Ring(U, frak(h))$ satisfies the assumptions
of Lemma~@lem:interpretation-rank-one with $a=t_(1 n)$. Let
$h_(1 n)=t_(1 n) lr((delta))$, where $delta in R$. Since $h_(1 n)$ is the unit
of $Ring(U, frak(h))$, it follows that the element $delta$ is invertible in $R$
and the mapping $alpha mapsto t_(1 n) lr((alpha delta))$ is a ring isomorphism
between $R$ and $Ring(U, frak(h))$; moreover,
$t_(1 n) lr((alpha)) ⊡ t_(1 n) lr((beta))
=t_(1 n) lr((alpha beta delta^(-1)))$.

_Remark._ The above arguments yield one more proof of
Theorem~@th:quasi-groups-determine-ring. Indeed, let $f$ be an isomorphism of
$UT_n lr((S,q_1,dots,q_(n-1)))$ and $UT_n lr((R,g_1,dots,g_(n-1)))$. Let
$frak(t)$ be the standard basis in $UT_n lr((S,q_1,dots,q_(n-1)))$. Then
$frak(h)=f(frak(t))$ is a basis in $UT_n lr((R,g_1,dots,g_(n-1)))$, and
$
  S tilde.eq Ring(UT_n lr((S,q_1,dots,q_(n-1))), frak(t)) tilde.eq
  Ring(UT_n lr((R,g_1,dots,g_(n-1))), frak(h)) tilde.eq R.
$
Now we are ready to describe an interpretation $Pi$ of the ring $R$ in the group
$U$ without parameters. The domain of $Pi$ is the set $D_Pi$ of all finite
sequences $(frak(h),z)$, where $frak(h)$ is a basis in $U$ and $z in Z(U)$. By
@prop:basis-formula, $D_Pi$ is 0-definable in $U$ (uniformly in
$R,g_1,dots,g_(n-1)$). We define the coordinate mapping $f_Pi$ of the
interpretation $Pi$ as follows: $f_Pi lr((frak(h),z))=zeta delta^(-1)$, where
$z=t_(1 n) lr((zeta))$ and $h_(1 n)=t_(1 n) lr((delta))$. It is clear that
$f_Pi$ is a surjection from $D_Pi$ to $R$. It is required to show the (uniform)
0-definability in $U$ of the $f_Pi$-pre-images of the equality relation and the
graphs of the addition operation and the multiplication operation in $R$. These
facts follow from the lemmas below.

#auxiliary-lemma[
  For $(frak(h)',z'),(frak(h)'',z'') in D_Pi$ the following conditions are
  equivalent:

  (1) $f_Pi lr((frak(h)',z'))=f_Pi lr((frak(h)'',z''))$.

  (2) There exists $(frak(h),z) in D_Pi$ such that $z ⊡ h_(1 n)'=z'$ and
  $z ⊡ h_(1 n)''=z''$ in $Ring(U, frak(h))$.
] <lem:interpretation-equality>

#proof[
  (1)$=>$(2). Let $z'=t_(1 n) lr((zeta'))$, $z''=t_(1 n) lr((zeta''))$,
  $h_(1 n)'=t_(1 n) lr((delta'))$, and $h_(1 n)''=t_(1 n) lr((delta''))$. Assume
  that $f_Pi lr((frak(h)',z'))=f_Pi lr((frak(h)'',z''))=zeta$. Then
  $zeta'=zeta delta'$ and $zeta''=zeta delta''$. Therefore, in
  $Ring(U, frak(t))$ we have
  $t_(1 n) lr((zeta)) ⊡ t_(1 n) lr((delta'))=t_(1 n) lr((zeta'))$
  and $t_(1 n) lr((zeta)) ⊡ t_(1 n) lr((delta''))
  =t_(1 n) lr((zeta''))$. For $frak(h)$ we can take $frak(t)$ and for $z$ we can
  take $t_(1 n) lr((zeta))$.

  To prove the implication (2)$=>$(1), we assume that $(frak(h),z)$ testifies to
  (2). Let $h_(1 n)=t_(1 n) lr((delta))$. Since $z ⊡ h_(1 n)'=z'$ and
  $z ⊡ h_(1 n)''=z''$ in $Ring(U, frak(h))$, we have
  $zeta delta' delta^(-1)=zeta'$ and $zeta delta'' delta^(-1)=zeta''$ in view of
  the observation made after Lemma~@lem:interpretation-rank-one. Thus,
  $zeta' delta'^(-1)=zeta'' delta''^(-1)$, i.e., we have (1).
]

#auxiliary-lemma[
  For any bases $frak(h)$ and $frak(h)'$ in $U$ and $z in Z(U)$ there exists a
  unique $z' in Z(U)$ such that $f_Pi lr((frak(h),z))=f_Pi lr((frak(h)',z'))$.
] <lem:interpretation-change-basis>

#proof[
  In the above notation, the equality in the lemma is equivalent to
  $zeta delta^(-1)=zeta' delta'^(-1)$, i.e.,
  $z'=t_(1 n) lr((zeta delta^(-1)delta'))$.
]

#auxiliary-lemma[
  For $(frak(h)^1,z^1),(frak(h)^2,z^2),(frak(h)^3,z^3) in D_Pi$ the following
  conditions are equivalent:

  (1) $f_Pi lr((frak(h)^1,z^1))+f_Pi lr((frak(h)^2,z^2))
  =f_Pi lr((frak(h)^3,z^3))$ in $R$.

  (2) There exist a basis $frak(h)$ in $U$ and $z_ast^1,z_ast^2,z_ast^3 in Z(U)$
  such that $f_Pi lr((frak(h)^i,z^i))=f_Pi lr((frak(h),z_ast^i))$ and
  $z_ast^1 ⊞ z_ast^2=z_ast^3$ in $Ring(U, frak(h))$ for $i=1,2,3$.
] <lem:interpretation-addition>

#proof[
  (1)$=>$(2). Let $frak(h)$ be an arbitrary basis in $U$. By
  Lemma~@lem:interpretation-change-basis, there are $z_ast^i in Z(U)$ such that
  $f_Pi lr((frak(h)^i,z^i))=f_Pi lr((frak(h),z_ast^i))$. Condition (1) means
  that
  $zeta_ast^1 delta^(-1)+zeta_ast^2 delta^(-1)=zeta_ast^3 delta^(-1)$
  in $R$, i.e., $z_ast^1 ⊞ z_ast^2=z_ast^3$ in $Ring(U, frak(h))$.

  (2)$=>$(1). Assume that $frak(h),z_ast^1,z_ast^2,z_ast^3$ testify to (2). Then
  $zeta_ast^1+zeta_ast^2=zeta_ast^3$, and
  $zeta^i(delta^i)^(-1)=zeta_ast^i delta^(-1)$ for all $i$. Therefore,
  $zeta^1(delta^1)^(-1)+zeta^2(delta^2)^(-1)
  =zeta^3(delta^3)^(-1)$, i.e., we have (1).
]

#auxiliary-lemma[
  For $(frak(h)^1,z^1),(frak(h)^2,z^2),(frak(h)^3,z^3) in D_Pi$ the following
  conditions are equivalent:

  (1) $f_Pi lr((frak(h)^1,z^1)) f_Pi lr((frak(h)^2,z^2))
  =f_Pi lr((frak(h)^3,z^3))$ in $R$.

  (2) There exist a basis $frak(h)$ in $U$ and $z_ast^1,z_ast^2,z_ast^3 in Z(U)$
  such that $f_Pi lr((frak(h)^i,z^i))=f_Pi lr((frak(h),z_ast^i))$ and
  $z_ast^1 ⊡ z_ast^2=z_ast^3$ in $Ring(U, frak(h))$ for $i=1,2,3$.
] <lem:interpretation-multiplication>

#proof[
  (1)$=>$(2). Let $frak(h)$ be an arbitrary basis in $U$. By
  Lemma~@lem:interpretation-change-basis, there are $z_ast^i in Z(U)$ such that
  $f_Pi lr((frak(h)^i,z^i))=f_Pi lr((frak(h),z_ast^i))$. Condition (1) means
  that
  $zeta_ast^1 delta^(-1)zeta_ast^2 delta^(-1)=zeta_ast^3 delta^(-1)$
  in $R$, i.e., $z_ast^1 ⊡ z_ast^2=z_ast^3$ in $Ring(U, frak(h))$.

  (2)$=>$(1). Assume that $frak(h),z_ast^1,z_ast^2,z_ast^3$ testify to (2). Then
  $zeta_ast^1 zeta_ast^2 delta^(-1)=zeta_ast^3$ and
  $zeta^i(delta^i)^(-1)=zeta_ast^i delta^(-1)$, for all $i$. Therefore,
  $zeta^1(delta^1)^(-1)zeta^2(delta^2)^(-1)
  =zeta_ast^1 zeta_ast^2 delta^(-2)=zeta_ast^3 delta^(-1)
  =zeta^3(delta^3)^(-1)$, i.e., we have (1).
]

Proposition~@prop:parameter-free-commutative-ring is proved.

#proposition[
  If $R$ is an integral associative ring, then

  (i) the ring $R times R^op("op")$ is interpretable in the group
  $UT_n lr((R,g_1,dots,g_(n-1)))$ with definable parameters, and

  (ii) the group $UT_n lr((R))$ is interpretable in the ring
  $R times R^op("op")$ with definable parameters.
] <prop:opposite-ring-interpretation>

#proof[
  (i) Let $frak(h)=(h_(i j):1 <= i < j <= n)$ be a basis in the group
  $U=UT_n lr((R,g_1,dots,g_(n-1)))$. By
  @thm:quasi-unitriangular-characterization, there are $S,q_1,dots,q_(n-1)$, and
  an isomorphism $f$ between the expanded group
  $UT_n^ast lr((S,q_1,dots,q_(n-1)))$ and $(U,frak(h))$. By
  @th:quasi-groups-determine-ring, $R tilde.eq S$ or $R tilde.eq S^op("op")$.

  As was shown in @prop:opposite-ring-twisted-isomorphism, the mapping
  $u mapsto {}'u$ is an anti-isomorphism between the groups
  $UT_n lr((S^op("op"),q_(n-1),dots,q_1))$ and $UT_n lr((S,q_1,dots,q_(n-1)))$.
  Then the mapping $ast:u mapsto f({}'u)^(-1)$ is an isomorphism between the
  groups $UT_n lr((S^op("op"),q_(n-1),dots,q_1))$ and $U$, where $-1$ means the
  operation of taking the inverse element in $U$. Under this isomorphism, the
  standard basis in the group $UT_n lr((S^op("op"),q_(n-1),dots,q_1))$ goes to
  the basis $frak(h)^ast=(h_(n-j+1,n-i+1)^(-1):1 <= i < j <= n)$ in the group
  $U$. Therefore, for any basis $frak(h)$ in $U$ we have
  $
    R times R^op("op") tilde.eq S times S^op("op") tilde.eq
    Ring(U, frak(h)) times Ring(U, frak(h)^ast).
  $
  Thus, there exists an interpretation restoring $R times R^op("op")$ from $U$
  and $frak(h)$ for any basis in $U$. By @prop:basis-formula, the set of all
  bases in $U$ is 0-definable. Hence we obtain the required result.

  (ii) Since $R$ is integral, $R$ is directly indecomposable. Therefore, the
  ring $R times R^op("op")$ has exactly two minimal central idempotents, $(1,0)$
  and $(0,1)$. The first one generates an ideal isomorphic to $R$, whereas the
  second one generates an ideal isomorphic to $R^op("op")$. By
  @prop:opposite-ring-twisted-isomorphism, we have
  $UT_n lr((R)) tilde.eq UT_n lr((R^op("op")))$. Therefore, if $S$ is the ideal
  generated by a minimal central idempotent of $R times R^op("op")$, then
  $UT_n lr((S))$ is isomorphic to $UT_n lr((R))$. Since the set of all minimal
  central idempotents of any ring is 0-definable, we have an interpretation of
  the group $UT_n lr((R))$ in the ring $R times R^op("op")$ with definable
  parameters.
]

#corollary[
  An integral associative ring $R$ is interpretable in $UT_n lr((R))$ with
  definable parameters if and only if it is interpretable in the ring
  $R times R^op("op")$ with definable parameters.
] <cor:integral-parameter-interpretation>

The following question arises: When is an integral associative ring $R$ with
unit interpretable in the ring $R times R^op("op")$ with definable parameters?

If $R tilde.eq R^op("op")$, this is true. In this case, the ideal generated by a
minimal central idempotent of $R times R^op("op")$ is isomorphic to $R$.

If $R equiv.not R^op("op")$, the assertion remains valid. If $phi$ is a sentence
in the ring language such that $R models phi$ and $R^op("op") models not phi$,
then $(1,0)$ is a unique minimal central idempotent of $R times R^op("op")$
generating the ideal that is a model of $phi$. Hence $R times {0}$ is definable
in $R times R^op("op")$ even without parameters.

The author does not know an example of an integral ring $R$ such that
$R equiv R^op("op")$ and $R tilde.eq.not R^op("op")$. There exist nonintegral
rings with such a property, for example, the ring $R^(lambda mu)$ from
@sec:spectrum-negative-result, below (cf.
Lemma~@lem:opposite-ring-product-models and the remark after
Lemma~@lem:counterexample-group-spectrum), for $lambda != mu$.

#proposition[
  If $R$ is a commutative or integral associative ring, then $Th(R)$ and
  $Th(UT_n lr((R)))$ are recursively isomorphic.
] <prop:recursive-theory-isomorphism>

#proof[
  Since the group $UT_n lr((R))$ is interpretable in $R$ without parameters, we
  have $Th(UT_n lr((R))) <=_1 Th(R)$ in view of
  @fact:recursive-parameters-reduction.

  If $R$ is a commutative ring, then $Th(R) <=_1 Th(UT_n lr((R)))$ in view of
  @fact:recursive-parameters-reduction and
  @prop:parameter-free-commutative-ring.

  Let $R$ be integral. By @prop:opposite-ring-interpretation and
  @fact:recursive-parameters-reduction, $Th(UT_n lr((R)))$ and
  $Th(R times R^op("op"))$ are recursively isomorphic. Therefore, it suffices to
  prove that the theories $Th(R)$ and $Th(R times R^op("op"))$ are recursively
  isomorphic. It is obvious that $R times R^op("op")$ is interpretable in $R$
  without parameters. Hence $Th(R times R^op("op")) <=_1 Th(R)$. If
  $R equiv.not R^op("op")$, then, as was mentioned above, $R$ is interpretable
  in $R times R^op("op")$ without parameters, and consequently,
  $Th(R) <=_1 Th(R times R^op("op"))$ in view of
  @fact:recursive-parameters-reduction. If $R equiv R^op("op")$, then we have
  $Th(R times R)=Th(R times R^op("op"))$ by the Feferman–Vaught theorem
  @bib:feferman1959. As was mentioned above, in the case under consideration,
  $R$ is interpretable in $R times R$ with definable parameters. Consequently,
  $Th(R) <=_1 Th(R times R)$ in view of @fact:recursive-parameters-reduction.
  Thus, in any case, we have $Th(R) <=_1 Th(R times R^op("op"))$.
]

Since, by @prop:parameter-free-commutative-ring, the group $UT_n lr((R))$ and a
commutative associative ring are interpretable in each other without parameters,
the following natural question arises: Is it true that they are
bi-interpretable? We show that this is not true if $R$ is an algebraically
closed field. The plausible conjecture that an arbitrary ring $R$ and the group
$UT_n lr((R))$ over $R$ are not bi-interpretable remains open.

#proposition[
  If $R$ is an algebraically closed field, then $R$ and $UT_n lr((R))$ cannot be
  bi-interpretable.
] <prop:algebraically-closed-no-biinterpretation>

#proof[
  We denote $UT_n lr((R))$ by $U$. We prove that even arbitrary expansions of
  $U$ and $R$ by constants cannot be bi-interpretable.

  Assume the contrary, i.e., we assume that there exist an interpretation
  $Gamma$ of the group $U$ in $(R,overline(a))$ for some tuple $overline(a)$
  from $R$, an interpretation $Delta$ of the ring $R$ in $(U,overline(b))$ for
  some tuple $overline(b)$ in $U$, an isomorphism between $R$ and
  $Delta(Gamma(R))$ that is $overline(a)$-definable in $R$, and an isomorphism
  between $U$ and $Gamma(Delta(U))$ that is $overline(b)$-definable in $U$. It
  is easy to see that $R$ and $U$ can be assumed to be $aleph_0$-saturated.

  Since $R$ is strongly minimal and $Delta(Gamma(R))$ is definably isomorphic to
  $R$, we conclude that $Delta(Gamma(R))$ is a strongly minimal set of
  $R^op("eq")$ and, consequently, of $Gamma(R)^op("eq")$. Thus, $Delta(U)$ is a
  strongly minimal set of $U^op("eq")$. Since
  $U subset op("acl")^op("eq")(Gamma(Delta(U)),overline(b))$ and
  $Gamma(Delta(U)) subset op("acl")^op("eq")(Delta(U))$, we have
  $U subset op("acl")^op("eq")(Delta(U),overline(b))$. As is known
  @bib:baldwin1972, if $cal(A)$ is an $aleph_0$-saturated structure and
  $cal(A)=op("acl")(X)$ for some strongly minimal subset $X$, then $cal(A)$ is
  almost strongly minimal. Moreover, $cal(A)$ is almost strongly minimal if and
  only if $cal(A)^op("eq")$ is almost strongly minimal. Hence the group $U$ is
  almost strongly minimal. However, we will show in
  @prop:failure-almost-strong-minimality that the group $UT_n lr((S))$ is not
  almost strongly minimal for an arbitrary ring $S$. This is a contradiction.
]
