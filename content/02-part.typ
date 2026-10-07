#import "main-defs.typ": *
#import "statements.typ": *

#corollary[
  If $R$ is a noncommutative integral domain, then $(phi_1, phi_2) in P[f]$ if
  and only if
  $
    tau_1 lr((alpha,beta,overline(gamma))) equiv alpha rho,
    tau_2 lr((alpha,beta)) \
    equiv alpha lambda,
    sigma_1 lr((alpha,beta,overline(gamma))) equiv lambda beta, \
    sigma_2 lr((alpha,beta)) equiv rho beta
  $
  for some (uniquely determined) $rho,lambda in R$.
] <cor:integral-bilinear-scalar-pair>

#proof[
  Since $R$ is noncommutative, there are $delta$ and $delta'$ such that
  $delta delta' - delta' delta != 0$. Since $R$ is integral,
  $nu_1(delta delta'-delta' delta) =
  (delta' delta-delta delta') kappa_1 = 0$ implies $nu=kappa=0$.
]

== Isomorphisms between bilinear mappings associated with quasi-$UT_n$-groups
<sec:bilinear-isomorphisms>

#proposition[
  Let $R$ and $S$ be associative rings with unit, and let $n >= 3$,
  $f_n^R tilde.eq f_n^S$. Then $Z(R) tilde.eq Z(S)$. If $R$ is commutative, then
  $R tilde.eq S$.
] <prop:bilinear-centers>

