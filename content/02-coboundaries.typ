#import "main-defs.typ": *
#import "statements.typ": *

== When are any two bases conjugate by an automorphism?
<sec:conjugacy-of-bases>

#proposition[
  Assume that any two bases in any quasi-$UT_n lr((R))$-group are conjugate by
  an automorphism. Then $R tilde.eq R^op("op")$ and $Ext(R^+, R^+)=0$.
] <prop:transitive-bases-necessary>

#proof[
  By @prop:opposite-ring-twisted-isomorphism, for any $g_1,dots,g_(n-1)$ we have
  $
    UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq
    UT_n lr((R^op("op"),g_(n-1),dots,g_1)).
  $
  By @prop:transitive-bases-natural-isomorphism, these groups are naturally
  isomorphic. By @prop:natural-isomorphism-criterion, there exists an
  isomorphism $mu:R arrow R^op("op")$ such that $g_i^mu$ is cohomologous to
  $g_(n-i)$ for any $i$. Consider an arbitrary $g in S^2(R^+,R^+)$. We set
  $g_1=0$ and $g_(n-1)=g$. Then $g$ is cohomologous to 0. Thus,
  $R tilde.eq R^op("op")$ and $Ext(R^+, R^+)=0$.
]

#example[
  The converse assertion is, in general, not valid, as can be seen by looking at
  the following example, which is a modification of the construction in
  @prop:nonisomorphic-associated-rings.

  Let $K$ be a directly indecomposable associative ring with unit such that $K$
  is not isomorphic to $K^op("op")$ and $K^+$ is a torsion-free divisible group.
  We set $R=K times K^op("op")$ and $S=K times K$. It is clear that
  $R tilde.eq R^op("op")$. Since $R^+$ is a torsion-free divisible group, we
  have $Ext(R^+, R^+)=0$. As in @prop:nonisomorphic-associated-rings,
  $UT_n lr((R)) tilde.eq UT_n lr((S))$, but the rings $R$ and $S$ are not
  isomorphic. Hence the groups $UT_n lr((R))$ and $UT_n lr((S))$ are not
  naturally isomorphic. By @prop:transitive-bases-natural-isomorphism,
  $UT_n lr((R))$ has bases that are not conjugate by an automorphism.

  For an example of such $K$ we can consider the matrix ring
  $ mat(QQ, QQ(x); 0, QQ(x)). $
  This ring is directly indecomposable, since its center consists of all scalar
  $2 times 2$ matrices over $QQ$ and, consequently, $K$ has no nontrivial
  central idempotents. Proper nonzero right ideals of $K$ are as follows:
  $
    mat(QQ, QQ(x); 0, 0), quad mat(0, QQ(x); 0, 0), quad
    QQ(x) mat(0, f; 0, 1),
  $
  where $f in QQ(x)$. The ring $K$ has a left ideal whose additive group is
  isomorphic to $QQ$, namely,
  $ mat(0, QQ; 0, 0). $
  These facts can be verified in the same way as in the proof of
  @prop:asymmetric-triangular-ring. The additive groups of all nonzero right
  ideals of $K$ have infinite dimension over $QQ$, and there is a left ideal of
  $K$ of dimension 1 over $QQ$. Therefore, $K$ is not isomorphic to
  $K^op("op")$. It is obvious that $K^+$ is a torsion-free divisible group.
] <ex:opposite-ring-counterexample>

#proposition[
  For a commutative or integral associative ring $R$ the following conditions
  are equivalent:

  (1) Any two bases in a quasi-$UT_n lr((R))$-group are conjugate by an
  automorphism.

  (2) $R tilde.eq R^op("op")$ and $Ext(R^+, R^+)=0$.
] <prop:transitive-bases-criterion>