#proof[
  Since $f_n^R tilde.eq f_n^S$, we can assume that $R$ and $S$ have the same
  additive group, say, $A$. There exist $Phi_0 in Aut(A)$,
  $Phi_1 in Aut(A^(n-1))$, and $Phi_2 in Aut(A^2)$ such that for $x in A^(n-1)$
  and $y in A^2$ we have
  $f_n^S lr((Phi_1(x),Phi_2(y))) = Phi_0(f_n^R lr((x,y)))$.

  We introduce the notation $P_S=P(f_n^S)$ and $P_R=P(f_n^R)$. It is easy to see
  that
  $
    P_S = {(Phi_0 phi_0 Phi_0^(-1), Phi_1 phi_1 Phi_1^(-1),
        Phi_2 phi_2 Phi_2^(-1)): (phi_0,phi_1,phi_2) in P_R}.
  $
  Let $bullet$ and $star$ be the multiplication, and $1^bullet$ and $1^star$ the
  units in $R$ and $S$ respectively. We fix $delta in Z(R)$. Define
  $phi_0 in op("End")(A)$, $phi_1 in op("End")(A^(n-1))$, and
  $phi_2 in op("End")(A^2)$ as follows:
  $phi_0 lr((alpha)) equiv delta bullet alpha$,
  $phi_1 lr((alpha,beta,overline(gamma))) equiv
  (delta bullet alpha,delta bullet beta,overline(0))$, and
  $phi_2 lr((alpha,beta)) equiv (delta bullet alpha,delta bullet beta)$. By
  @prop:bilinear-endomorphism-triples, we have $(phi_0,phi_1,phi_2) in P_R$.
  Hence $(Phi_0 phi_0 Phi_0^(-1),Phi_1 phi_1 Phi_1^(-1),
    Phi_2 phi_2 Phi_2^(-1)) in P_S$.

  Applying @prop:bilinear-endomorphism-triples to the ring $S$, for uniquely
  determined $chi(delta) in Z(S)$ and $pi in Hom(A^(n-1), A^(n-3))$ we have
  $
    (Phi_0 phi_0 Phi_0^(-1))(alpha) equiv chi(delta) star alpha, \
    (Phi_1 phi_1 Phi_1^(-1))(alpha,beta,overline(gamma)) equiv
    (chi(delta) star alpha,chi(delta) star beta,
      pi(alpha, beta, overline(gamma))), \
    (Phi_2 phi_2 Phi_2^(-1))(alpha,beta) equiv
    (chi(delta) star alpha,chi(delta) star beta).
  $
  In particular, for $alpha in A$ and $delta in Z(R)$ we find that
  $Phi_0(delta bullet alpha)=chi(delta) star Phi_0(alpha)$. Applying similar
  arguments to the triple $(Phi_0^(-1),Phi_1^(-1),Phi_2^(-1))$, we conclude that
  there exists a mapping $theta: Z(S) arrow Z(R)$ such that
  $Phi_0^(-1) lr((zeta star alpha))=
  theta(zeta) bullet Phi_0^(-1) lr((alpha))$ for all $alpha in A$ and
  $zeta in Z(S)$. Hence
  $
    zeta star alpha = Phi_0(Phi_0^(-1) lr((zeta star alpha)))
    = Phi_0(theta(zeta) bullet Phi_0^(-1) lr((alpha)))
    \
    = chi(theta(zeta)) star Phi_0(Phi_0^(-1) lr((alpha)))
    = chi(theta(zeta)) star alpha.
  $
  Setting $alpha=1^star$, we find that $chi compose theta=op("id")$. Similarly,
  $theta compose chi=op("id")$. Therefore, $chi$ is a bijection from $Z(R)$ onto
  $Z(S)$.

  We show that $chi$ is an isomorphism between $Z(R)$ and $Z(S)$. Setting
  $alpha=1^bullet$ in the identity
  $Phi_0(delta bullet alpha)=chi(delta) star Phi_0(alpha)$, we find that
  $Phi_0(delta)=chi(delta) star Phi_0(1^bullet)$ for any $delta in Z(R)$.

  If $zeta,zeta' in Z(S)$ and
  $zeta star Phi_0(1^bullet)=zeta' star Phi_0(1^bullet)$, then $zeta=zeta'$.
  Indeed, let $zeta=chi(delta)$ and $zeta'=chi(delta')$. Then
  $Phi_0(delta)=chi(delta) star Phi_0(1^bullet)=
  chi(delta') star Phi_0(1^bullet)=Phi_0(delta')$, which implies $delta=delta'$.
  Therefore, $zeta=zeta'$.

  For $delta,delta' in Z(R)$ we have
  $
    chi(delta+delta') star Phi_0(1^bullet) = Phi_0(delta+delta')
    = Phi_0(delta)+Phi_0(delta')
    \
    = chi(delta) star Phi_0(1^bullet)+chi(delta') star Phi_0(1^bullet)
    = (chi(delta)+chi(delta')) star Phi_0(1^bullet), \
    chi(delta delta') star Phi_0(1^bullet)=Phi_0(delta bullet delta')
    =chi(delta) star Phi_0(delta')
    \
    =chi(delta) star chi(delta') star Phi_0(1^bullet).
  $
  Therefore, $chi(delta+delta')=chi(delta)+chi(delta')$ and
  $chi(delta delta')=chi(delta) star chi(delta')$. Thus, $Z(R) tilde.eq Z(S)$.

  To prove the second part of the assertion, we note that $Z(R)=R$ implies that
  $chi$ is a bijection from $R$ onto $S$. Indeed, if $Z(R)=R$, then for
  $alpha,beta in A$ we have
  $Phi_0(alpha bullet beta)=chi(alpha) star Phi_0(beta)$. Setting
  $beta=1^bullet$ and taking into account that $chi(alpha) in Z(S)$, we find
  that $Phi_0(alpha)=chi(alpha) star Phi_0(1^bullet)=
  Phi_0(1^bullet) star chi(alpha)$. Setting $alpha=Phi_0^(-1) lr((1^star))$, we
  obtain
  $
    1^star=chi(Phi_0^(-1) lr((1^star))) star Phi_0(1^bullet)
    =Phi_0(1^bullet) star chi(Phi_0^(-1) lr((1^star))).
  $
  Therefore, $Phi_0(1^bullet)$ is invertible in $S$. Hence $chi$ is a bijection
  from $R$ onto $S$.

  Thus, if $R$ is commutative, then $R tilde.eq S$.
]

#proposition[
  Let $R$ and $S$ be associative rings with unit, let $n >= 3$, and let
  $f_n^R tilde.eq f_n^S$. If $R$ is a noncommutative integral domain, then
  $R tilde.eq S$ or $R tilde.eq S^op("op")$.
] <prop:bilinear-integral-rings>

#proof[
  Since $f_n^R tilde.eq f_n^S$, we can assume that $R$ and $S$ have the same
  additive group, say, $A$. There exist $Phi_0 in Aut(A)$,
  $Phi_1 in Aut(A^(n-1))$, $Phi_2 in Aut(A^2)$ such that for $x in A^(n-1)$,
  $y in A^2$ we have
  $ f_n^R lr((Phi_1(x),Phi_2(y)))=Phi_0(f_n^S lr((x,y))). $
  Introduce the notation $P^S=P[f_n^S]$ and $P^R=P[f_n^R]$. It is easy to see
  that
  $
    P^R={(Phi_1 phi_1 Phi_1^(-1),Phi_2 phi_2 Phi_2^(-1)):
      (phi_1,phi_2) in P^S}.
  $
  Let $bullet$ and $star$ be the multiplication and $1^bullet$ and $1^star$ the
  units in $S$ and $R$ respectively. Fix $rho,lambda in A$. Define
  $phi_1 in op("End")(A^(n-1))$ and $phi_2 in op("End")(A^2)$ as follows:
  $phi_1 lr((alpha,beta,overline(gamma))) equiv
  (alpha bullet rho,lambda bullet beta,overline(0))$ and
  $phi_2 lr((alpha,beta)) equiv (alpha bullet lambda,rho bullet beta)$. By
  @prop:bilinear-endomorphism-pairs, $(phi_1,phi_2) in P^S$. Hence
  $(Phi_1 phi_1 Phi_1^(-1),Phi_2 phi_2 Phi_2^(-1)) in P^R$. By
  @cor:integral-bilinear-scalar-pair, for some uniquely determined elements
  $chi_1 lr((rho,lambda))$ and $chi_2 lr((rho,lambda))$ of $A$ we have
  $
    (Phi_2 phi_2 Phi_2^(-1))(alpha,beta) equiv
    (alpha star chi_1 lr((rho,lambda)),
      chi_2 lr((rho,lambda)) star beta).
  $
  Let $Phi_2 lr((alpha,beta))=(theta_1 lr((alpha,beta)),
    theta_2 lr((alpha,beta)))$. Then
  $
    (theta_1 lr((alpha bullet lambda,rho bullet beta)),
      theta_2 lr((alpha bullet lambda,rho bullet beta)))
    \
    =(theta_1 lr((alpha,beta)) star chi_1 lr((rho,lambda)),
      chi_2 lr((rho,lambda)) star theta_2 lr((alpha,beta)))
  $
  for any $alpha,beta,rho,lambda in A$. Setting $alpha=beta=1^bullet$, we have
  $
    theta_1 lr((lambda,rho))=theta_1 lr((1^bullet,1^bullet))
    star chi_1 lr((rho,lambda)), \
    theta_2 lr((lambda,rho))=chi_2 lr((rho,lambda))
    star theta_2 lr((1^bullet,1^bullet)).
  $
  Since $Phi_2$ is a permutation of $A^2$, for some $rho_0,lambda_0 in A$ we
  have
  $
    1^star=theta_1 lr((1^bullet,1^bullet))
    star chi_1 lr((rho_0,lambda_0))
    \
    =chi_2 lr((rho_0,lambda_0)) star theta_2 lr((1^bullet,1^bullet)).
  $
  Hence $chi_i lr((rho_0,lambda_0))=chi_i lr((rho_0,lambda_0))
  star theta_i lr((1^bullet,1^bullet))
  star chi_i lr((rho_0,lambda_0))$ for $i=1,2$. Since $R$ is integral, the
  elements $theta_i lr((1^bullet,1^bullet))$ are invertible in $R$. Let $eta_i$
  be the inverse element to $theta_i lr((1^bullet,1^bullet))$ in $R$. Then
  $chi_1 lr((rho,lambda))=eta_1 star theta_1 lr((lambda,rho))$ and
  $chi_2 lr((rho,lambda))=theta_2 lr((lambda,rho)) star eta_2$. Thus, for any
  $alpha,beta,rho,lambda in A$ we have
  $
    theta_1 lr((alpha bullet lambda,rho bullet beta))
    =theta_1 lr((alpha,beta)) star eta_1 star theta_1 lr((lambda,rho)), \
    theta_2 lr((alpha bullet lambda,rho bullet beta))
    =theta_2 lr((lambda,rho)) star eta_2 star theta_2 lr((alpha,beta)),
  $
  i.e.,
  $
    eta_1 star theta_1 lr((alpha bullet lambda,beta bullet^op("op") rho))
    =(eta_1 star theta_1 lr((alpha,beta)))
    star (eta_1 star theta_1 lr((lambda,rho))), \
    theta_2 lr((alpha bullet lambda,beta bullet^op("op") rho)) star eta_2
    =(theta_2 lr((alpha,beta)) star eta_2)
    star^op("op") (theta_2 lr((lambda,rho)) star eta_2).
  $
  Therefore the automorphism
  $(alpha,beta) mapsto (eta_1 star theta_1 lr((alpha,beta)),
    theta_2 lr((alpha,beta)) star eta_2)$ of the abelian group $A^2$ is an
  isomorphism of the rings $S times S^op("op")$ and $R times R^op("op")$. Since
  the ring $R$ is integral, it is directly indecomposable. Therefore, the image
  of $S times {0}$ under this isomorphism is either $R times {0}$ or
  ${0} times R^op("op")$. Therefore, $R tilde.eq S$ or $R tilde.eq S^op("op")$.
]

== Quasi-unitriangular groups over commutative or integral rings
<sec:ring-reconstruction>

As was shown in @prop:nonisomorphic-associated-rings,
$UT_n lr((R)) tilde.eq UT_n lr((S))$ does not, in general, imply $R tilde.eq S$
or $R tilde.eq S^op("op")$. However, the following theorem holds.

#theorem[
  Let $R$ and $S$ be associative rings, and let $n >= 3$. Suppose that
  $UT_n lr((R,g_1,dots,g_(n-1))) tilde.eq
  UT_n lr((S,q_1,dots,q_(n-1)))$. If $R$ is commutative, then $R tilde.eq S$. If
  $R$ is integral, then $R tilde.eq S$ or $R tilde.eq S^op("op")$.
] <th:quasi-groups-determine-ring>

#proof[
  By @cor:group-isomorphism-bilinear-invariant, we have $f_n^R tilde.eq f_n^S$.
  The required result follows from @prop:bilinear-centers and
  @prop:bilinear-integral-rings.
]

In particular, we have the following corollary.

#corollary[
  Let $R$ and $S$ be associative rings, and let $n >= 3$. Assume that
  $UT_n lr((R)) tilde.eq UT_n lr((S))$. If $R$ is commutative, then
  $R tilde.eq S$. If $R$ is integral, then $R tilde.eq S$ or
  $R tilde.eq S^op("op")$.
] <cor:ordinary-groups-determine-ring>

== Bases in the case $n=3$
<sec:three-dimensional-bases>

Let $H$ be a group. Let $frak(h)=(h_(i j): 1 <= i < j <= 3)$ be a family of
elements, and let $frak(H)=(H_(i j):1 <= i < j <= 3)$ be a family of subgroups
of $H$ such that $[h_12,h_23]=h_13$ and $h_(i j) in H_(i j)$ for any $i$ and
$j$. In this case, conditions (0)–(6) from @sec:one-parameter-subgroups take the
form

(0) $H_13 <= H_12,H_23$,

(1) $[H_12,H_12]=[H_13,H_13]=[H_12,H_13]=[H_23,H_13]=1$, and $[H_12,H_23]=H_13$,

(2) $[H_12,h_23]=[h_12,H_23]=H_13$,

(3) $H_12 inter C_H lr((h_23))=H_23 inter C_H lr((h_12))=H_13$,

(4) is not applicable in the case $n=3$,

(5) for $x in H_12$, $y in H_23$, $z in H_12$, and $v in H_23$ we have
$ [x,h_23]=[z,h_23] and [h_12,y]=[h_12,v] => [x,y]=[z,v], $

(6) $H=H_23 H_12 H_13$, and $H_12 inter H_23=H_13$.

#proposition[
  Conditions (0)–(6) are satisfied if and only if

  (i) $H$ is a 2-step nilpotent group,

  (ii) $C_H lr((h_12))$ and $C_H lr((h_23))$ are abelian,

  (iii) $C_H lr((h_12)) inter C_H lr((h_23))=Z(H)$,

  (iv) $[h_12,C_H lr((h_23))]=[C_H lr((h_12)),h_23]=Z(H)$, and

  (v) $H_12=C_H lr((h_12))$, $H_23=C_H lr((h_23))$, $H_13=Z(H)$.
] <prop:basis-centralizer-criterion>