#proof[
  By @prop:transitive-bases-necessary, it suffices to prove that (2) implies
  (1). We show that under condition (2), any two bases in a
  quasi-$UT_n lr((R))$-group $H$ are conjugate by an automorphism. Consider an
  arbitrary basis $frak(h)$ in $H$. Then $(H,frak(h))$ is isomorphic to an
  expanded group of the form $UT_n^ast lr((S,q_1,dots,q_(n-1)))$. Since $R$ is
  commutative or integral, from @th:quasi-groups-determine-ring it follows that
  $S tilde.eq R$ or $S tilde.eq R^op("op")$. Therefore, $(H,frak(h))$ is
  isomorphic to $UT_n lr((R,g_1,dots,g_(n-1)))$ or
  $UT_n lr((R^op("op"),g_1,dots,g_(n-1)))$ for some cocycles $g_1,dots,g_(n-1)$
  from $S^2(R^+,R^+)$. Assume that the first case holds. Since
  $Ext(R^+, R^+)=0$, all $g_1,dots,g_(n-1)$ are coboundaries. By
  @prop:coboundary-central-map, there exists a central isomorphism between
  $UT_n lr((R,g_1,dots,g_(n-1)))$ and $UT_n lr((R))$. In particular, these
  groups are naturally isomorphic. By @prop:expanded-natural-isomorphism,
  $(H,frak(h)) tilde.eq
  UT_n^ast lr((R,g_1,dots,g_(n-1))) tilde.eq UT_n^ast lr((R))$. If the second
  case holds, then $(H,frak(h)) tilde.eq UT_n^ast lr((R^op("op")))$. By
  $R tilde.eq R^op("op")$, we have $(H,frak(h)) tilde.eq UT_n^ast lr((R))$ in
  any case. Since the basis $frak(h)$ is arbitrary, for any bases $frak(h)$ and
  $frak(h)'$ in $H$ we have $(H,frak(h)) tilde.eq (H,frak(h)')$, which means
  that these bases are conjugate by an automorphism in $H$.
]

_Remark._ The condition $Ext(R^+, R^+)=0$ holds, for example, if $R$ is a
divisible or free abelian group. Thus, the rings $ZZ$, $ZZ[x]$, and any
$QQ$-algebra can serve as examples of rings satisfying this condition. For
commutative rings condition (2) goes to the condition $Ext(R^+, R^+)=0$.
However, (2) holds not only for commutative rings. For example, it holds for the
quaternion skew field. Thus, any two bases in a quasi-$UT_n lr((R))$-group are
conjugate by an automorphism if $R$ is a field of characteristic 0, the
quaternion skew field, $QQ[x]$, $ZZ$, or $ZZ[x]$.

The natural question arises: What conditions on $R^+$ ensure that any two bases
in $UT_n lr((R))$ are conjugate by an automorphism? We will answer this question
in the case of a commutative associative ring $R$ for $n=3$. In this case, we
have the transition formulas from Proposition~@prop:basis-transition-formula.

#proposition[
  Let $R$ be a commutative associative ring. Then any two bases in
  $UT_3 lr((R))$ are conjugate by an automorphism if and only if the cocycle pr
  is a coboundary for $R$.
] <prop:three-dimensional-bases-coboundary>