#proof[
  _Sufficiency._ Condition (0) follows from (v). The first part of (1) follows
  from (ii) and (v), whereas the second part of (1) is a consequence of (v),
  (i), and (iv). We obtain condition (2) from (v) and (iv), and (3) from (v) and
  (iii).

  Let us verify (5). For $x,z in H_12$ the condition $[x,h_23]=[z,h_23]$ means
  that $x z^(-1) in H_12 inter C_H lr((h_23))$, i.e., by (v) and (iii), we have
  $x z^(-1) in Z(H)$. Similarly, for $y,v in H_23$ the condition
  $[h_12,y]=[h_12,v]$ means that $y v^(-1) in Z(H)$. Therefore, $[x,y]=[z,v]$.

  Let us verify (6). By (v), the second part is exactly condition (iii). To
  prove the first part, it suffices, by (v), to prove that
  $H=C_H lr((h_23)) C_H lr((h_12))$. Let $h in H$. By (i), $[h_12,h] in Z(H)$.
  By (iv), there is $u in C_H lr((h_23))$ such that $[h_12,u]=[h_12,h]$. Then
  $h u^(-1) in C_H lr((h_12))$, i.e., $h=u v$, where $u in C_H lr((h_23))$ and
  $v in C_H lr((h_12))$.

  _Necessity._ By (1) and (6), we have $H' <= H_13 <= Z(H)$. Therefore, (i)
  holds. If (v) is already proved, then we obtain condition (ii) from (1),
  condition (iii) from (3), and condition (iv) from (2).

  Let us show (v). By (1), we have $H_12 <= C_H lr((h_12))$ and
  $H_23 <= C_H lr((h_23))$. It remains to prove the reverse inclusions.

  Let $h in C_H lr((h_12))$. By (6), $h=u v$, where $u in H_23$ and $v in H_12$.
  We have $e=[h_12,h]=[h_12,u v]=[h_12,u]$. Hence
  $u in H_23 inter C_H lr((h_12))$, i.e., $u in H_13$ in view of (3). By (0), we
  have $h in H_12$. Thus, we have proved that $H_12=C_H lr((h_12))$. The
  equality $H_23=C_H lr((h_23))$ is proved in a similar way. It is clear that
  $Z(H) <= H_12 inter H_23$, i.e., $Z(H) <= H_13$ in view of (6). As was
  mentioned above, $H_13 <= Z(H)$. Therefore, $H_13=Z(H)$. Thus, (v) is proved.
]