#proof[
  Let $frak(g)$ and $frak(g)'$ be arbitrary bases in $UT_3 lr((R))$. By
  @prop:coordinate-basis-form, they have the form
  $
    frak(g)=((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),
      (0,0,Delta)), \
    frak(g)'=((alpha_1',beta_1',gamma_1'),
      (alpha_2',beta_2',gamma_2'),(0,0,Delta')),
  $
  where $Delta=alpha_1 beta_2-alpha_2 beta_1$ and
  $Delta'=alpha_1' beta_2'-alpha_2' beta_1'$ are invertible in $R$. Consider the
  bases
  $
    frak(h)=((alpha_1,beta_1,0),(alpha_2,beta_2,0),(0,0,Delta)), \
    frak(h)'=((alpha_1',beta_1',0),(alpha_2',beta_2',0),
      (0,0,Delta')).
  $
  By @prop:congruent-bases-conjugate, the bases $frak(g)$ and $frak(h)$, as well
  as $frak(g)'$ and $frak(h)'$, are conjugate by an automorphism. By
  @prop:basis-transition-formula,
  $
    (UT_3 lr((R)),frak(h)) tilde.eq UT_3^ast lr(
      (R,
        Delta^(-1)alpha_1 beta_1 op("pr"),
        Delta^(-1)alpha_2 beta_2 op("pr"))
    ), \
    (UT_3 lr((R)),frak(h)') tilde.eq UT_3^ast lr(
      (R,
        Delta'^(-1)alpha_1' beta_1' op("pr"),
        Delta'^(-1)alpha_2' beta_2' op("pr"))
    ).
  $
  Therefore, the condition that $frak(g)$ and $frak(g)'$ are conjugate by an
  automorphism is equivalent to the condition
  $
    UT_3^ast lr(
      (R,Delta^(-1)alpha_1 beta_1 op("pr"),
        Delta^(-1)alpha_2 beta_2 op("pr"))
    ) tilde.eq
    UT_3^ast lr(
      (R,Delta'^(-1)alpha_1' beta_1' op("pr"),
        Delta'^(-1)alpha_2' beta_2' op("pr"))
    ).
  $
  By @prop:natural-isomorphism-criterion and @prop:expanded-natural-isomorphism,
  this is equivalent to the existence of an automorphism $mu$ of the ring $R$
  such that the cocycles $(Delta^(-1)alpha_i beta_i op("pr"))^mu$ and
  $Delta'^(-1)alpha_i' beta_i' op("pr")$ are cohomologous for $i=1,2$, i.e., the
  cocycle
  $(mu(Delta^(-1)alpha_i beta_i)-Delta'^(-1)alpha_i' beta_i')op("pr")$
  is a coboundary. If the cocycle pr is a coboundary, then the bases $frak(g)$
  and $frak(g)'$ are conjugate by an automorphism. Assume that any two bases in
  $UT_3 lr((R))$ are conjugate by an automorphism. In particular, this is true
  for the bases
  $
    frak(g)=((1,1,0),(0,1,0),(0,0,1)), quad
    frak(g)'=((1,0,0),(0,1,0),(0,0,1)).
  $
  In this case, for any automorphism $mu$ of the ring $R$ we have
  $
    mu(Delta^(-1)alpha_1 beta_1)-Delta'^(-1)alpha_1' beta_1'=1, \
    quad mu(Delta^(-1)alpha_2 beta_2)-Delta'^(-1)alpha_2' beta_2'=0.
  $
  Therefore, the condition that these bases are conjugate by an automorphism
  means that pr is a coboundary.
]

== When is the multiplication a coboundary?
<sec:multiplication-coboundary>

In view of @prop:basis-transition-formula and
@prop:three-dimensional-bases-coboundary, we see that it is useful to know what
commutative associative rings should be so that the cocycle pr is a coboundary.
In this section, we present a number of results concerning this question. In
this section, all the rings under consideration are assumed to be commutative
and associative, but not necessarily with unit.

#proposition[
  If $Ext(R^+, R^+)=0$, then the cocycle pr is a coboundary. In particular, this
  is so if $R^+$ is a divisible or free abelian group.
] <prop:vanishing-ext-coboundary>

#proof[
  The first assertion is obvious. The second one follows from @bib:fuchs1970
  [14.4, 24.5].
]

#example[
  The assumptions of this proposition are satisfied for the rings $ZZ$, $ZZ[x]$
  and for any $QQ$-algebra.
] <ex:free-additive-examples>

We say that a ring $R$ is _2-binomial_ if for any element $alpha$ the ring $R$
contains the second binomial coefficient $frac(alpha(alpha-1), 2)$, i.e., the
sentence $forall alpha exists beta (alpha^2-alpha=2 beta)$ is true in $R$. It is
obvious that if the group $R^+$ is 2-divisible and 2-torsion-free, then the ring
$R$ is 2-binomial. It is clear that any 2-binomial ring is a 2-torsion-free
ring.

#proposition[
  If a ring $R$ is 2-binomial, then the cocycle pr is a coboundary for $R$.
] <prop:binomial-coboundary>

#proof[
  For $alpha,beta in R$ we have
  $
    ((alpha+beta)(alpha+beta-1))/2
    -(alpha(alpha-1))/2-(beta(beta-1))/2=alpha beta.
  $
  Hence pr is a coboundary for $R$.
]