#corollary[
  A triple $(h_12,h_23,h_13)$ is a quasi-$UT_3$-basis in $H$ if and only if
  $[h_12,h_23]=h_13$ and conditions (i)–(iv) are satisfied.
] <cor:quasi-basis-three>

#corollary[
  A triple $(h_12,h_23,h_13)$ is a $UT_3$-basis in $H$ if and only if
  $[h_12,h_23]=h_13$, conditions (i)–(iv) are satisfied, and $Z(H)$ is a direct
  summand of $C_H lr((h_12))$ and $C_H lr((h_23))$.
] <cor:splitting-basis-three>

#remark[
  Mal’tsev @bib:maltsev1960 proved that for a group $H$ and elements
  $h_1,h_2 in H$ the expanded group $(H,h_1,h_2)$ is isomorphic to
  $UT_3^ast lr((R))$ for some ring $R$ if and only if the following conditions
  hold:

  (a) $H$ is a 2-step nilpotent group,

  (b) $C_H lr((h_1))$ and $C_H lr((h_2))$ are abelian,

  (c) $C_H lr((h_1)) inter C_H lr((h_2))=Z(H)$,

  (d) $[h_1,C_H lr((h_2))]=[C_H lr((h_1)),h_2]=Z(H)$,

  (e) there are homomorphisms $rho_i: Z(H) arrow C_H lr((h_i))$ such that
  $[rho_1 lr((z)),h_2]=[h_1,rho_2 lr((z))]=z$ for any $z in Z(H)$, and
  $rho_1 lr(([h_1,h_2]))=h_1$, $rho_2 lr(([h_1,h_2]))=h_2$.

  Condition (e) means that for epimorphisms
  $
    tau_i: C_H lr((h_i)) arrow Z(H), quad
    tau_1 lr((x))=[x,h_2], \
    quad tau_2 lr((x))=[h_1,x]
  $
  there are splitting homomorphisms $rho_i: Z(H) arrow C_H lr((h_i))$ with
  $tau_i compose rho_i=op("id")$ and $rho_i lr((tau_i lr((h_i))))=h_i$.

  In view of (a)–(d), the condition that $Z(H)$ is a direct summand of
  $C_H lr((h_12))$ and $C_H lr((h_23))$ means that for epimorphisms
  $tau_i: C_H lr((h_i)) arrow Z(H)$, $tau_1 lr((x))=[x,h_2]$, and
  $tau_2 lr((x))=[h_1,x]$ there are splitting homomorphisms
  $rho_i: Z(H) arrow C_H lr((h_i))$, $tau_i compose rho_i=op("id")$. Therefore,
  this condition is a weak form of condition (e).

  Thus, for $n=3$, Corollary~@cor:unitriangular-characterization specifies the
  Mal’tsev characterization of expanded groups of the form $UT_3^ast lr((R))$.
] <rem:maltsev-characterization>

We characterize bases in $UT_3 lr((R,g_1,g_2))$. In this group, we have
$
  [(alpha,beta,gamma),(alpha',beta',gamma')]
  =(0,0,alpha beta'-alpha' beta).
$
For $UT_3 lr((R))$ this assertion is verified immediately. Therefore, it is also
valid for $UT_3 lr((R,g_1,g_2))$ since, in view of @prop:twisted-commutators,
the commutation operations in these groups coincide.

#proposition[
  Suppose that $H=UT_3 lr((R,g_1,g_2))$, $h_1,h_2 in H$, and
  $h_i=(alpha_i,beta_i,gamma_i)$. Then $h_1$ and $h_2$ satisfy conditions
  (b)–(d) from @rem:maltsev-characterization in $H$ if and only if the following
  two conditions are satisfied:

  (1) For any $alpha,beta,alpha',beta' in R$ and $i=1,2$
  $
    alpha beta_i=alpha_i beta amp alpha' beta_i=alpha_i beta'
    => alpha beta'=alpha' beta.
  $

  (2) For any $delta_1,delta_2 in R$ the system of equations
  $
    alpha beta_1-alpha_1 beta=delta_1,
    alpha beta_2-alpha_2 beta=delta_2
  $
  has a unique solution in $R$.
] <prop:coordinate-basis-criterion>

#proof[
  Using the formula for the computation of commutators, we can write condition
  (b) in the form (1). Condition (c) means that the system
  $alpha beta_1-alpha_1 beta=alpha beta_2-alpha_2 beta=0$ has only the zero
  solution. This means that any system of the form (2) has at most one solution.

  The condition $[h_1,C_H lr((h_2))]=Z(H)$ means that for any $delta_1 in R$ the
  system $alpha beta_1-alpha_1 beta=delta_1$, $alpha beta_2-alpha_2 beta=0$ has
  at least one solution. The condition $[C_H lr((h_1)),h_2]=Z(H)$ means that for
  any $delta_2 in R$ the system $alpha beta_1-alpha_1 beta=0$,
  $alpha beta_2-alpha_2 beta=delta_2$ has at least one solution. Therefore, (d)
  means that all systems of the form indicated in (2) have solutions.
]

#proposition[
  Assume that $R$ is a commutative associative ring, $H=UT_3 lr((R,g_1,g_2))$,
  and $h_1,h_2 in H$. Let $h_i=(alpha_i,beta_i,gamma_i)$. Then $h_1$ and $h_2$
  satisfy conditions (b)–(d) in @rem:maltsev-characterization in $H$ if and only
  if the element $Delta=alpha_1 beta_2-alpha_2 beta_1$ is invertible in $R$.
] <prop:determinant-basis-criterion>

#proof[
  As is well known, for a commutative associative ring $R$ with unit and an
  $n times n$ matrix $A$ over $R$, the system of linear equations $A X=B$ has a
  unique solution for any column $B$ from $R^n$ if and only if the element
  $det(A)$ is invertible in $R$. Therefore, condition (2) from
  @prop:coordinate-basis-criterion is equivalent to the invertibility of $Delta$
  in $R$. It remains to show that the invertibility of $Delta$ implies (1).

  For example, we assume that $alpha beta_1=alpha_1 beta$ and
  $alpha' beta_1=alpha_1 beta'$. Then
  $
    alpha' beta_2 alpha_1 beta=alpha' beta_2 alpha beta_1
    =alpha' beta_1 beta_2 alpha \
    =alpha_1 beta' beta_2 alpha,
    alpha_2 beta' alpha beta_1=alpha_2 beta' alpha_1 beta
    \
    =alpha_1 beta' alpha_2 beta=alpha' beta_1 alpha_2 beta,
  $
  which implies $alpha_1 beta_2(alpha beta'-alpha' beta)
  =alpha_2 beta_1(alpha beta'-alpha' beta)$ and, consequently,
  $Delta(alpha beta'-alpha' beta)=0$. Since $Delta$ is invertible, we have
  $alpha beta'=alpha' beta$.
]

Thus, we have the following assertion.

#proposition[
  If a ring $R$ is commutative and associative, then bases in
  $UT_3 lr((R,g_1,g_2))$ are precisely the triples of the form
  $
    ((alpha_1,beta_1,gamma_1),(alpha_2,beta_2,gamma_2),
      (0,0,alpha_1 beta_2-alpha_2 beta_1)),
  $
  where $alpha_1 beta_2-alpha_2 beta_1$ is invertible in $R$.
] <prop:coordinate-basis-form>

By this assertion, we conclude that $(h_1,h_2,h_3)$ and $(h_2,h_1,h_3^(-1))$ are
bases or are not bases in $UT_3 lr((R,g_1,g_2))$ simultaneously.

It is of interest to describe bases in $UT_n lr((R))$ for an arbitrary $n >= 3$
in the case of a commutative associative ring $R$.

#proposition[
  Let $R$ be a commutative associative ring. Then $(alpha_0,beta_0,gamma_0)$ is
  the first or second term of some basis in $UT_3 lr((R,g_1,g_2))$ if and only
  if $alpha_0$ and $beta_0$ generate $R$ as an ideal. In this case, the
  centralizer of the element $(alpha_0,beta_0,gamma_0)$ consists of precisely
  the elements of the form $(alpha_0 zeta,beta_0 zeta,gamma)$, where
  $zeta,gamma in R$; moreover, such a representation of elements of the
  centralizer is unique.
] <prop:unimodular-centralizer>