#example[
  The ring $ZZ$ and any $QQ$-algebra are 2-binomial. In addition, $ZZ$ is a
  non-2-divisible ring. The ring $ZZ[x]$ does not contain $frac(x(x-1), 2)$.
  This is an example of a ring $R$ with $Ext(R^+, R^+)=0$ which is not
  2-binomial. Therefore, the converse to @prop:binomial-coboundary is not valid.

  The converse to @prop:vanishing-ext-coboundary does not hold either. There is
  an example of a 2-binomial ring $D$ such that $Ext(D^+, D^+) != 0$. Namely,
  let $D$ be the subring of the ring $QQ[x]$ that consists of all polynomials
  with integer constant term. It is obvious that $D$ is 2-binomial. Since
  $D^+ tilde.eq ZZ times QQ^((omega))$, from @bib:fuchs1970 [52.2] if follows
  that
  $
    Ext(D^+, D^+) tilde.eq Ext(ZZ, ZZ) times Ext(ZZ, QQ^((omega))) times
    Ext(QQ^((omega)), ZZ) times Ext(QQ^((omega)), QQ^((omega))).
  $
  By @bib:fuchs1970 [14.4, 24.5, 51, Ex. 7], we have
  $Ext(D^+, D^+) tilde.eq Ext(QQ^((omega)), ZZ) tilde.eq QQ^omega != 0$. By
  misuse of notation, we use the same notation for the classical rings $QQ$,
  $ZZ$, etc. and their additive groups.
] <ex:binomial-converse-counterexamples>

#proposition[
  Let $R=R_1 times R_2$. Then pr is a coboundary for $R$ if and only if pr is a
  coboundary for $R_1$ and $R_2$.
] <prop:product-coboundary>

#proof[
  _Sufficiency._ Let $u v equiv f_i^ast lr((u,v))$ in $R_i$ for some functions
  $f_i:R_i arrow R_i$. We set $f(x)=(f_1 lr((x_1)),f_2 lr((x_2)))$ for
  $(x_1,x_2) in R$. Then $x y equiv f^ast lr((x,y))$ in $R$.

  _Necessity._ Assume that $x y equiv f^ast lr((x,y))$ in $R$, where
  $f(x)=(f_1 lr((x)),f_2 lr((x)))$ for $x=(x_1,x_2) in R$. Then
  $u v equiv f_1^ast lr(((u,0),(v,0)))$ and
  $w z equiv f_2^ast lr(((0,w),(0,z)))$ for $u,v in R_1$ and $w,z in R_2$.
]

#example[
  Let $R=D times ZZ[x]$. By @prop:product-coboundary, pr is a coboundary for
  $R$. The ring $R$ is not 2-binomial since it does not contain
  $frac(alpha(alpha-1), 2)$, where $alpha=(0,x)$. By $Ext(D^+, D^+) != 0$ and
  @bib:fuchs1970 [52.2], we have $Ext(R^+, R^+) != 0$. Therefore, rings for
  which pr is a coboundary do not become exhausted by rings $R$ such that
  $Ext(R^+, R^+)=0$ and 2-binomial rings.
] <ex:nonbinomial-coboundary-example>

#proposition[
  Let $R$ be a ring such that the cocycle pr is a coboundary. Let $a$ be an
  idempotent of $R$, and let $n$ be a natural number. Then $2 n a=0$ implies
  that $n a=0$ in $R$.
] <prop:idempotent-torsion-obstruction>

#proof[
  Let $x y equiv f^ast lr((x,y))$ in $R$. In particular, setting $x:=n a$ and
  $y:=a$, we have $f(n a+a)=f(n a)+f(a)-n a$ for any natural number $n$.
  Proceeding by induction, for any natural number $n$ we have
  $ f(n a)=n f(a)-(1+2+dots+(n-1))a. $
  Assume that $2 n a=0$. Setting $x,y:=n a$ in $x y equiv f^ast lr((x,y))$, we
  find that
  $
    n^2 a=n^2 a^2=2 f(n a)-f(2 n a) \
    =2 n f(a)-2(1+2+dots+(n-1))a-f(0) \
    =2 n f(a)+n a-n^2 a.
  $
  Hence $n a=2 n^2 a-2 n f(a)=-2 n f(a)$ and, consequently,
  $n a=n a^2=-2 n f(a)a=0$.
]

#proposition[
  Let $R$ be an integral domain. If pr is a coboundary for $R$, then $R$ is a
  2-torsion-free ring.
] <prop:integral-coboundary-torsion-free>

#proof[
  Assume that pr is a coboundary for $R$. If $1 != 0$ in $R$, then $2 != 0$ in
  $R$ by @prop:idempotent-torsion-obstruction. Since $R$ is integral,
  $2 alpha=0$ implies $alpha=0$, i.e., $R$ is 2-torsion-free.
]

#proposition[
  Let $R$ be a ring of finite characteristic with unit. Then pr is a coboundary
  for $R$ if and only if $char(R)$ is odd.
] <prop:finite-characteristic-coboundary>