#proof[
  Let, say, $((alpha_0,beta_0,gamma_0),
    (alpha_0',beta_0',gamma_0'),(0,0,alpha_0 beta_0'-alpha_0' beta_0))$ be a
  basis in $UT_3 lr((R,g_1,g_2))$. By Proposition~@prop:coordinate-basis-form,
  $alpha_0 beta_0'-alpha_0' beta_0$ is invertible in $R$. Therefore, the ideal
  generated by $alpha_0$ and $beta_0$ contains 1. Hence this ideal coincides
  with $R$. Conversely, if this ideal coincides with $R$, then
  $alpha_0 alpha^0+beta_0 beta^0=1$ for some $alpha^0,beta^0 in R$. Then
  $((alpha_0,beta_0,gamma_0),(-beta^0,alpha^0,0),(0,0,1))$ is a basis in
  $UT_3 lr((R,g_1,g_2))$ in view of @prop:coordinate-basis-form.

  Using the formula for the computation of commutators, we conclude that
  $(alpha,beta,gamma)$ is a centralizer of $(alpha_0,beta_0,gamma_0)$ if and
  only if $alpha_0 beta=alpha beta_0$. Therefore, elements of the form
  $(alpha_0 zeta,beta_0 zeta,gamma)$ lie in the centralizer of
  $(alpha_0,beta_0,gamma_0)$.

  Conversely, if $alpha_0 beta=alpha beta_0$, then
  $
    alpha=(alpha_0 alpha^0+beta_0 beta^0)alpha
    =alpha_0(alpha alpha^0+beta beta^0), \
    beta=(alpha_0 alpha^0+beta_0 beta^0)beta
    =beta_0(alpha alpha^0+beta beta^0).
  $
  Therefore, any element centralizing $(alpha_0,beta_0,gamma_0)$ has the form
  $(alpha_0 zeta,beta_0 zeta,gamma)$.

  We show that such a representation is unique. Let $alpha_0 zeta=alpha_0 zeta'$
  and $beta_0 zeta=beta_0 zeta'$. Then $zeta=(alpha_0 alpha^0+beta_0 beta^0)zeta
  =(alpha_0 alpha^0+beta_0 beta^0)zeta'=zeta'$.
]

== Transition formulas
<sec:basis-transitions>

If $frak(h)$ is a basis in $UT_n lr((S,q_1,dots,q_(n-1)))$, then, in view of
@thm:quasi-unitriangular-characterization, we have
$
  (UT_n lr((S,q_1,dots,q_(n-1))),frak(h))
  tilde.eq UT_n^ast lr((R,g_1,dots,g_(n-1)))
$
for some $R,g_1,dots,g_(n-1)$.

Throughout this section, we assume that $S$ is a commutative associative ring.
Then $R tilde.eq S$ by @th:quasi-groups-determine-ring. Acting as in the case
$n=3$ and using the description of basis in quasi-$UT_3$-groups over commutative
associative rings (cf.~@sec:three-dimensional-bases), we show how, starting with
$frak(h)$, $q_1$, and $q_2$, to find an explicit form of 2-cocycles $r_1$ and
$r_2$ such that
$ (UT_3 lr((S,q_1,q_2)),frak(h)) tilde.eq UT_3^ast lr((S,r_1,r_2)). $

We follow the construction in the proof of
@thm:quasi-unitriangular-characterization, using the same notation.

We need the following notation. Let $q in S^2(S^+,S^+)$ and $alpha in S$. For
$x,y in S$ we set
$
  q^alpha lr((x,y))=q(alpha x,alpha y), quad
  (alpha q)(x,y)=alpha q(x,y).
$
It is easy to see that $alpha q,q^alpha in S^2(S^+,S^+)$.

For $x,y in S$ we set $op("pr")(x,y)=x y$, where pr is the abbreviation for the
product. It is easy to see that $op("pr") in S^2(S^+,S^+)$.

#proposition[
  Let $frak(h)$ be a basis in $H=UT_3 lr((S,q_1,q_2))$, where
  $frak(h)=(h_12,h_23,h_13)$, $h_12=(alpha_1,beta_1,0)$, and
  $h_23=(alpha_2,beta_2,0)$. Then
  $ (H,frak(h)) tilde.eq UT_3^ast lr((S,r_1,r_2)), $
  where $r_i=Delta^(-1)(alpha_i beta_i op("pr")
    +q_1^(alpha_i)+q_2^(beta_i))$ and $Delta=alpha_1 beta_2-alpha_2 beta_1$.
] <prop:basis-transition-formula>

#proof[
  As before, we denote the group operation in $H=UT_3 lr((S,q_1,q_2))$ by $⊙$.
  By definition, $Ring(H, frak(h))$ is $(Z(H),⊞,⊡)$, where $z_1 ⊞ z_2=z_1 ⊙ z_2$
  and $z_1 ⊡ z_2=[x_1,x_2]$ for arbitrary $x_1 in C_H lr((h_12))$ and
  $x_2 in C_H lr((h_23))$ such that $[x_1,h_23]=z_1$ and $[h_12,x_2]=z_2$.

  By the formula for the computation of commutators, we have $Z(H)=(0,0,S)$. By
  @prop:unimodular-centralizer, we find that
  $
    C_H lr((h_12))={(alpha_1 zeta,beta_1 zeta,gamma):zeta,gamma in S}, \
    C_H lr((h_23))={(alpha_2 zeta,beta_2 zeta,gamma):zeta,gamma in S}.
  $
  Let $z_i=(0,0,zeta_i)$. Then $z_1 ⊞ z_2=(0,0,zeta_1+zeta_2)$. For
  $x_i=(alpha_i zeta,beta_i zeta,gamma_i)$ the condition $[x_1,h_23]=z_1$ means
  that $Delta zeta=zeta_1$, and the condition $[h_12,x_2]=z_2$ means that
  $Delta zeta=zeta_2$. Therefore, $x_i=(Delta^(-1)zeta_i alpha_i,
    Delta^(-1)zeta_i beta_i,gamma_i)$ and
  $
    z_1 ⊡ z_2=(0,0,Delta^(-2)zeta_1 zeta_2
      (alpha_1 beta_2-alpha_2 beta_1))
    \
    =(0,0,Delta^(-1)zeta_1 zeta_2).
  $
  We define $rho_(i,i+1):Z(H) arrow C_H lr((h_(i,i+1)))$ for $i=1,2$ as follows:
  $
    rho_(i,i+1) lr((0,0,zeta))
    =(Delta^(-1)zeta alpha_i,Delta^(-1)zeta beta_i,0).
  $
  It is obvious that $tau_(i,i+1) compose rho_(i,i+1)=op("id")$, where
  $tau_(i,i+1):C_H lr((h_(i,i+1))) arrow Z(H)$ are defined as follows:
  $tau_12 lr((x))=[x,h_23]$ and $tau_23 lr((x))=[h_12,x]$. It is clear that
  $
    rho_(i,i+1) lr((e))=e, quad
    rho_(i,i+1) lr((h_13))=rho_(i,i+1) lr((0,0,Delta))
    \
    =(alpha_i,beta_i,0)=h_(i,i+1).
  $
  For $z_1,z_2 in Z(H)$ we set
  $
    g_i lr((z_1,z_2))=rho_(i,i+1) lr((z_1)) ⊙
    rho_(i,i+1) lr((z_2)) ⊙
    rho_(i,i+1) lr((z_1 ⊙ z_2))^(-1).
  $
  Then $g_i in S^2(Z(H),Z(H))$, and the extension $Z(H) <= C_H lr((h_(i,i+1)))$
  is equivalent to $E(g_i)$. For $zeta,zeta' in S$ we set
  $ g_i lr(((0,0,zeta),(0,0,zeta')))=(0,0,f_i lr((zeta,zeta'))). $
  It is clear that $f_i in S^2(S^+,S^+)$. We have
  $
    (Delta^(-1)zeta alpha_i,Delta^(-1)zeta beta_i,0) ⊙
    (Delta^(-1)zeta' alpha_i,Delta^(-1)zeta' beta_i,0)
    \
    =(0,0,f_i lr((zeta,zeta'))) ⊙
    (Delta^(-1)(zeta+zeta')alpha_i,
      Delta^(-1)(zeta+zeta')beta_i,0),
  $
  i.e.,
  $
    f_i lr((zeta,zeta'))=Delta^(-2)zeta zeta' alpha_i beta_i
    +q_1 lr((Delta^(-1)zeta alpha_i,Delta^(-1)zeta' alpha_i))
    +q_2 lr((Delta^(-1)zeta beta_i,Delta^(-1)zeta' beta_i)).
  $
  As was proved in @thm:quasi-unitriangular-characterization,
  $ (H,frak(h)) tilde.eq UT_3^ast lr((Ring(H, frak(h)),g_1,g_2)). $
  It remains to show that for the 2-cocycles $r_i$ from the formulation of the
  proposition we have
  $
    UT_3^ast lr((S,r_1,r_2)) tilde.eq UT_3^ast lr((Ring(H, frak(h)),g_1,g_2)).
  $
  Consider the bijection $theta:zeta mapsto (0,0,Delta zeta)$ from $S$ onto
  $Ring(H, frak(h))$. It is an isomorphism of these rings:
  $
    theta(zeta+zeta')=(0,0,Delta(zeta+zeta'))
    =theta(zeta) ⊞ theta(zeta'), \
    theta(zeta zeta')=(0,0,Delta zeta zeta')
    =(0,0,Delta zeta) ⊡ (0,0,Delta zeta')
    \
    =theta(zeta) ⊡ theta(zeta').
  $
  Using $theta$, with the cocycle $r_i in S^2(S^+,S^+)$ we associate the
  2-cocycle from $S^2(Z(H),Z(H))$:
  $ (x,y) mapsto theta(r_i lr((theta^(-1)(x),theta^(-1)(y)))). $
  By the formula for $f_i$, this cocycle is $g_i$. Therefore, $theta$ induces
  the required group isomorphism.
]

_Remark._ In the above proposition, the basis is of a special form (the third
components are zeros). However, without loss of generality, we can assume that
this condition is satisfied, since (as will be proved in
@prop:congruent-bases-conjugate) any basis is conjugate by an automorphism to a
basis of the indicated form.

#example[
  If $h_12=(1,1,0)$ and $h_23=(0,1,0)$, then $r_1=op("pr")+q_1+q_2$ and
  $r_2=q_2$. If $h_12=(1,0,0)$ and $h_23=(1,1,0)$, then $r_1=q_1$ and
  $r_2=op("pr")+q_1+q_2$. Thus,
  $
    UT_3 lr((S,q_1,q_2)) tilde.eq
    UT_3 lr((S,op("pr")+q_1+q_2,q_2)) tilde.eq
    UT_3 lr((S,q_1,op("pr")+q_1+q_2)).
  $
  In particular, $UT_3 lr((S)) tilde.eq UT_3 lr((S,op("pr"),0))
  tilde.eq UT_3 lr((S,0,op("pr")))$.
] <ex:multiplication-twist-trivial>

#include "02-isomorphisms.typ"
#include "02-coboundaries.typ"
#include "02-unitriangular.typ"
#include "02-interpretations.typ"

#include "02-models.typ"