#proof[
  The necessity follows from @prop:idempotent-torsion-obstruction.

  _Sufficiency._ If $char(R)$ is odd, then $R^+$ is a 2-torsion-free 2-divisible
  group. Therefore, the ring $R$ is 2-binomial, and pr is a coboundary in view
  of @prop:binomial-coboundary.
]

#proposition[
  Let $R$ be a field. Then pr is a coboundary for $R$ if and only if
  $char(R) != 2$.
] <prop:field-coboundary>

#proof[
  For $char(R) != 0$ the result follows from
  @prop:finite-characteristic-coboundary. If $char(R)=0$, then the group $R^+$
  is divisible, and the result follows from @prop:vanishing-ext-coboundary. To
  get another proof, note that in this case the field $R$ is 2-binomial, and the
  result follows from @prop:binomial-coboundary.
]

#proposition[
  Let $R_1$ be obtained from a ring $R$ by adjoining the unit. Then pr is a
  coboundary for $R_1$ if and only if pr is a coboundary for $R$.
] <prop:unit-adjunction-coboundary>

#proof[
  Elements of the ring $R_1$ are expressions of the form $n+alpha$, where
  $n in ZZ$, $alpha in R$; moreover,
  $
    (n+alpha)+(n'+alpha')=(n+n')+(alpha+alpha'), \
    (n+alpha) dot lr((n'+alpha')) \
    =n n'+(alpha n'+alpha' n+alpha alpha').
  $
  Let pr be a coboundary for $R$, and let
  $alpha alpha' equiv f^ast lr((alpha,alpha'))$ in $R$. We introduce the
  function $f_1:R_1 arrow R_1$ such that
  $f_1 lr((n+alpha))=frac(n(1-n), 2)+f(alpha)-n alpha$. We have
  $
    f_1^ast lr(((n+alpha),(n'+alpha')))
    =(frac(n(1-n), 2)+f(alpha)-n alpha) \
    +(frac(n'(1-n'), 2)+f(alpha')-n' alpha') \
    -frac((n+n')(1-n-n'), 2)-f(alpha+alpha') \
    +(n+n')(alpha+alpha')
    \
    =n n'+alpha alpha'+n' alpha+n alpha'
    =(n+alpha)(n'+alpha'),
  $
  i.e., $x x' equiv f_1^ast lr((x,x'))$ in $R_1$. Hence pr is a coboundary for
  $R_1$. Conversely, let pr be a coboundary for $R_1$, and let
  $x x' equiv f_1^ast lr((x,x'))$ in $R_1$. Let
  $f_1 lr((n+alpha))=g(n+alpha)+f(n+alpha)$, where $g(n+alpha) in ZZ$ and
  $f(n+alpha) in R$. Then $f_1 lr((alpha))=g(alpha)+f(alpha)$ for $alpha in R$.
  For $alpha,alpha' in R$ we have $alpha alpha'=f_1^ast lr((alpha,alpha'))
  =g^ast lr((alpha,alpha'))+f^ast lr((alpha,alpha'))$. Hence
  $alpha alpha'=f^ast lr((alpha,alpha'))$. Consequently, pr is a coboundary for
  $R$.
]

In connection with @prop:integral-coboundary-torsion-free, a question arises: Is
the condition that $R$ be an integral domain essential? The following result
shows this to be the case.

#proposition[
  For any abelian group $A$ there exists a ring $R$ with unit such that
  $R^+=A ⊕ ZZ$ and pr is a coboundary for $R$.
] <prop:prescribed-additive-coboundary-ring>

#proof[
  It suffices to apply @prop:unit-adjunction-coboundary to the ring with zero
  multiplication on the additive group $A$.
]

#proposition[
  If pr is a coboundary for $R$, then pr is a coboundary for the ring of
  polynomials $R[x]$.
] <prop:polynomial-coboundary>

#proof[
  Let $u v equiv f^ast lr((u,v))$ in $R$. We define
  $overline(f):R[x] arrow R[x]$ as follows:
  $
    overline(f) lr((sum_i alpha_i x^i))
    =sum_i f(alpha_i)x^(2 i)-sum_(i<j) alpha_i alpha_j x^(i+j).
  $
  We show that $p q equiv overline(f)^ast lr((p,q))$ in $R[x]$. Let
  $p(x)=sum_i alpha_i x^i$ and $q(x)=sum_i beta_i x^i$. Then
  $
    overline(f)^ast lr((p,q))
    =sum_i f^ast lr((alpha_i,beta_i)) x^(2 i)
    +sum_(i<j)(alpha_i beta_j+alpha_j beta_i)x^(i+j)
    \
    =sum_i alpha_i beta_i x^(2 i)
    +sum_(i<j)(alpha_i beta_j+alpha_j beta_i)x^(i+j) \
    =p q,
  $
  as required.
]

_Remark._ The constructed function $overline(f)$ extends $f$.

#proposition[
  If pr is a coboundary for $R$, then pr is a coboundary for any free
  commutative associative $R$-algebra.
] <prop:free-algebra-coboundary>

#proof[
  A free commutative associative $R$-algebra of rank $kappa$ can be realized as
  the ring $R[x_alpha:alpha<kappa]$ of monomials over $R$ in $kappa$ pairwise
  commuting variables. We introduce the notation
  $R_alpha=R[x_gamma:gamma<alpha]$. By induction on the ordinal
  $alpha <= kappa$, using @prop:polynomial-coboundary and the remark after it,
  we can easily show that there exists an increasing sequence of mappings
  $f_beta:R_beta arrow R_beta$, $beta <= alpha$, such that for every $beta$ we
  have $u v equiv f_beta^ast lr((u,v))$ in $R_beta$. In particular,
  $u v equiv f_kappa^ast lr((u,v))$ in $R_kappa$, and pr is a coboundary for the
  ring $R_kappa$.
]

#proposition[
  If pr is a coboundary for $R$, then there exists an endomorphism $tau$ of the
  group $R^+$ such that $tau(x)-x^2 in 2 R$ for any $x in R$. If $R$ is a
  2-torsion-free ring, the converse assertion is also valid.
] <prop:additive-square-correction>

#proof[
  It is obvious that #math.equation(block: true, numbering: "(1)")[$
    x y equiv f(x)+f(y)-f(x+y)
  $] <eq:coboundary-product>
  implies #math.equation(block: true, numbering: "(1)")[$
    (x+y)^2+2 f(x+y) equiv (x^2+2 f(x))+(y^2+2 f(y)).
  $] <eq:additive-square-correction>
  These conditions are equivalent if $R$ is a 2-torsion-free ring. Therefore,
  @eq:coboundary-product means that $tau:x mapsto x^2+2 f(x)$ is an endomorphism
  of the group $R^+$ and $tau(x)-x^2 in 2 R$ for any $x in R$. If $R$ is a
  2-torsion-free ring and there exists an endomorphism $tau$ of the group $R^+$
  such that $tau(x)-x^2 in 2 R$ for any $x in R$, then $f(x)=(tau(x)-x^2)/2$
  satisfies @eq:additive-square-correction and, consequently,
  @eq:coboundary-product.
]

Using @prop:additive-square-correction, it is possible to give one more proof of
@prop:polynomial-coboundary for a 2-torsion-free ring $R$. Indeed, assume that
$tau$ is an endomorphism of the group $R^+$ such that $tau(x)-x^2 in 2 R$ for
any $x in R$. We define an endomorphism $overline(tau)$ of the additive group of
the ring $R[x]$ as follows:
$ overline(tau) lr((sum_i alpha_i x^i))=sum_i tau(alpha_i)x^(2 i). $
We have
$
  overline(tau) lr((sum_i alpha_i x^i))-(sum_i alpha_i x^i)^2
  =sum_(i) lr((tau(alpha_i)-alpha_i^2))x^(2 i)
  -2 sum_(i<j) alpha_i alpha_j x^(i+j) in 2 R[x].
$

_Remark._ The condition that $R$ is a 2-torsion-free ring is essential in the
second part of @prop:additive-square-correction. For example, let $R$ be a
nonzero ring of characteristic 2 with unit. Then the mapping $tau:x mapsto x^2$
is an endomorphism of the ring $R$, and $tau(x)-x^2=0 in 2 R$ for any $x in R$.
Nevertheless, from @prop:idempotent-torsion-obstruction it follows that pr is
not a coboundary for $R$.

_Remark._ By @prop:prescribed-additive-coboundary-ring, for rings with unit, the
2-torsion condition is consistent with the condition that pr is a coboundary.
All examples, known to the author, of rings for which pr is not a coboundary,
have 2-torsion. However, it is plausible that such examples of torsion-free
rings exist.
