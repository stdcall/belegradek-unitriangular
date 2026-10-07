#import "main-defs.typ": *
#import "statements.typ": *

#include "01-introduction.typ"

= Quasi-unitriangular groups <sec:quasi-unitriangular-groups>

== Unitriangular groups <sec:unitriangular-groups>

Let $R$ be a ring with unit. A square matrix over $R$ is said to be _upper
unitriangular_ if all the elements located under the main diagonal are zero and
every diagonal element is equal to $1$. If $R$ is an associative ring, then the
set of all upper unitriangular $n times n$ matrices over $R$ forms a group with
respect to the matrix multiplication. For $n <= 3$ this assertion is also true
for nonassociative rings. The cases $n = 1$ and $n = 2$ are trivial. For $n = 1$
we have the trivial group, whereas for $n = 2$ we have a group isomorphic to the
additive group $R^+$ of the ring $R$. Throughout the paper, we assume that
$n >= 3$ and $R$ is an associative ring for $n > 3$. Throughout this section, by
a ring we always mean a ring with unit, unless explicitly stated otherwise.
Under these assumptions, let $UT_n lr((R))$ denote the group of upper
unitriangular $n times n$ matrices over $R$. This group is called the
_unitriangular group of degree $n$ over $R$_. The class of all unitriangular
groups of degree $n$ is denoted by $UT_n$, and groups that are isomorphic to
groups of this class are referred to as _$UT_n$-groups_.

For $k = 1, 2, dots, n$ we denote by $UT_n^k lr((R))$ the set of all matrices
$(alpha_(i j))$ in $UT_n lr((R))$ such that $alpha_(i j) = 0$ for $j < i + k$.
As is known, every $UT_n^k lr((R))$ is a normal subgroup and
$
  UT_n lr((R)) = UT_n^1 lr((R)) > UT_n^2 lr((R)) > dots
  > UT_n^n lr((R)) = 1
$
is the lower central series and the upper central series of $UT_n lr((R))$
simultaneously. Therefore, $UT_n lr((R))$ is an $(n - 1)$-step nilpotent group.

For $1 <= i, j <= n$ we denote by $e_(i j)$ the $n times n$ matrix such that the
element with indices $i, j$ is equal to $1$, whereas the remaining elements are
$0$. Denote by $e$ the identity $n times n$ matrix. It is clear that
$e_(i j) e_(l k) = 0$ for $j != l$ and $e_(i j) e_(j k) = e_(i k)$. For $i != j$
and $alpha in R$ the transvection $e + alpha e_(i j)$ is denoted by
$t_(i j) lr((alpha))$. We write $t_(i j)$ instead of $t_(i j) lr((1))$ for
brevity. It is easy to see that
$t_(i j) lr((alpha))^(-1) = t_(i j) lr((-alpha))$ and
$
  [t_(i j) lr((alpha)), t_(l k) lr((beta))] = cases(
    e & "if" j != l\, i != k,
    t_(i k) lr((alpha beta)) & "if" j = l\, i != k.
  )
$
It is clear that $t_(i j) lr((alpha)) in UT_n lr((R))$ for $i < j$. Moreover,
$t_(i j) lr((alpha)) in UT_n^k lr((R))$ if $j - i >= k$.

== Extensions of groups and 2-cocycles <sec:extensions-cocycles>

We need some notions and results of the theory of group extensions
@bib:brown1994. Consider an abelian group $A$ and a group $B$. We regard $A$ as
a $B$-module with the trivial action of $B$ on $A$. We recall that by a
_(normalized) 2-cocycle_ of the group $B$ with coefficients in the $B$-module
$A$ we mean a mapping $g$ from $B times B$ to $A$ such that #math.equation(
  block: true,
  numbering: "(1)",
)[
  $g(z, x y) + g(x, y) = g(z, x) + g(z x, y);$
] <eq:cocycle-associativity>
#math.equation(block: true, numbering: "(1)")[
  $g(x, e) = g(e, x) = 0.$
] <eq:cocycle-normalization>
Here $A$ is an additive group and $B$ is a multiplicative group. The set of all
such $g$ is an additive abelian group, denoted by $cal(Z)^2 (A, B)$.

For a mapping $q: B arrow A$ such that $q(e) = 0$ we set
$ q^* lr((x, y)) = q(x) + q(y) - q(x y). $
It is obvious that $q^* in cal(Z)^2 (A, B)$. Cocycles of the form $q^*$ are
called _2-coboundaries_. The set of all 2-coboundaries is a subgroup of
$cal(Z)^2 (A, B)$, which is denoted by $cal(B)^2 (A, B)$. Two cocycles in
$cal(Z)^2 (A, B)$ are said to be _cohomologous_ if their difference is a
coboundary, i.e., if they lie in the same coset by the subgroup
$cal(B)^2 (A, B)$. The quotient group
$ cal(H)^2 (A, B) = cal(Z)^2 (A, B) \/ cal(B)^2 (A, B) $
is called the _second cohomology group_ of the group $B$ with coefficients in
the $B$-module $A$.

For any 2-cocycle $g$ in $cal(Z)^2 (A, B)$ we can define the group $[A, B, g]$
with the universe $A times B$ and the group operation
$ (a, b) dot (a', b') = (a + a' + g(b, b'), b b'). $
For homomorphisms $mu(a) = (a, e)$ and $nu(a, b) = b$ the sequence
$ 0 arrow A arrow^mu [A, B, g] arrow^nu B arrow 0 $
is exact, i.e., it is an extension of $A$ by $B$. We denote it by $E(A, B, g)$
or, in shorthand, $E(g)$. This extension splits if and only if $g$ is a
coboundary. Moreover, cocycles $g_1$ and $g_2$ are cohomologous if and only if
the extensions $E(g_1)$ and $E(g_2)$ are equivalent. Every extension of $A$ by a
group $B$ acting trivially on $A$ is equivalent to $E(g)$ for some $g$ in
$cal(Z)^2 (A, B)$.

Let $pi: C arrow B$ be an epimorphism of groups, and let $g in cal(Z)^2 (A, B)$.
For $c, c' in C$ we set $g^pi lr((c, c')) = g(pi(c), pi(c'))$. It is obvious
that $g^pi in cal(Z)^2 (A, C)$. Moreover, $g in cal(B)^2 (A, B)$ implies
$g^pi in cal(B)^2 (A, C)$. Thus, starting with an extension $E(A, B, g)$ and an
epimorphism $pi: C arrow B$, we can construct the extension $E(A, C, g^pi)$ in a
natural way.

Consider the special case where $B$ is an abelian group. In this case, the group
operation in $B$ is written additively. We say that a cocycle
$g in cal(Z)^2 (A, B)$ is _symmetric_ if #math.equation(
  block: true,
  numbering: "(1)",
)[
  $g(x, y) = g(y, x).$
] <eq:cocycle-symmetry>
A group $[A, B, g]$ is an abelian group if and only if the cocycle $g$ is
symmetric. It is obvious that any coboundary is a symmetric cocycle. The set of
all symmetric cocycles from $B$ to $A$ is a subgroup of the group
$cal(Z)^2 (A, B)$. We denote this subgroup by $cal(S)^2 (A, B)$. The quotient
group
$ Ext(B, A) = cal(S)^2 (A, B) \/ cal(B)^2 (A, B) $
is called the _group of abelian extensions_ of the group $A$ by the group $B$.

In other terminology (see, for example, @bib:fuchs1970), 2-cocycles are referred
to as _factor sets_ and 2-coboundaries are called _transformation sets_.

A symmetric 2-cocycle $g$ is said to be _pure_ if the extension $E(g)$ is pure
or, in other terminology, $mu(A)$ is a serving subgroup of the group
$[A, B, g]$.

For a 2-cocycle $g in cal(Z)^2 (A, B)$ we introduce the notation
$ theta_g lr((b, b')) = g(b, b') - g(b', b). $
A direct computation shows that $[(a, b), (a', b')] = (theta_g lr((b, b')), 0)$
in the group $[A, B, g]$.

It is easy to see that $theta_g$ is an antisymmetric bilinear function from $B$
to $A$. As is known, any antisymmetric bilinear function
$theta: B times B arrow A$ has the form $theta_g$ for a suitable
$g in cal(Z)^2 (A, B)$ (cf. @bib:brown1994, p.~149, Ex.~5).

It is obvious that for $g, h in cal(Z)^2 (A, B)$ we have $theta_g = theta_h$ if
and only if the 2-cocycle $g - h$ is symmetric. In particular, if $g$ and $h$
are cohomologous, then $theta_g = theta_h$. Therefore, if
$overline(g) in cal(H)^2 (A, B)$ denotes the cohomology class of the cocycle
$g$, then an antisymmetric bilinear function $theta_(overline(g))$ from $B$ to
$A$ can be defined.

For an arbitrary antisymmetric bilinear function $theta$ from $B$ to $A$ we fix
$g in cal(Z)^2 (A, B)$ such that $theta_g = theta$. Consider a mapping from
$Ext(B, A)$ to $cal(H)^2 (A, B)$ that sends $overline(f)$ to $overline(g + f)$.
For any $f in cal(S)^2 (A, B)$ we have $theta_(g + f) = theta$. For
$h in cal(Z)^2 (A, B)$, from $theta_h = theta$ it follows that $h = g + f$ for
some $f in cal(S)^2 (A, B)$. Therefore, this mapping is a bijection from
$Ext(B, A)$ to the set of $overline(h) in cal(H)^2 (A, B)$ such that
$theta_(overline(h)) = theta$.

Thus, there is a natural one-to-one correspondence between abelian extensions of
$A$ by $B$ and those extensions of $A$ by a group $B$ that acts on $A$
trivially, and the commutation is given by the function $theta$. Roughly
speaking, all extensions for a given $theta$ can be obtained by adding to the
fixed 2-cocycle $g$ from $B$ to $A$ all possible symmetric 2-cocycles from $B$
to $A$.

We return to the treatment of an arbitrary group $B$. A direct computation shows
that
$
  [(a, b), (a', b')] =
  (g(b, b') - g(b', b) - g(b' b, [b, b']), [b, b'])
$
in the group $[A, B, g]$. Therefore, the commutation operation in the group
$[A, B, g_1]$ coincides with that in the group $[A, B, g_2]$ if and only if the
cocycle $h = g_1 - g_2$ satisfies the identity
$ h(b, b') - h(b', b) - h(b' b, [b, b']) = 0. $
In the case of an abelian group $B$, this means that $h$ is symmetric.

Let $B_(a b) = B \/ B'$ be the abelianization of a group $B$, and let $a b$ be
the natural homomorphism from $B$ onto $B_(a b)$. Then for any
$f in cal(S)^2 (A, B_(a b))$ the cocycle $f^(a b)$ in $cal(Z)^2 (A, B)$
satisfies the above identity. Therefore, for any $g in cal(Z)^2 (A, B)$ and
$f in cal(S)^2 (A, B_(a b))$ the commutation operations in the groups
$[A, B, g]$ and $[A, B, g + f^(a b)]$ coincide. If $f$ is a coboundary, then
$f^(a b)$ is also a coboundary. Consequently, the extensions $E(g)$ and
$E(g + f^(a b))$ are equivalent. In @sec:twisted-group-operation, we apply this
construction to the extension
$ 1 arrow Z(U) arrow U arrow U \/ Z(U) arrow 1, $
where $U = UT_n lr((R))$.

== A new group operation <sec:twisted-group-operation>

Let $n >= 3$, and let $R$ be a ring with unit. Assume that $R$ is associative
for $n > 3$. Let $g_1, dots, g_(n - 1)$ be symmetric 2-cocycles from $R^+$ to
$R^+$. Starting with $g_1, dots, g_(n - 1)$, we define a new binary operation
$⊙$ on the universe of $UT_n lr((R))$.

Let $dot$ denote the ordinary matrix multiplication in $UT_n lr((R))$. We note
that

- (i) if $(alpha_(i j)) dot (beta_(i j)) = (gamma_(i j))$, then
  $alpha_(i, i + 1) + beta_(i, i + 1) = gamma_(i, i + 1)$;
- (ii) if $(alpha_(i j))^(-1) = (delta_(i j))$, then
  $alpha_(i, i + 1) = -delta_(i, i + 1)$.

For $a = (alpha_(i j))$ and $b = (beta_(i j))$ in $UT_n lr((R))$ we set
$
  a ⊙ b = a dot b +
  (sum_(i = 1)^(n - 1) g_i lr(
      (alpha_(i, i + 1),
        beta_(i, i + 1))
    )) e_(1 n).
$

#proposition[$⊙$ is a group operation.] <prop:twisted-operation-group>

#proof[
  Let us show that the operation $⊙$ is associative. Let $a = (alpha_(i j))$,
  $b = (beta_(i j))$, and $c = (gamma_(i j))$ be matrices in $UT_n lr((R))$. By
  (i) and condition @eq:cocycle-associativity from the definition of a 2-cocycle
  (cf. @sec:extensions-cocycles), we have
  $
    (a ⊙ b) ⊙ c & = (a dot b + (sum_(i = 1)^(n - 1)
                      g_i lr((alpha_(i, i + 1), beta_(i, i + 1)))) e_(1 n))
                  ⊙ c \
                & = (a dot b) dot c + (sum_(i = 1)^(n - 1)
                    (g_i lr((alpha_(i, i + 1), beta_(i, i + 1))) +
                      g_i lr(
                        (alpha_(i, i + 1) + beta_(i, i + 1),
                          gamma_(i, i + 1))
                      ))) e_(1 n) \
                & = a dot (b dot c) + (sum_(i = 1)^(n - 1)
                    (g_i lr(
                        (alpha_(i, i + 1),
                          beta_(i, i + 1) + gamma_(i, i + 1))
                      ) +
                      g_i lr((beta_(i, i + 1), gamma_(i, i + 1))))) e_(1 n) \
                & = a ⊙ (b dot c + (sum_(i = 1)^(n - 1)
                      g_i lr((beta_(i, i + 1), gamma_(i, i + 1)))) e_(1 n)) \
                & = a ⊙ (b ⊙ c).
  $
  We show that the identity matrix $e$ is a neutral element with respect to the
  operation $⊙$. Let $a = (alpha_(i j))$ be a matrix in $UT_n lr((R))$. Taking
  into account condition @eq:cocycle-normalization from the definition of a
  2-cocycle (cf. @sec:extensions-cocycles), we find that
  $
    a ⊙ e = a dot e + (sum_(i = 1)^(n - 1)
      g_i lr((alpha_(i, i + 1), 0))) e_(1 n) = a, \
    e ⊙ a = e dot a + (sum_(i = 1)^(n - 1)
      g_i lr((0, alpha_(i, i + 1)))) e_(1 n) = a.
  $
  Now let us show that any matrix in $UT_n lr((R))$ is invertible with respect
  to the operation $⊙$. Let $a = (alpha_(i j))$, and let $a^(-1)$ be the inverse
  element to $a$ in $UT_n lr((R))$. If $a^(-1) = (beta_(i j))$, then
  $beta_(i, i + 1) = -alpha_(i, i + 1)$ by (i). We set
  $
    gamma = sum_(i = 1)^(n - 1)
    g_i lr((alpha_(i, i + 1), beta_(i, i + 1))), quad
    delta = sum_(i = 1)^(n - 1)
    g_i lr((beta_(i, i + 1), alpha_(i, i + 1))).
  $
  Then $gamma = delta$, since the cocycles $g_i$ are symmetric. We claim that
  the matrix
  $ a^((-1)) = a^(-1) - gamma e_(1 n) = a^(-1) - delta e_(1 n) $
  is the inverse to $a$ with respect to the operation $⊙$. Indeed, taking into
  account the equalities $a dot gamma e_(1 n) = gamma e_(1 n)$ and
  $delta e_(1 n) dot a = delta e_(1 n)$, we have
  $
    a ⊙ a^((-1)) = a dot (a^(-1) - gamma e_(1 n))
    + gamma e_(1 n) = e, \
    a^((-1)) ⊙ a = (a^(-1) - delta e_(1 n)) dot a
    + delta e_(1 n) = e.
  $
  The proposition is proved.
]

The above group will be denoted by $UT_n lr((R, g_1, dots, g_(n - 1)))$. For a
fixed $R$ such groups are referred to as _quasi-$UT_n lr((R))$-groups_, and all
possible such groups are called _quasi-$UT_n$-groups_ or _quasi-unitriangular
groups of degree $n$_. It is obvious that $UT_n lr((R))$ is a special case of
the above construction for zero cocycles $g_1, dots, g_(n - 1)$, i.e.,
$UT_n lr((R)) = UT_n lr((R, 0, dots, 0))$.

#proposition[
  For $a, b in UT_n lr((R))$ we have
  $ a^((-1)) ⊙ b ⊙ a = a^(-1) dot b dot a. $
] <prop:twisted-conjugation>

#proof[
  Let $a = (alpha_(i j))$ and $b = (beta_(i j))$. We set
  $
    gamma = sum_(i = 1)^(n - 1)
    g_i lr((alpha_(i, i + 1), -alpha_(i, i + 1))), \
    delta = sum_(i = 1)^(n - 1)
    g_i lr((beta_(i, i + 1), alpha_(i, i + 1))), \
    zeta = sum_(i = 1)^(n - 1)
    g_i lr(
      (-alpha_(i, i + 1),
        beta_(i, i + 1) + alpha_(i, i + 1))
    ).
  $
  Then $zeta + delta = gamma$. Indeed, using properties @eq:cocycle-symmetry,
  @eq:cocycle-associativity, @eq:cocycle-normalization, and @eq:cocycle-symmetry
  from the definition of a symmetric cocycle (cf. @sec:extensions-cocycles), we
  find that
  $
    & g_i lr(
        (-alpha_(i, i + 1),
          beta_(i, i + 1) + alpha_(i, i + 1))
      )
      + g_i lr((beta_(i, i + 1), alpha_(i, i + 1))) \
    & = g_i lr(
        (-alpha_(i, i + 1),
          alpha_(i, i + 1) + beta_(i, i + 1))
      )
      + g_i lr((alpha_(i, i + 1), beta_(i, i + 1))) \
    & = g_i lr((-alpha_(i, i + 1), alpha_(i, i + 1)))
      + g_i lr(
        (-alpha_(i, i + 1) + alpha_(i, i + 1),
          beta_(i, i + 1))
      ) \
    & = g_i lr((-alpha_(i, i + 1), alpha_(i, i + 1)))
      = g_i lr((alpha_(i, i + 1), -alpha_(i, i + 1))).
  $
  Then
  $
    a^((-1)) ⊙ b ⊙ a & = (a^(-1) - gamma e_(1 n)) ⊙ (b dot a + delta e_(1 n)) \
                     & = (a^(-1) - gamma e_(1 n)) dot (b dot a + delta e_(1 n))
                       + zeta e_(1 n) \
                     & = a^(-1) dot b dot a - gamma e_(1 n) + delta e_(1 n)
                       + zeta e_(1 n) = a^(-1) dot b dot a.
  $
  The proposition is proved.
]

#proposition[
  For $a, b in UT_n lr((R))$ we have
  $
    b^((-1)) ⊙ a^((-1)) ⊙ b ⊙ a
    = b^(-1) dot a^(-1) dot b dot a.
  $
] <prop:twisted-commutators>

#proof[
  Let $a = (alpha_(i j))$ and $b = (beta_(i j))$. By (i) and (ii), the element
  with indices $i$ and $i + 1$ is $beta_(i, i + 1)$ in $a^(-1) dot b dot a$ and
  is $-beta_(i, i + 1)$ in $b^(-1)$ and $b^((-1))$. We set
  $
    epsilon = sum_(i = 1)^(n - 1)
    g_i lr((-beta_(i, i + 1), beta_(i, i + 1))).
  $
  We have
  $
    b^((-1)) ⊙ a^((-1)) ⊙ b ⊙ a
    &= b^((-1)) ⊙ (a^(-1) dot b dot a) \
    &= (b^(-1) - epsilon e_(1 n)) dot (a^(-1) dot b dot a)
    + epsilon e_(1 n) \
    &= b^(-1) dot a^(-1) dot b dot a - epsilon e_(1 n)
    + epsilon e_(1 n) = b^(-1) dot a^(-1) dot b dot a.
  $
  The proposition is proved.
]

Thus, the commutation operation in $UT_n lr((R))$ coincides with the commutation
operation in $UT_n lr((R, g_1, dots, g_(n - 1)))$. The same holds for the
conjugation operation. Since $UT_n lr((R))$ is an $(n - 1)$-step nilpotent
group, the following assertion holds.

#corollary[
  $UT_n lr((R, g_1, dots, g_(n - 1)))$ is an $(n - 1)$-step nilpotent group.
] <cor:twisted-nilpotency-class>

#corollary[
  The centralizer of an arbitrary set in $UT_n lr((R))$ coincides with the
  centralizer of the same set in $UT_n lr((R, g_1, dots, g_(n - 1)))$.
] <cor:twisted-centralizers>

#proposition[
  The lower central series of $UT_n lr((R))$ and the lower central series of
  $UT_n lr((R, g_1, dots, g_(n - 1)))$ coincide.
] <prop:twisted-lower-central-series>

#proof[
  It suffices to prove that for each pair of sets $K, L subset UT_n lr((R))$ the
  mutual commutator subgroup computed in $UT_n lr((R))$ coincides with the
  mutual commutator subgroup computed in $UT_n lr((R, g_1, dots, g_(n - 1)))$.
  Elements of the mutual commutator subgroup of $K$ and $L$ are products of
  commutators $[x, y]$, where $x in K$, $y in L$ or $x in L$, $y in K$. By
  @prop:twisted-commutators, the commutators are computed in both groups in the
  same way. In any commutator of such a form, elements with the indices $i$,
  $i + 1$ are zero. Taking into account condition @eq:cocycle-normalization of
  the definition of a 2-cocycle (cf. @sec:extensions-cocycles), we see that the
  products of the commutators in these two groups are also computed in the same
  way.
]

We show that the notion of a quasi-unitriangular group is a special case of the
construction described in @sec:extensions-cocycles. Let $U = UT_n lr((R))$. The
group $Z(U)$ consists of all matrices $t_(1 n) lr((alpha))$, $alpha in R$, and
the mapping $lambda: alpha arrow.bar t_(1 n) lr((alpha))$ is an isomorphism
between $R^+$ and $Z(U)$.

First we consider the most illustrative case $n = 3$. The matrix
$ mat(delim: "[", 1, alpha, gamma; 0, 1, beta; 0, 0, 1) $
is denoted by $(alpha, beta, gamma)$ for brevity. The mapping
$rho: (alpha, beta, gamma) arrow.bar (alpha, beta)$ is a homomorphism from the
group $U$ onto the group $R^+ times R^+$, and the kernel of this homomorphism
consists of all matrices of the form $(0, 0, gamma)$, i.e., coincides with
$Z(U)$. Consider the extension
$ 0 arrow R^+ arrow^lambda U arrow^rho R^+ times R^+ arrow 0. $
Since
$
  (alpha, beta, gamma) dot (alpha', beta', gamma')
  = (alpha + alpha', beta + beta', gamma + gamma' + alpha beta'),
$
it is obvious that this extension is equivalent to the extension $E(f)$, where
$
  f in cal(Z)^2 (R^+, R^+ times R^+), quad
  f((alpha, beta)(alpha', beta')) = alpha beta'.
$
In particular, the group $[R^+, R^+ times R^+, f]$ is isomorphic to $U$. In
$[R^+, R^+ times R^+, f]$, the commutation is given by the following
antisymmetric bilinear function:
$
  theta: (R^+ times R^+) times (R^+ times R^+) arrow R^+, quad
  theta((alpha, beta)(alpha', beta')) = alpha beta' - alpha' beta.
$
As was mentioned in @sec:extensions-cocycles, for any $g$ in
$cal(S)^2 (R^+, R^+ times R^+)$ the commutation operation in the group
$[R^+, R^+ times R^+, f + g]$ coincides with the commutation operation in the
group $[R^+, R^+ times R^+, f]$. Varying $g$, we can obtain all extensions of
$R^+$ by the group $R^+ times R^+$ acting on $R^+$ trivially, where the
commutation operation is the same.

As is known (cf. @bib:fuchs1970, Theorem~52.2), for any abelian groups
$D, C_1, dots, C_m$ any 2-cocycle $g$ from
$cal(S)^2 (D, C_1 times dots times C_m)$ is cohomologous to the 2-cocycle
$overline(g) = g_1 ⊕ dots ⊕ g_m$ for some $g_i$ in $cal(S)^2 (D, C_i)$, where
$
  overline(g) lr(((c_1, dots, c_m), (c_1', dots, c_m')))
  = g_1 (c_1, c_1') + dots + g_m (c_m, c_m').
$
Therefore, the extensions of $R^+$ by the group $R^+ times R^+$ acting on $R^+$
trivially, where the commutation operation is given by the function $theta$, are
all possible $E(f + g_1 ⊕ g_2)$, where $g_1, g_2 in cal(S)^2 (R^+, R^+)$. But
$E(f + g_1 ⊕ g_2)$ is obviously equivalent to the extension
$
  0 arrow R^+ arrow^lambda UT_3 lr((R, g_1, g_2))
  arrow^rho R^+ times R^+ arrow 0.
$
Thus, extensions of this form (up to an equivalence) extend $R^+$ by the group
$R^+ times R^+$ acting on $R^+$ trivially, and have the same commutation
operation as $UT_3 lr((R))$.

Let $n >= 3$ be arbitrary. Consider a mapping $pi$ from $U \/ Z(U)$ to
$(R^+)^(n - 1)$ that sends the coset of a matrix $(alpha_(i j))$ to the tuple
$(alpha_(1 2), dots, alpha_(n - 1, n))$. It is obvious that $pi$ is an
epimorphism of groups; moreover, $Ker(pi) = U' \/ Z(U) = (U \/ Z(U))'$.
Therefore, $pi$ is equivalent to the abelianization epimorphism.

For a system of representatives of cosets of the group $U$ by the subgroup
$Z(U)$ we take the set of all matrices with zeros at the upper right corner.
With respect to this system, the extension
$ E: 1 arrow Z(U) arrow U arrow U \/ Z(U) arrow 1 $
is given by a 2-cocycle $h in cal(Z)^2 (Z(U), U \/ Z(U))$ such that
$
  h(a Z(U), b Z(U)) = t_(1 n) lr(
    (alpha_(1 2) beta_(2 n)
      + dots + alpha_(1, n - 1) beta_(n - 1, n))
  )
$
for $a = (alpha_(i j))$ and $b = (beta_(i j))$. Consider
$f: (U \/ Z(U)) times (U \/ Z(U)) arrow R^+$ such that
$
  f(a Z(U), b Z(U))
  = alpha_(1 2) beta_(2 n) + dots + alpha_(1, n - 1) beta_(n - 1, n).
$
It is easy to see that $f in cal(Z)^2 (R^+, U \/ Z(U))$ and
$h = lambda compose f$. Thus, the extension $E$ is equivalent to the extension
$ 0 arrow R^+ arrow [R^+, U \/ Z(U), f] arrow U \/ Z(U) arrow 1. $
#ed-note[
  The factor set of the central extension does not, in general, descend to the
  first-superdiagonal quotient. For $n=4$ over $ZZ$, $a=t_13 lr((1))$,
  $b=t_34 lr((1))$ give $pi(a Z(U))=0$ but $h(a Z(U),b Z(U))=t_14 lr((1))$. For
  the factor-set construction see Weibel @bib:Weibel1994, §6.6, Theorem 6.6.7
  and Exercise 6.6.4.
]
Let $g_1, dots, g_(n - 1) in cal(S)^2 (R^+, R^+)$, and define
$U_g = UT_n lr((R, g_1, dots, g_(n - 1)))$. We have $Z(U_g) = Z(U)$ and
$U_g \/ Z(U_g) = U \/ Z(U)$. Furthermore, the extension
$ E_g: 1 arrow Z(U) arrow U_g arrow U \/ Z(U) arrow 1 $
is equivalent to the extension
$
  0 arrow R^+ arrow [R^+, U \/ Z(U), f + overline(g)^pi]
  arrow U \/ Z(U) arrow 1,
$
where $overline(g) = g_1 ⊕ dots ⊕ g_(n - 1)$.

Since the epimorphism $pi$ is equivalent to the abelianization epimorphism and
the cocycle $overline(g)$ is symmetric, we conclude that $overline(g)^pi$
satisfies the identity in @sec:extensions-cocycles, and, consequently, the
commutation operation in the group $[R^+, U \/ Z(U), f + overline(g)^pi]$
coincides with the commutation operation in $[R^+, U \/ Z(U), f]$. This gives
one more proof of @prop:twisted-commutators.

== Defining relations for quasi-unitriangular groups <sec:quasi-unitriangular-relations>

Denote by $U$ the group $UT_n lr((R, g_1, dots, g_(n - 1)))$ and by $U_k$ the
$k$th term of the lower central series of $U$, i.e.,
$ U_k = {(alpha_(i j)) in U: alpha_(i j) = 0 "for" j - i < k}. $

#proposition[
  For $1 <= k < n$, an element $a in U_k$ is uniquely represented as
  $a_(n - k) ⊙ dots ⊙ a_1 ⊙ b$, where $b in U_(k + 1)$, and $a_i$ has the form
  $t_(i, i + k) lr((alpha))$ for some $alpha in R$.
] <prop:lower-central-coordinates>

#proof[
  It is easy to see that, for any $(alpha_(i j)), (beta_(i j)) in U_k$, from
  $(gamma_(i j)) = (alpha_(i j)) ⊙ (beta_(i j))$ it follows that
  $gamma_(i, i + k) = alpha_(i, i + k) + beta_(i, i + k)$ for $1 <= i <= n - k$.
  Therefore, for $a = (alpha_(i j)) in U_k$ we have
  $
    b = t_(1, k + 1) lr((-alpha_(1, k + 1))) ⊙ dots
    ⊙ t_(n - k, n) lr((-alpha_(n - k, n))) ⊙ a
    in U_(k + 1).
  $
  If $k > 1$, then $t_(i, i + k) lr((-alpha_(i, i + k))) =
  t_(i, i + k) lr((alpha_(i, i + k)))^((-1))$. Hence, in this case,
  $
    a = t_(n - k, n) lr((alpha_(n - k, n))) ⊙ dots
    ⊙ t_(1, k + 1) lr((alpha_(1, k + 1))) ⊙ b.
  $
  Consider the case $k = 1$. We have
  $
    t_(i, i + 1) lr((-alpha_(i, i + 1)))^((-1))
    = t_(i, i + 1) lr((alpha_(i, i + 1))) - epsilon_i e_(1 n),
  $
  where $epsilon_i = g_i lr((-alpha_(i, i + 1), alpha_(i, i + 1)))$. Hence
  $
    a & = (t_(n - 1, n) lr((alpha_(n - 1, n)))
          - epsilon_(n - 1) e_(1 n)) ⊙ dots
        ⊙ (t_(1 2) lr((alpha_(1 2))) - epsilon_1 e_(1 n))
        ⊙ b \
      & = t_(n - 1, n) lr((alpha_(n - 1, n))) ⊙ dots
        ⊙ t_(1 2) lr((alpha_(1 2)))
        ⊙ (b - (epsilon_(n - 1) + dots + epsilon_1) e_(1 n)).
  $
  Since $b - (epsilon_(n - 1) + dots + epsilon_1) e_(1 n) in U_(k + 1)$, in this
  case we also obtain the required representation.

  We show the uniqueness of the required representation. If
  $
    a = t_(n - k, n) lr((alpha_(n - k))) ⊙ dots
    ⊙ t_(1, k + 1) lr((alpha_1)) ⊙ b,
  $
  then, by the remark at the beginning of the proof, the elements with indices
  $(1, k + 1), dots, (n - k, n)$ of the matrix $a$ are
  $alpha_1, dots, alpha_(n - k)$ respectively. Therefore, the matrix $a$
  uniquely determines $alpha_1, dots, alpha_(n - k)$. Hence the matrix $b$ is
  also uniquely determined:
  $
    b = t_(1, k + 1) lr((alpha_1))^((-1)) ⊙ dots
    ⊙ t_(n - k, n) lr((alpha_(n - k)))^((-1)) ⊙ a.
  $
  The proposition is proved.
]

#corollary[
  Any element of $U$ is uniquely represented as the product of elements
  $t_(i j) lr((alpha_(i j)))$, $1 <= i < j <= n$, where
  $t_(i j) lr((alpha_(i j)))$ is located to the left of
  $t_(l k) lr((alpha_(l k)))$ if and only if $j - i < k - l$ or $j - i = k - l$
  and $i > l$. In particular, the set
  $ {t_(i j) lr((alpha)): 1 <= i < j <= n, alpha in R} $
  generates the group $U$.
] <cor:ordered-transvection-coordinates>

#emph[Remark.] Generally speaking, for $n > 3$ the element $alpha_(i j)$ does
not necessarily coincide with the element with indices $i, j$ of the matrix
under decomposition. For example, for $n = 4$ the product
$
  t_(3 4) lr((alpha_(3 4))) ⊙ t_(2 3) lr((alpha_(2 3)))
  ⊙ t_(1 2) lr((alpha_(1 2))) ⊙ t_(2 4) lr((alpha_(2 4)))
  ⊙ t_(1 3) lr((alpha_(1 3))) ⊙ t_(1 4) lr((alpha_(1 4)))
$
is equal to
$
  mat(
    delim: "[",
    1, alpha_(1 2), alpha_(1 3), alpha_(1 4) + alpha_(1 2) alpha_(2 4);
    0, 1, alpha_(2 3), alpha_(2 4); 0, 0, 1, alpha_(3 4); 0, 0, 0, 1
  ).
$
Nevertheless, for $n = 3$ we have
$
  t_(2 3) lr((alpha_(2 3))) ⊙ t_(1 2) lr((alpha_(1 2)))
  ⊙ t_(1 3) lr((alpha_(1 3)))
  = mat(
    delim: "[", 1, alpha_(1 2), alpha_(1 3);
    0, 1, alpha_(2 3); 0, 0, 1
  ).
$

#theorem[
  The group $U$ is defined by the generators
  $ {t_(i j) lr((alpha)): 1 <= i < j <= n, alpha in R} $
  and the following defining relations $cal(R)$:

  - (i) $[t_(i j) lr((alpha)), t_(j k) lr((beta))]
    = t_(i k) lr((alpha beta))$,
  - (ii) $[t_(i j) lr((alpha)), t_(l k) lr((beta))] = e$,
  - (iii) $t_(i j) lr((alpha)) ⊙ t_(i j) lr((beta))
    = t_(i j) lr((alpha + beta))$,
  - (iv) $t_(i, i + 1) lr((alpha)) ⊙ t_(i, i + 1) lr((beta))
    = t_(i, i + 1) lr((alpha + beta))
    ⊙ t_(1 n) lr((g_i lr((alpha, beta))))$,

  where $i != k$, $j != l$ in (ii) and $j > i + 1$ in (iii).
] <thm:quasi-unitriangular-presentation>

#proof[
  First, the elements $t_(i j) lr((alpha))$ satisfy (i)–(iv). For (iii) and
  (iv), this fact is obvious by the definition of the operation $⊙$ in $U$. The
  validity of (i) and (ii) follows from @prop:twisted-commutators and the
  well-known fact that these relations hold in $UT_n lr((R))$.

  Consider an arbitrary group word in the above generators. In a free group,
  such a word is equal modulo $cal(R)$ to the product of elements of the form
  $t_(i j) lr((alpha_(i j)))$, $1 <= i < j <= n$, where
  $t_(i j) lr((alpha_(i j)))$ is located to the left of
  $t_(l k) lr((alpha_(l k)))$ if and only if $j - i < k - l$ or $j - i = k - l$
  and $i > l$. Since $cal(R)$ holds in $U$, we see that if the word under
  consideration is equal to the identity of $U$, then the product is also equal
  to the identity of $U$. By the uniqueness of the decomposition of an element
  of $U$ in the product of the above form in accordance with
  @cor:ordered-transvection-coordinates, every $alpha_(i j)$ is equal to $0$,
  i.e., the word belongs to the normal closure of the relations $cal(R)$ in the
  free group. The proposition is proved.
]

== One-parameter subgroups <sec:one-parameter-subgroups>

Denote $UT_n lr((R, g_1, dots, g_(n - 1)))$ by $U$. We set
$ U_(i j) = {t_(i j) lr((alpha)): alpha in R} $
for $i + 1 < j$ and
$
  U_(i, i + 1) = {t_(i, i + 1) lr((alpha)) + beta e_(1 n):
    alpha, beta in R}
$
for $i < n$. It is obvious that every $U_(i j)$ is a subgroup of $U$. The
families
$
  bold(t) = {t_(i j): 1 <= i < j <= n}, quad
  frak(U) = {U_(i j): 1 <= i < j <= n}
$
possess the following properties.

- (0) $U_(1 n) <= U_(i, i + 1)$.
- (1) $[U_(i j), U_(l k)] = 1$ for $i != k$, $j != l$, and
  $[U_(i j), U_(j k)] = U_(i k)$.
- (2) $[U_(i j), t_(j k)] = U_(i k)$ and $[t_(k i), U_(i j)] = U_(k j)$.
- (3) The centralizers of $t_(j k)$ and $t_(k i)$ of $U_(i j)$ are equal to
  $U_(1 n)$ if $j - i = 1$ and are trivial if $j - i > 1$.

Properties (1)–(3) follow from (i) and (ii) in
@thm:quasi-unitriangular-presentation.

- (4) $[[x, y], z] = [x, [y, z]]$ for $x in U_(i j)$, $y in U_(j k)$,
  $z in U_(k l)$.

We note that property (4) is meaningful only for $n > 3$.

To formulate property (5), we need the following notation:
$
  tau_(i j) lr((x)) = cases(
    [[t_(1 i), x], t_(j n)] & "if" 1 < i < j < n,
    [t_(1 i), x] & "if" 1 < i < j = n,
    [x, t_(j n)] & "if" 1 = i < j < n,
    x & "if" 1 = i < j = n,
  )
$
for $x in U_(i j)$. It is obvious that $tau_(i j)$ is an epimorphism from
$U_(i j)$ onto $U_(1 n)$. The kernel of this epimorphism is $U_(1 n)$ for
$j = i + 1$ and is trivial for $j > i + 1$.

- (5) For $x in U_(i j)$, $y in U_(j k)$, $z in U_(m p)$, and
  $v in U_(p q)$
  $
    tau_(i j) lr((x)) = tau_(m p) lr((z)) & and
    tau_(j k) lr((y)) = tau_(p q) lr((v))
    ==> tau_(i k) lr(([x, y])) = tau_(m q) lr(([z, v])).
  $

This property follows from (i) in @thm:quasi-unitriangular-presentation.

- (6) Any element of $U$ can be represented as the product of
  $u_(i j) in U_(i j)$, $1 <= i < j <= n$, where $u_(i j)$ is located to the
  left of $u_(l k)$ if and only if $j - i < k - l$ or $j - i = k - l$ and
  $i > l$. In this representation, the $u_(i j)$ are uniquely determined for
  $i + 1 < j$, $(i, j) != (1, n)$, and are uniquely determined modulo $U_(1 n)$
  in the remaining cases.

The existence of this representation is established in
@cor:ordered-transvection-coordinates. Let us prove the uniqueness. Assume that
$u in U$ can be represented as the product of $u_(i j)$ and as the product of
$u_(i j)'$ (in the indicated order). Let
$
  u_(i, i + 1) = t_(i, i + 1) lr((alpha_i)) + beta_i e_(1 n), quad
  u_(i, i + 1)' = t_(i, i + 1) lr((alpha_i')) + beta_i' e_(1 n).
$
We set
$
  v_(i j) = cases(
    t_(i, i + 1) lr((alpha_i)) & "if" i + 1 = j,
    u_(i j) & "if" i + 1 < j\, (i, j) != (1, n),
    u_(1 n) + (beta_1 + dots + beta_(n - 1)) e_(1 n) & "if" i = 1\, j = n,
  ), \
  v_(i j)' = cases(
    t_(i, i + 1) lr((alpha_i')) & "if" i + 1 = j,
    u_(i j)' & "if" i + 1 < j\, (i, j) != (1, n),
    u_(1 n)' + (beta_1' + dots + beta_(n - 1)') e_(1 n) & "if" i = 1\, j = n.
  )
$
Then the product of the $u_(i j)$ is equal to the product of the $v_(i j)$,
whereas the product of the $u_(i j)'$ is equal to the product of the $v_(i j)'$
(in the indicated order). By @cor:ordered-transvection-coordinates (in the part
concerning the uniqueness), $v_(i j) = v_(i j)'$ for all $i, j$. We obtain the
required assertion about the uniqueness of the representation in the form of a
product.

- (7) The extension $U_(1 n) <= U_(i, i + 1)$ is equivalent to the extension
  $E(g_i)$. In particular, $U_(1 n)$ is a direct summand of $U_(i, i + 1)$ if
  and only if the cocycle $g_i$ is a coboundary.

== Characterization of quasi-unitriangular groups <sec:quasi-unitriangular-characterization>

It turns out that properties (0)–(6) yield an abstract characterization of
quasi-$UT_n$-groups.

#theorem[
  Let $H$ be a group, let $n >= 3$, and let
  $frak(h) = {h_(i j): 1 <= i < j <= n}$ be a family of elements of $H$. The
  following conditions are equivalent.

  - (a) There exist a ring $R$ with unit that is associative for $n > 3$ and
    $g_1, dots, g_(n - 1) in cal(S)^2 (R^+, R^+)$ such that
    $
      (H, frak(h)) tilde.eq
      (UT_n lr((R, g_1, dots, g_(n - 1))), bold(t)),
    $
    where $bold(t) = {t_(i j): 1 <= i < j <= n}$.
  - (b) $[h_(i j), h_(j k)] = h_(i k)$ for $1 <= i < j < k <= n$, and there
    exists a family
    $ frak(H) = {H_(i j): 1 <= i < j <= n} $
    of subgroups of $H$ with $h_(i j) in H_(i j)$ satisfying (0)–(6) in
    @sec:one-parameter-subgroups with $U$, $U_(i j)$, and $t_(i j)$ replaced by
    $H$, $H_(i j)$, and $h_(i j)$ respectively.

  Furthermore, if (a) holds, then the family $frak(H)$ can be chosen in such a
  way that for all $i$ the extension $H_(1 n) <= H_(i, i + 1)$ is equivalent to
  the extension $E(g_i)$. If (b) holds, then $g_1, dots, g_(n - 1)$ can be
  chosen in such a way that for all $i$ the extension $H_(1 n) <= H_(i, i + 1)$
  is equivalent to the extension $E(g_i)$, and for $j$ such that the extension
  $H_(1 n) <= H_(j, j + 1)$ splits, for $g_j$ we can take the zero cocycle.
] <thm:quasi-unitriangular-characterization>

A special case of @thm:quasi-unitriangular-characterization is the
characterization of $UT_n$-groups for an arbitrary $n >= 3$. It generalizes the
Mal’tsev characterization of $UT_3$-groups @bib:maltsev1960.

#corollary[
  Let $H$ be a group, let $n >= 3$, and let
  $frak(h) = {h_(i j): 1 <= i < j <= n}$ be a family of elements of $H$. The
  following conditions are equivalent:

  - (a) There exists a ring $R$ with unit that is associative for $n > 3$ and
    $ (H, frak(h)) tilde.eq (UT_n lr((R)), bold(t)), $
    where $bold(t) = {t_(i j): 1 <= i < j <= n}$.
  - (b) $[h_(i j), h_(j k)] = h_(i k)$ for $1 <= i < j < k <= n$, and there
    exists a family of subgroups of $H$ with $h_(i j) in H_(i j)$,
    $ frak(H) = {H_(i j): 1 <= i < j <= n}, $
    satisfying conditions (0)–(6) in @sec:one-parameter-subgroups with $U$,
    $U_(i j)$, and $t_(i j)$ replaced by $H$, $H_(i j)$, and $h_(i j)$
    respectively; moreover, $H_(1 n)$ is a direct summand of each
    $H_(i, i + 1)$.
] <cor:unitriangular-characterization>

#proof(head: [Proof of Theorem~@thm:quasi-unitriangular-characterization.])[
  Since the implication (a)$==>$(b) is already proved in
  @sec:one-parameter-subgroups, we need only to prove the implication
  (b)$==>$(a). In view of the first part of (1), all the subgroups $H_(i j)$ are
  abelian groups. By (2), $tau_(i j)$ maps $H_(i j)$ onto $H_(1 n)$; moreover,
  $tau_(i j) lr((h_(i j))) = h_(1 n)$ by the condition on the family $frak(h)$.
  We define
  $ (Ring(H, frak(H), frak(h)), ⊞, ⊡) $
  as follows. Its additive group is $H_(1 n)$. Thus,
  $ u ⊞ v = u v $
  for $u, v in H_(1 n)$. For $x in H_(i j)$ and $y in H_(j k)$ we set
  $
    tau_(i j) lr((x)) ⊡ tau_(j k) lr((y))
    = tau_(i k) lr(([x, y])).
  $
  By (5), this operation is well defined on $H_(1 n)$. In view of the first part
  of (1), the mappings $tau_(i j)$ are homomorphisms, and the operation $⊡$ is
  distributive with respect to the operation $⊞$. Thus, $H_(1 n)$ forms a ring
  with respect to $⊡$ and $⊞$.

  The element $h_(1 n)$ is the unit of this ring. Indeed, for an arbitrary
  element $u in H_(1 n)$ we choose $1 < i, j < n$, $x in H_(1 i)$, and
  $y in H_(j n)$ such that $u = tau_(1 i) lr((x)) = tau_(j n) lr((y))$. Then
  $
    u ⊡ h_(1 n) & = tau_(1 i) lr((x)) ⊡ tau_(i n) lr((h_(i n)))
                  = tau_(1 n) lr(([x, h_(i n)])) = [x, h_(i n)] = u, \
    h_(1 n) ⊡ u & = tau_(1 j) lr((h_(1 j))) ⊡ tau_(j n) lr((y))
                  = tau_(1 n) lr(([h_(1 j), y])) = [h_(1 j), y] = u.
  $
  We show that the operation $⊡$ is associative if $n > 3$. Let
  $u, v, w in H_(1 n)$. We choose $1 < i < j < n$, $x in H_(1 i)$,
  $y in H_(i j)$, and $z in H_(j n)$ such that $u = tau_(1 i) lr((x))$,
  $v = tau_(i j) lr((y))$, and $w = tau_(j n) lr((z))$. Taking (4) into account,
  we have
  $
    (u ⊡ v) ⊡ w & = tau_(1 j) lr(([x, y])) ⊡ tau_(j n) lr((z))
                  = tau_(1 n) lr(([[x, y], z])) \
                & = tau_(1 n) lr(([x, [y, z]]))
                  = tau_(1 i) lr((x)) ⊡ tau_(i n) lr(([y, z]))
                  = u ⊡ (v ⊡ w).
  $

  #emph[Remark.] By (i) and (iii) in @thm:quasi-unitriangular-presentation, the
  mapping $alpha arrow.bar t_(1 n) lr((alpha))$ is an isomorphism between the
  rings $R$ and $Ring(UT_n lr((R, g_1, dots, g_(n - 1))), frak(U), bold(t))$.
  Therefore, $Ring(H, frak(H), frak(h))$ may be nonassociative for $n = 3$. In
  fact, $Ring(UT_3 lr((R, g_1, g_2)), frak(U), bold(t))$ is associative if and
  only if $R$ is associative.

  Now we show that for $R = Ring(H, frak(H), frak(h))$ and some
  $g_1, dots, g_(n - 1)$ in $cal(S)^2 (R^+, R^+)$ we have
  $
    (H, frak(H), frak(h)) tilde.eq
    (UT_n lr((R, g_1, dots, g_(n - 1))), frak(U), bold(t)).
  $
  By (3), the group homomorphism $tau_(i j)$ is an isomorphism for $j > i + 1$
  and has the kernel $H_(1 n)$ if $j = i + 1$. For $j > i + 1$ we set
  $rho_(i j) = tau_(i j)^(-1)$. For any $alpha in H_(1 n)$ we choose an element
  $rho_(i, i + 1) lr((alpha))$ of the set $tau_(i, i + 1)^(-1) lr((alpha))$.
  Since $tau_(i, i + 1) lr((e)) = e$ and
  $tau_(i, i + 1) lr((h_(i, i + 1))) = h_(1 n)$, we can (and will) assume that
  $rho_(i, i + 1) lr((e)) = e$ and
  $rho_(i, i + 1) lr((h_(1 n))) = h_(i, i + 1)$.

  The set
  $ {rho_(i j) lr((alpha)): alpha in H_(1 n), 1 <= i < j <= n} $
  generates the group $H$. Indeed, in view of (6), any element $h in H$ is the
  product of some elements $x_(i j) in H_(i j)$. Let
  $alpha_(i j) = tau_(i j) lr((x_(i j)))$. Then $alpha_(i j) in H_(1 n)$. Since
  $tau_(i j) lr((rho_(i j) lr((alpha_(i j))))) = alpha_(i j)$, we have
  $x_(i j) equiv rho_(i j) lr((alpha_(i j))) mod Ker(tau_(i j))$, i.e.,
  $x_(i j) equiv rho_(i j) lr((alpha_(i j))) mod H_(1 n)$. Therefore, $h$ is the
  product of $rho_(i j) lr((alpha_(i j)))$ and some elements of $H_(1 n)$. But
  $rho_(1 n) lr((alpha)) = alpha$ for any $alpha in H_(1 n)$. Hence $h$ is the
  product of elements of the form $rho_(i j) lr((alpha))$. Consider the
  2-cocycle $g_i in cal(Z)^2 (H_(1 n), H_(1 n))$ appearing from the extensions
  $
    E_i: 1 arrow H_(1 n) arrow^"id" H_(i, i + 1)
    arrow^(tau_(i, i + 1)) H_(1 n) arrow 1
  $
  by the system of representatives
  ${rho_(i, i + 1) lr((alpha)): alpha in H_(1 n)}$, i.e.,
  $
    g_i lr((alpha, beta)) = rho_(i, i + 1) lr((alpha)) dot
    rho_(i, i + 1) lr((beta)) dot
    rho_(i, i + 1) lr((alpha dot beta))^(-1)
  $
  for $alpha, beta in H_(1 n)$. Thus, the extension $E_i$ is equivalent to
  $E(g_i)$.

  We show that if $E_i$ splits, then the mapping $rho_(i, i + 1)$ can be chosen
  to be a homomorphism. It is obvious that this assertion is equivalent to the
  fact that $g_i$ is the trivial cocycle. Indeed, let
  $pi_i in Hom(H_(1 n), H_(i, i + 1))$ be such that
  $tau_(i, i + 1) compose pi_i = "id"$. It is required to find
  $rho_(i, i + 1) in Hom(H_(1 n), H_(i, i + 1))$ such that
  $tau_(i, i + 1) compose rho_(i, i + 1) = "id"$ and, in addition,
  $rho_(i, i + 1) lr((h_(1 n))) = h_(i, i + 1)$. Since
  $
    tau_(i, i + 1) lr((pi_i lr((h_(1 n))))) = h_(1 n)
    = tau_(i, i + 1) lr((h_(i, i + 1))),
  $
  we have
  $
    h_(i, i + 1) dot pi_i lr((h_(1 n)))^(-1)
    in Ker(tau_(i, i + 1)) = H_(1 n).
  $
  For $h in H_(1 n)$ we set
  $
    rho_(i, i + 1) lr((h)) = pi_i lr((h)) dot
    (h ⊡ (h_(i, i + 1) dot pi_i lr((h_(1 n)))^(-1))).
  $
  By the distributive law for the ring $R$ which was proved above, the mapping
  $
    h arrow.bar h ⊡
    (h_(i, i + 1) dot pi_i lr((h_(1 n)))^(-1))
  $
  is an endomorphism of the subgroup $H_(1 n)$. Since $H_(i, i + 1)$ is an
  abelian group and $H_(1 n) <= H_(i, i + 1)$, we conclude that
  $rho_(i, i + 1) lr((h))$ is a homomorphism from $H_(1 n)$ to $H_(i, i + 1)$.
  Since $Ker(tau_(i, i + 1)) = H_(1 n)$, we have
  $tau_(i, i + 1) compose rho_(i, i + 1)
  = tau_(i, i + 1) compose pi_i = "id"$. Since $h_(1 n)$ is the unit of
  $Ring(H, frak(H), frak(h))$, we find that
  $
    rho_(i, i + 1) lr((h_(1 n)))
    &= pi_i lr((h_(1 n))) dot (h_(1 n) ⊡
      (h_(i, i + 1) dot pi_i lr((h_(1 n)))^(-1))) \
    &= pi_i lr((h_(1 n))) dot
    (h_(i, i + 1) dot pi_i lr((h_(1 n)))^(-1)) = h_(i, i + 1).
  $

  We show that the mapping
  $t_(i j) lr((alpha)) arrow.bar rho_(i j) lr((alpha))$, $1 <= i < j <= n$,
  $alpha in R$, can be extended to a homomorphism $f$ from
  $UT_n lr((R, g_1, dots, g_(n - 1)))$ onto the group $H$. It suffices to verify
  that the elements $rho_(i j) lr((alpha))$ satisfy the defining relations
  $cal(R)$ in @thm:quasi-unitriangular-presentation.

  We begin by verifying the relation
  $
    [rho_(i j) lr((alpha)), rho_(j k) lr((beta))]
    = rho_(i k) lr((alpha ⊡ beta)).
  $
  We set $x = rho_(i j) lr((alpha))$ and $y = rho_(j k) lr((beta))$. Then
  $alpha = tau_(i j) lr((x))$ and $beta = tau_(j k) lr((y))$. Since $i + 1 < k$,
  we have $rho_(i k) = tau_(i k)^(-1)$. Therefore, the relation under
  consideration is equivalent to the relation
  $
    tau_(i k) lr(([x, y]))
    = tau_(i j) lr((x)) ⊡ tau_(j k) lr((y)),
  $
  which is valid by the definition of the operation $⊡$ in $R$.

  The relation $[rho_(i j) lr((alpha)), rho_(l k) lr((beta))] = e$ holds for
  $i != k$, $j != l$ in view of the first part of condition (1).

  If $i + 1 < j$, then $rho_(i j) = tau_(i j)^(-1)$. In this case, the relation
  $rho_(i j) lr((alpha)) dot rho_(i j) lr((beta))
  = rho_(i j) lr((alpha ⊞ beta))$ is equivalent to the relation
  $alpha dot beta = alpha ⊞ beta$, which is valid by the definition of the
  operation $⊞$ in $R$.

  The relation
  $
    rho_(i, i + 1) lr((alpha)) dot rho_(i, i + 1) lr((beta))
    = rho_(i, i + 1) lr((alpha ⊞ beta)) dot
    rho_(1 n) lr((g_i lr((alpha, beta))))
  $
  holds by the definition of $g_i$, because $rho_(1 n) = "id"$ and
  $alpha ⊞ beta = alpha dot beta$ for $alpha, beta in H_(1 n)$.

  We show that $f$ is an isomorphism. Assume that $f(a) = e$. By
  @cor:ordered-transvection-coordinates, the matrix $a$ can be represented as
  the product of matrices $t_(i j) lr((alpha_(i j)))$, $1 <= i < j <= n$, where
  $t_(i j) lr((alpha_(i j)))$ is to the left of $t_(l k) lr((alpha_(l k)))$ if
  and only if $j - i < k - l$ or $j - i = k - l$ and $i > l$. Then the element
  $e$ is represented as the product of $rho_(i j) lr((alpha_(i j)))$ in $H$ in
  the same order. In view of the second assertion of (6) concerning the
  uniqueness of decomposition of an element into a product we have
  $rho_(i j) lr((alpha_(i j))) = e$ for $i + 1 < j$, $(i, j) != (1, n)$, and
  $rho_(i j) lr((alpha_(i j))) in H_(1 n)$ in the remaining cases. Therefore,
  $alpha_(i j) = tau_(i j) lr((rho_(i j) lr((alpha_(i j))))) = e$
  in any case. Thus, every $alpha_(i j)$ is equal to the zero of the ring $R$,
  i.e., every $t_(i j) lr((alpha_(i j)))$ is the identity matrix over $R$.
  Therefore, $a$ is the identity matrix over $R$. Thus, the kernel of the
  epimorphism $f$ is trivial.

  To complete the proof, it remains to show that $f(t_(i j)) = h_(i j)$ and
  $f(U_(i j)) = H_(i j)$. The first equality holds because
  $f(t_(i j)) = f(t_(i j) lr((h_(1 n))))
  = rho_(i j) lr((h_(1 n))) = h_(i j)$. Let us show the second equality. If
  $j > i + 1$, then
  $
    f(U_(i j)) = f({t_(i j) lr((alpha)): alpha in H_(1 n)})
    = {rho_(i j) lr((alpha)): alpha in H_(1 n)} = H_(i j).
  $
  Let $j = i + 1$. First we verify that $f(U_(i, i + 1)) subset H_(i, i + 1)$.
  Assume that $u in U_(i, i + 1)$. Then
  $u = t_(i, i + 1) lr((alpha)) ⊙ t_(1 n) lr((beta))$
  for some $alpha, beta in H_(1 n)$. Therefore,
  $
    f(u) = rho_(i, i + 1) lr((alpha)) dot rho_(1 n) lr((beta))
    in H_(i, i + 1).
  $
  We show that $f(U_(i, i + 1)) supset H_(i, i + 1)$. Let $h in H_(i, i + 1)$.
  We set $alpha = tau_(i, i + 1) lr((h))$. Then $alpha in H_(1 n)$. We have
  $tau_(i, i + 1) lr((h)) = alpha =
  tau_(i, i + 1) lr((rho_(i, i + 1) lr((alpha))))$. Then
  $h equiv rho_(i, i + 1) lr((alpha)) mod H_(1 n)$, i.e.,
  $h = rho_(i, i + 1) lr((alpha)) beta
  = rho_(i, i + 1) lr((alpha)) rho_(1 n) lr((beta))$
  for some $beta in H_(1 n)$. Consequently,
  $h = f(t_(i, i + 1) lr((alpha)) ⊙ t_(1 n) lr((beta)))
  in f(U_(i, i + 1))$. The theorem is proved.
]

== Definability of one-parameter subgroups of quasi-unitriangular groups
<sec:one-parameter-definability>

For a group $H$ we denote by $H^"com"$ the groupoid whose universe is the same
as the universe of $H$ and whose binary operation is the commutation operation
in the group $H$. The first order language of the corresponding signature is
denoted by $L^"com"$.

We recall that by a _positive primitive formula_ we mean a formula of the form
$exists overline(x) (phi_1 and dots and phi_n)$, where every $phi_i$ is an
atomic formula.

#proposition[
  Let $(H, frak(H), frak(h))$ satisfy the conditions in
  @thm:quasi-unitriangular-characterization(b). Then every subgroup $H_(i j)$ is
  definable in $H^"com"$ (consequently, in $H$) with parameters $frak(h)$ by
  some positive primitive formula. This $L^"com"$-formula depends on $n$, $i$,
  and $j$, but does not depend on $H$, $frak(H)$, and $frak(h)$.
] <prop:one-parameter-positive-definability>

#corollary[
  Suppose that $(H, frak(H), frak(h))$ satisfies the conditions in
  @thm:quasi-unitriangular-characterization(b). Then $(H^"com", frak(h))$
  determines the family $frak(H)$ in a unique way.
] <cor:basis-determines-subgroups>

By the above assertions, we can (and will) use the notation $Ring(H, frak(h))$
instead of $Ring(H, frak(H), frak(h))$.

#proof(head: [Proof of Proposition~@prop:one-parameter-positive-definability.])[
  By @thm:quasi-unitriangular-characterization, it suffices to prove the
  assertion in the case where $(H, frak(H), frak(h))$ is
  $(U, frak(U), bold(t))$, where $U = UT_n lr((R, g_1, dots, g_(n - 1)))$. We
  prove that $U_(i j)$ is definable in $U^"com"$ with parameters $bold(t)$. By
  @prop:twisted-commutators, we can assume that $U = UT_n lr((R))$.

  First of all, it is easy to verify that $C_U lr((t_(i j)))$ consists of all
  matrices $u in U$ such that the $j$th row and the $i$th column of $u - e$
  consist of zeros.

  For $1 <= k < m <= n$ we denote by $A_k^m$ the set of all matrices in $U$ such
  that the element with indices $(i, j)$,
  $(i, j) != (1, m), (1, n), (k, m), (k, n)$, is $0$. Then $A_k^m$ is the
  centralizer of the set ${t_(1 i), t_(j n): i != k, j != m}$.

  It is obvious that $U_(1 2) = A_1^2$ and $U_(n - 1, n) = A_(n - 1)^n$.

  Let $j > 2$. Then $U_(1 j) = [A_1^(j - 1), t_(j - 1, j)]$. Indeed,
  $A_1^(j - 1)$ consists of matrices of the form
  $t_(1, j - 1) lr((alpha)) dot t_(1 n) lr((beta))$ and
  $[t_(1, j - 1) lr((alpha)) dot t_(1 n) lr((beta)), t_(j - 1, j)]
  = t_(1 j) lr((alpha))$.

  Let $i < n - 1$. Then $U_(i n) = [t_(i, i + 1), A_(i + 1)^n]$. Indeed,
  $A_(i + 1)^n$ consists of matrices of the form
  $t_(i + 1, n) lr((alpha)) dot t_(1 n) lr((beta))$ and
  $[t_(i, i + 1), t_(i + 1, n) lr((alpha)) dot t_(1 n) lr((beta))]
  = t_(i n) lr((alpha))$.

  Let $1 < i < j < n$, $j != i + 1$. The set $[A_i^(j - 1), t_(j - 1, j)]$
  consists of all matrices in the group $U$ such that the elements with indices
  $(l, k)$, $(l, k) != (1, j), (i, j)$, vanish. Indeed, $A_i^(j - 1)$ consists
  of matrices of the form
  $t_(1, j - 1) lr((alpha)) dot t_(i, j - 1) lr((beta)) dot
  t_(i n) lr((gamma)) dot t_(1 n) lr((delta))$ and
  $[t_(1, j - 1) lr((alpha)) dot t_(i, j - 1) lr((beta)) dot
    t_(i n) lr((gamma)) dot t_(1 n) lr((delta)), t_(j - 1, j)]
  = t_(1 j) lr((alpha)) dot t_(i j) lr((beta))$. The set
  $[t_(i, i + 1), A_(i + 1)^j]$ consists of all matrices in $U$ such that the
  element with indices $(l, k)$, $(l, k) != (i, j), (i, n)$, vanish. Indeed,
  $A_(i + 1)^j$ consists of matrices of the form
  $t_(1 j) lr((alpha)) dot t_(i + 1, j) lr((beta)) dot
  t_(i + 1, n) lr((gamma)) dot t_(1 n) lr((delta))$ and
  $[t_(i, i + 1), t_(1 j) lr((alpha)) dot
    t_(i + 1, j) lr((beta)) dot t_(i + 1, n) lr((gamma)) dot
    t_(1 n) lr((delta))] = t_(i j) lr((beta)) dot t_(i n) lr((gamma))$.
  Therefore, $U_(i j) = [A_i^(j - 1), t_(j - 1, j)] ∩
  [t_(i, i + 1), A_(i + 1)^j]$.

  Let $1 < i < n$. It is obvious that $U_(i, i + 1)$ consists of all matrices in
  $A_i^(i + 1)$ such that the elements with indices $(1, i + 1)$ and $(i, n)$
  are $0$. Let $u in A_i^(i + 1)$. Then $u$ has the form
  $t_(1, i + 1) lr((alpha)) dot
  t_(i, i + 1) lr((beta)) dot t_(i n) lr((gamma)) dot
  t_(1 n) lr((delta))$. The element of the matrix $u$ with indices $(1, i + 1)$
  is $0$ if and only if $alpha = 0$, i.e.,
  $
    [u, t_(i + 1, i + 2)] = t_(1, i + 2) lr((alpha)) dot
    t_(i, i + 2) lr((beta)) in [t_(i, i + 1), A_(i + 1)^(i + 2)].
  $
  The element of the matrix $u$ with indices $(i, n)$ is $0$ if and only if
  $gamma = 0$, i.e.,
  $
    [t_(i - 1, i), u] = t_(i - 1, i + 1) lr((beta)) dot
    t_(i - 1, n) lr((gamma)) in [A_(i - 1)^i, t_(i, i + 1)].
  $
  Therefore, $U_(i, i + 1)$ consists exactly of the matrices $u$ in
  $A_i^(i + 1)$ such that
  $
    [u, t_(i + 1, i + 2)] in [t_(i, i + 1), A_(i + 1)^(i + 2)], quad
    [t_(i - 1, i), u] in [A_(i - 1)^i, t_(i, i + 1)].
  $
  The above analysis shows how to define $U_(i j)$ in $U^"com"$ by a positive
  primitive formula with parameters $t_(l k)$, $1 <= l < k <= n$.

  For $1 <= k < m <= n$ we denote by $zeta_k^m$ the conjunction of atomic
  formulas $[t_(1 i), v] = e$ and $[v, t_(j n)] = e$ for $i != k$, $j != m$. The
  formula $zeta_k^m lr((v))$ defines the subgroup $A_k^m$.

  Thus, $U_(1 2)$ is defined by the formula $zeta_1^2 lr((v))$ and
  $U_(n - 1, n)$ is defined by the formula $zeta_(n - 1)^n lr((v))$.

  For $j > 2$ the subgroup $U_(1 j)$ is defined by the formula
  $ exists x (v = [x, t_(j - 1, j)] and zeta_1^(j - 1) lr((x))). $

  For $i < n - 1$ the subgroup $U_(i n)$ is defined by the formula
  $ exists x (v = [t_(i, i + 1), x] and zeta_(i + 1)^n lr((x))). $

  For $1 < i < j < n$, $j != i + 1$ the subgroup $U_(i j)$ is defined by the
  formula
  $
    exists x y (v = [x, t_(j - 1, j)] = [t_(i, i + 1), y]
      and zeta_i^(j - 1) lr((x)) and zeta_(i + 1)^j lr((y))).
  $

  For $1 < i < n - 1$ the subgroup $U_(i, i + 1)$ is defined by the formula
  $
    exists x y ([v, t_(i + 1, i + 2)] = [t_(i, i + 1), x]
      and [t_(i - 1, i), v] = [y, t_(i, i + 1)] \
      and zeta_(i + 1)^(i + 2) lr((x)) and zeta_(i - 1)^i lr((y))
      and zeta_i^(i + 1) lr((v))).
  $
  The proposition is proved.
]

#remark(numbered: false)[
  The subgroup $U_(1 n)$ can also be defined by the formula $zeta_1^n lr((v))$.
  Thus, for $n = 3$ a large part of the above proof is not necessary. In this
  case, every $U_(i j)$ is definable by the formula $zeta_i^j lr((v))$. The case
  $1 < i < j < n$, $j != i + 1$ occurs only if $n >= 5$.
]

We introduce the following notation. We denote by
$phi_(i j) lr((v, overline(x)))$ the positive primitive $L^"com"$-formula
constructed in @prop:one-parameter-positive-definability such that
$phi_(i j) lr((U, bold(t))) = U_(i j)$.

== Bases <sec:bases>

Let $H$ be a group, let $n >= 3$, and let $frak(h) = {h_(i j): 1 <= i < j <= n}$
be a family in $H$. The family $frak(h)$ is called a _quasi-$UT_n$-basis_ or,
for short, a _basis_ in $H$ if
$(H, frak(h)) tilde.eq
(UT_n lr((R, g_1, dots, g_(n - 1))), bold(t))$
for some $R$, $g_1, dots, g_(n - 1)$. The family $frak(h)$ is called a
_$UT_n$-basis_ or a _splitting basis_ in $H$ if
$(H, frak(h)) tilde.eq (UT_n lr((R)), bold(t))$ for some $R$. The basis
$bold(t)$ in $UT_n lr((R, g_1, dots, g_(n - 1)))$ is called the _standard basis_
in $UT_n lr((R, g_1, dots, g_(n - 1)))$.

For brevity, we denote $(UT_n lr((R)), bold(t))$ by $UT_n^* lr((R))$ and
$(UT_n lr((R, g_1, dots, g_(n - 1))), bold(t))$ by
$UT_n^* lr((R, g_1, dots, g_(n - 1)))$.

Theorem~@thm:quasi-unitriangular-characterization asserts that $frak(h)$ is a
basis in $H$ if and only if $(H, frak(h))$ satisfies
@thm:quasi-unitriangular-characterization(b).
Corollary~@cor:unitriangular-characterization asserts that $frak(h)$ is a
splitting basis in $H$ if and only if $(H, frak(h))$ satisfies
@cor:unitriangular-characterization(b). A basis $frak(h)$ in a group $H$ is said
to be _pure_ if for a (unique) family $frak(H)$ that testifies to
@thm:quasi-unitriangular-characterization(b), the subgroup $H_(1 n)$ is pure in
every $H_(i, i + 1)$. It is obvious that any splitting basis is pure.

Thus, the groups possessing bases are precisely the groups isomorphic to
quasi-unitriangular groups, whereas the groups possessing splitting bases are
the groups isomorphic to unitriangular groups. A quasi-unitriangular group is
said to be _pure_ if it possesses a pure basis.

By @prop:one-parameter-positive-definability, it is clear that for any $n >= 3$
the property of a tuple’s being a quasi-$UT_n$-basis is a first order property.
Later, we will need the following more precise assertion.

#proposition[
  For any $n >= 3$ there exists a formula in the group language
  $"Basis"_n lr((overline(x)))$ with free variables
  $overline(x) = (x_(i j): 1 <= i < j <= n)$ such that for any group $H$ and a
  tuple $frak(h) = (h_(i j): 1 <= i < j <= n)$ in $H$
  $
    frak(h) "is a quasi-" UT_n "-basis in" H
    <==> H models "Basis"_n lr((frak(h))).
  $
  This formula can be taken as the conjunction of formulas of the form
  $forall overline(y) (phi(overline(x), overline(y))
    arrow psi(overline(x), overline(y)))$, where $phi$ and $psi$ are primitive
  positive formulas; moreover, the formula
  $forall overline(x) phi(overline(x), overline(e))$ is true in any group. (Here
  $overline(e)$ is a tuple whose components are equal to $e$.)
] <prop:basis-formula>

#proof[
  We fix $n >= 3$. For the formula $"Basis"_n lr((overline(x)))$ we can take the
  conjunction of the following formulas (i)–(ix).

  - (i) $and.big_(i < j < k) [x_(i j), x_(j k)] = x_(i k)$,
  - (ii) $and.big_(i < j) phi_(i j) lr((x_(i j), overline(x)))$,
  - (iii) $and.big_(i < j) forall u v
    (phi_(i j) lr((u, overline(x))) and
      phi_(i j) lr((v, overline(x))) arrow
      phi_(i j) lr((u dot v^(-1), overline(x))))$.

  Formula (iii) claims that for the tuple $frak(h)$ in the group $H$, every
  $phi_(i j) lr((H, frak(h)))$ is a subgroup of this group.

  Next,

  - (iv) $and.big_(i < j) forall v
    (phi_(1 n) lr((v, overline(x))) arrow
      phi_(i, i + 1) lr((v, overline(x))))$.

  Formula (iv) expresses property (0) from @sec:one-parameter-subgroups. Next,

  - (v)
    $
      and.big_(i < j\, l < k\, i != k\, j != l) forall u v
      (phi_(i j) lr((u, overline(x))) and
        phi_(l k) lr((v, overline(x))) arrow [u, v] = e), \
      and.big_(i < j < k) forall u v
      (phi_(i j) lr((u, overline(x))) and
        phi_(j k) lr((v, overline(x))) arrow
        phi_(i k) lr(([u, v], overline(x)))), \
      and.big_(i < j < k) forall u
      (phi_(i k) lr((u, overline(x))) arrow exists v
        (phi_(i j) lr((v, overline(x))) and [v, x_(j k)] = u)), \
      and.big_(k < i < j) forall u
      (phi_(k j) lr((u, overline(x))) arrow exists v
        (phi_(i j) lr((v, overline(x))) and [x_(k i), v] = u)).
    $

  Formulas (v) express properties (1) and (2) from @sec:one-parameter-subgroups.
  Next,

  - (vi)
    $
      and.big_(i < j < k\, j != i + 1) forall u
      (phi_(i j) lr((u, overline(x))) and [u, x_(j k)] = e
        arrow u = e), \
      and.big_(l < i < j\, j != i + 1) forall u
      (phi_(i j) lr((u, overline(x))) and [x_(l i), u] = e
        arrow u = e), \
      and.big_(i + 1 < k) forall u
      (phi_(i, i + 1) lr((u, overline(x))) and [u, x_(i + 1, k)] = e
        arrow phi_(1 n) lr((u, overline(x)))), \
      and.big_(l < i) forall u
      (phi_(i, i + 1) lr((u, overline(x))) and [x_(l i), u] = e
        arrow phi_(1 n) lr((u, overline(x)))).
    $

  Formulas (vi) express property (3) from @sec:one-parameter-subgroups.
  Continuing, we need

  - (vii) $and.big_(i < j < k < l) forall u v w
    (phi_(i j) lr((u, overline(x))) and
      phi_(j k) lr((v, overline(x))) and
      phi_(k l) lr((w, overline(x))) arrow [[u, v], w] = [u, [v, w]])$.

  Formula (vii) expresses property (4) from @sec:one-parameter-subgroups. Also,

  - (viii)
    $
      and.big_(i < j < k\, m < p < q) forall u v y z
      (phi_(i j) lr((u, overline(x))) and
        phi_(j k) lr((v, overline(x))) and
        phi_(m p) lr((y, overline(x))) and
        phi_(p q) lr((z, overline(x))) \
        and tau_(i j) lr((u, overline(x)))
        = tau_(m p) lr((y, overline(x)))
        and tau_(j k) lr((v, overline(x)))
        = tau_(p q) lr((z, overline(x))) \
        arrow tau_(i k) lr(([u, v], overline(x)))
        = tau_(m q) lr(([y, z], overline(x)))),
    $

  where
  $
    tau_(i j) lr((v, overline(x))) = cases(
      [[x_(1 i), v], x_(j n)] & "if" 1 < i < j < n,
      [x_(1 i), v] & "if" 1 < i < j = n,
      [v, x_(j n)] & "if" 1 = i < j < n,
      v & "if" 1 = i < j = n.
    )
  $
  Formula (viii) expresses property (5) from @sec:one-parameter-subgroups.

  Denote by $s(overline(u))$ the group word
  $
    u_(n - 1, n) dots u_(1 2) dot u_(n - 2, n) dots u_(1 3) dot
    u_(2 n) dot u_(1, n - 1) dot u_(1 n),
  $
  where $overline(u)$ is a tuple of variables $(u_(i j): 1 <= i < j <= n)$.
  Finally, we have

  - (ix)
    $
      forall u exists overline(u)
      (and.big_(i < j) phi_(i j) lr((u_(i j), overline(x)))
        and u = s(overline(u))) \
      and forall overline(u) forall overline(v)
      (and.big_(i < j) phi_(i j) lr((u_(i j), overline(x))) and
        and.big_(i < j) phi_(i j) lr((v_(i j), overline(x))) and
        s(overline(u)) = s(overline(v)) \
        arrow and.big_(i + 1 < j\, (i, j) != (1, n))
        u_(i j) = v_(i j) and
        and.big_(i < n) phi_(1 n) lr(
          (u_(i, i + 1) dot
            v_(i, i + 1)^(-1), overline(x))
        )).
    $

  Formula (ix) expresses property (6) from @sec:one-parameter-subgroups.

  It is easy to see that the formulas $phi_(i j) lr((v, overline(x)))$
  constructed in @prop:one-parameter-positive-definability are such that
  $forall overline(x) phi_(i j) lr((e, overline(x)))$ is true in any group. It
  is easy to verify that in each of the conditional formulas (i)–(ix) the
  antecedent $phi(overline(x), overline(y))$ has the property that
  $forall overline(x) phi(
    overline(x),
    overline(e)
  )$ is true in any group.

  The proposition is proved.
]

#proposition[
  Let $frak(h)$ be a basis in a group $H$. Each condition below guarantees that
  $frak(h)$ is a splitting basis:

  - (1) The group $Z(H)$ is pure injective, and the basis $frak(h)$ is pure.
  - (2) The group $Z(H)$ is a pure injective torsion-free group.
  - (3) The group $Z(H)$ is a direct sum of cyclic groups, and the basis
    $frak(h)$ is pure.
  - (4) Every $H_(i, i + 1)$ is an elementary abelian group.
  - (5) The group $Z(H)$ is $aleph_1$-saturated, and the basis $frak(h)$ is
    pure.
] <prop:splitting-basis-criteria>

#proof[
  By @cor:unitriangular-characterization, it suffices to prove that, in any
  case, $H_(1 n)$ is a direct summand of every $H_(i, i + 1)$.

  (1) The subgroup $H_(1 n)$ coincides with $Z(H)$ and, consequently, is pure
  injective. Since the basis $frak(h)$ is pure, $H_(1 n)$ is a pure subgroup of
  every $H_(i, i + 1)$. Hence $H_(1 n)$ is a direct summand of every
  $H_(i, i + 1)$.

  (2) The subgroup $H_(1 n)$ coincides with $Z(H)$ and, consequently, is pure
  injective. Since $H_(i, i + 1) \/ H_(1 n) tilde.eq
  H_(1 n) = Z(H)$, we conclude that $H_(i, i + 1) \/ H_(1 n)$ is a torsion-free
  group. Hence $H_(1 n)$ is a pure subgroup of every $H_(i, i + 1)$. Hence
  $H_(1 n)$ is a direct summand of every $H_(i, i + 1)$.

  (3) Since $H_(i, i + 1) \/ H_(1 n) tilde.eq H_(1 n) = Z(H)$ is the direct sum
  of cyclic groups and the extension $H_(1 n) <= H_(i, i + 1)$ is pure, it
  splits by the Kulikov theorem (cf. @bib:fuchs1970, 28.2).

  (4) Every subgroup of an elementary abelian group is a direct summand. In
  particular, $H_(1 n)$ is a direct summand of every $H_(i, i + 1)$.

  (5) If a group $H$ is $aleph_1$-saturated, then the group $Z(H)$ is also
  $aleph_1$-saturated. Since any $aleph_1$-saturated abelian group is pure
  injective @bib:eklof1972, we obtain the required result because (1) holds in
  case (5).

  The proposition is proved.
]

#proposition[
  Let $frak(h) = (h_(i j): 1 <= i < j <= n)$ be a basis in a group $H$. Let
  $h_(i j)' = h_(i j)$ for $j - i > 1$ and $h_(i, i + 1)' = h_(i, i + 1) z_i$,
  where $z_i in Z(H)$. Then $frak(h)' = (h_(i j)': 1 <= i < j <= n)$ is a basis
  in the group $H$; moreover, $Ring(H, frak(h)) = Ring(H, frak(h)')$.
] <prop:central-basis-perturbation>

#proof[
  It is obvious that $[h_(i j)', h_(j k)'] = [h_(i j), h_(j k)]
  = h_(i k) = h_(i k)'$. Let $(H, frak(H), frak(h))$ satisfy the conditions in
  @thm:quasi-unitriangular-characterization(b). Then $(H, frak(H), frak(h)')$
  also satisfies these conditions. Consequently, $frak(h)'$ is a basis in $H$.
  For both $Ring(H, frak(h))$ and $Ring(H, frak(h)')$, the additive group is
  $Z(H)$. Since $[h_(i j)', x] = [h_(i j), x]$ and
  $[x, h_(i j)'] = [x, h_(i j)]$ for any $x in H$, it is easy to see that the
  multiplication operations in these rings coincide.
]

== Quasi-unitriangular groups and Cartesian products <sec:cartesian-products>

#proposition[
  $UT_n lr((product_(i in I) R_i)) tilde.eq
  product_(i in I) UT_n lr((R_i))$ for any family of rings ${R_i: i in I}$.
] <prop:unitriangular-product-rings>

#proof[
  Let
  $ a = (alpha_(k l)) in UT_n lr((product_(i in I) R_i)). $
  Then $a_i = (alpha_(k l) lr((i))) in UT_n lr((R_i))$ for $i in I$. It is
  obvious that the mapping $a arrow.bar (a_i: i in I)$ is an isomorphism of the
  groups $UT_n lr((product_(i in I) R_i))$ and
  $product_(i in I) UT_n lr((R_i))$.
]

#proposition[
  Let $cal(H) = {H_i: i in I}$ be a family of groups, and let
  $H = product_(i in I) H_i$. Let $n >= 3$, and let
  $frak(h) = {h_(k l): 1 <= k < l <= n}$ be a family of elements of $H$. Then
  the following assertions hold:

  - (1) $frak(h)$ is a basis in the group $H$ if and only if for any $i in I$
    the family $frak(h)_i = {h_(k l) lr((i)):
      1 <= k < l <= n}$ is a basis in the group $H_i$,
  - (2) if $frak(h)$ is a basis in the group $H$, then
    $Ring(H, frak(h)) = product_(i in I) Ring(H_i, frak(h)_i)$.
] <prop:cartesian-bases-rings>

To prove the proposition, we need the following lemma.

#lemma(numbered: false)[
  Let $theta(overline(x))$ be an $L$-formula of the form
  $forall overline(y) (phi(overline(x), overline(y)) arrow
    psi(overline(x), overline(y)))$, where $phi$ and $psi$ are positive
  primitive formulas. Let ${cal(A)_i: i in I}$ be a family of $L$-structures,
  and let $cal(A) = product_(i in I) cal(A)_i$. Assume that
  $forall overline(x) exists overline(y)
  phi(overline(x), overline(y))$ is true in every $cal(A)_i$. Then for any tuple
  $overline(a)$ in $cal(A)$ we have
  $
    cal(A) models theta(overline(a))
    <==> (forall i in I) cal(A)_i models theta(overline(a)_i).
  $
]

#proof[
  The implication $arrow.l$ follows from the fact that $theta$ is a Horn formula
  and, consequently, is preserved under the Cartesian products. We prove the
  implication $==>$. Assume that $cal(A) models theta(overline(a))$ and prove
  that $cal(A)_i models theta(overline(a)_i)$ for any $i in I$. Let
  $overline(b)_i in cal(A)_i$. Assuming that
  $cal(A)_i models phi(overline(a)_i, overline(b)_i)$, we show that
  $cal(A)_i models psi(overline(a)_i, overline(b)_i)$. For $j != i$ we choose
  $overline(b)_j in cal(A)_j$ such that
  $cal(A)_j models phi(overline(a)_j, overline(b)_j)$. We set
  $overline(b) = (overline(b)_j: j in I)$. Since $phi$ is a Horn formula, we
  have $cal(A) models phi(overline(a), overline(b))$. From
  $cal(A) models theta(overline(a))$ it follows that
  $cal(A) models psi(overline(a), overline(b))$. Since $psi$ is positive, we
  conclude that $cal(A)_i models psi(overline(a)_i, overline(b)_i)$.
]

#proof(head: [Proof of Proposition~@prop:cartesian-bases-rings.])[
  Assertion (1) follows from @prop:basis-formula and the above lemma. Let us
  prove (2).

  For any $n >= 3$ there exists a positive primitive formula
  $rho(u, v, w, overline(x))$ in the group language such that for any group $G$
  with a quasi-$UT_n$-basis $frak(g)$ the formula $rho(u, v, w, frak(g))$
  defines the graph of the multiplication operation of $Ring(G, frak(g))$ in
  $G$. For $rho(u, v, w, overline(x))$ we can take the formula
  $
    exists y z (phi_(1 2) lr((y, overline(x))) and
      phi_(2 n) lr((z, overline(x))) and [y, x_(2 n)] = u
      and [x_(1 2), z] = v and [y, z] = w).
  $
  It is obvious that
  $ Z(H) = product_(i in I) Z(H_i). $
  Therefore, $Ring(H, frak(h))$ and $product_(i in I) Ring(H_i, frak(h)_i)$ have
  the same additive group. Let $a, b, c in Z(H)$. Then
  $
    Ring(H, frak(h)) models a ⊡ b = c \
    <==> H models rho(a, b, c, frak(h)) \
    <==> H_i models rho(a_i, b_i, c_i, frak(h)_i) quad "for all" i \
    <==> Ring(H_i, frak(h)_i) models a_i ⊡ b_i = c_i
    quad "for all" i.
  $
  The proposition is proved.
]

#corollary[
  The Cartesian product of groups is a quasi-$UT_n$-group if and only if every
  factor of the product is a quasi-$UT_n$-group.
] <cor:cartesian-quasi-unitriangular-criterion>

#corollary[
  If a ring cannot be represented as a Cartesian product, then a
  quasi-triangular group over this ring cannot be represented as a Cartesian
  product.
] <cor:indecomposable-ring-group>

#corollary[
  A unitriangular group over a ring $R$ can be represented as a Cartesian
  product if and only if $R$ can be represented as a Cartesian product.
] <cor:unitriangular-product-decomposition>

== Nonuniqueness of rings of quasi-unitriangular groups <sec:ring-nonuniqueness>

As was shown above, quasi-unitriangular groups are exactly groups with bases.
Moreover, every basis defines some ring. The following question arises: Are
rings corresponding to different bases isomorphic? In other words, is it
possible that quasi-unitriangular groups over nonisomorphic rings are
isomorphic? The answer is positive in view of the following assertion.

#proposition[
  $UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq
  UT_n lr((R^"op", g_(n - 1), dots, g_1))$.
] <prop:opposite-ring-twisted-isomorphism>

#corollary[$UT_n lr((R)) tilde.eq UT_n lr((R^"op"))$.]
<cor:opposite-ring-unitriangular-isomorphism>

#proof(head: [Proof of Proposition~@prop:opposite-ring-twisted-isomorphism.])[
  Denote the group operations in $UT_n lr((R))$, $UT_n lr((R^"op"))$,
  $UT_n lr((R, g_1, dots, g_(n - 1)))$, and
  $UT_n lr((R^"op", g_(n - 1), dots, g_1))$ by $dot$, $underline(dot)$, $⊙$, and
  $underline(⊙)$ respectively.

  Let $' (delta_(i j))$ be the matrix obtained by the transposition of the
  matrix $(delta_(i j))$ with respect to the secondary diagonal, i.e.,
  $' (delta_(i j)) = (gamma_(i j))$, where
  $gamma_(i j) = delta_(n - j + 1, n - i + 1)$. It is obvious that if $u$ is an
  upper unitriangular matrix, so is $' u$. We have
  $' (u dot v) = ' v underline(dot) ' u$. Indeed, let $u = (alpha_(i j))$,
  $v = (beta_(i j))$, $' u = (rho_(i j))$, and $' v = (mu_(i j))$. Then
  $
    ' (u dot v) & = ' (alpha_(i 1) beta_(1 j) + dots + alpha_(i n) beta_(n j)) \
                & = alpha_(n - j + 1, 1) beta_(1, n - i + 1)
                  + dots + alpha_(n - j + 1, n) beta_(n, n - i + 1) \
                & = rho_(n j) mu_(i n) + dots + rho_(1 j) mu_(i 1)
                  = ' v underline(dot) ' u.
  $
  Furthermore, $' (u ⊙ v) = ' v underline(⊙) ' u$. Indeed,
  $
    ' (u ⊙ v) & = ' (u dot v + (g_1 lr((alpha_(1 2), beta_(1 2))) + dots
                    + g_(n - 1) lr((alpha_(n - 1, n), beta_(n - 1, n)))) e_(1 n)) \
              & = ' v underline(dot) ' u +
                (g_(n - 1) lr((beta_(n - 1, n), alpha_(n - 1, n))) + dots
                  + g_1 lr((beta_(1 2), alpha_(1 2)))) e_(1 n)
                = ' v underline(⊙) ' u.
  $
  Thus $u arrow.bar ' u$ is an anti-isomorphism of the groups
  $UT_n lr((R, g_1, dots, g_(n - 1)))$ and
  $UT_n lr((R^"op", g_(n - 1), dots, g_1))$. Since every group is
  anti-isomorphic to itself by means of $x arrow.bar x^(-1)$ and the composition
  of two anti-isomorphisms is an isomorphism, we obtain the required result.
]

The following question arises: Is it true that a quasi-unitriangular group over
a ring determines this ring in a unique way up to an isomorphism or an
anti-isomorphism? The answer is negative even for ordinary unitriangular groups.
Nevertheless, we will show later that the answer is positive for
quasi-unitriangular groups over rings in some broad class of rings.

#proposition[
  There exist associative rings $R$ and $S$ such that for any $n >= 3$ the
  groups $UT_n lr((R))$ and $UT_n lr((S))$ are isomorphic, whereas the rings $R$
  and $S$ are neither isomorphic nor anti-isomorphic.
] <prop:nonisomorphic-associated-rings>

#proof[
  Let $K$ be a directly indecomposable associative ring with unit that is not
  anti-isomorphic to itself. We set $R = K times K$ and $S = K times K^"op"$.

  The rings $R$ and $S$ are nonisomorphic. Indeed, since the ring $K$ is
  indecomposable, it has no nontrivial central idempotents. Hence only $(0, 1)$
  and $(1, 0)$ are nontrivial central idempotents of $R$ and $S$. Therefore, if
  $tau: R arrow S$ is an isomorphism between rings, then $tau(1, 0) = (1, 0)$,
  $tau(0, 1) = (0, 1)$ or $tau(1, 0) = (0, 1)$, $tau(0, 1) = (1, 0)$. Then $tau$
  isomorphically maps $(0, K)$ onto $(0, K^"op")$ in the first case and $(K, 0)$
  onto $(0, K^"op")$ in the second case.

  In any case, we have $K tilde.eq K^"op"$, which is a contradiction.

  It is obvious that $S^"op" tilde.eq K^"op" times K tilde.eq S$. Hence $R$ is
  not anti-isomorphic to $S$. The proposition is proved.
]

For our purposes we need the following example of a ring $K$ with properties
necessary in the proof of @prop:nonisomorphic-associated-rings.

#proposition[
  Let $F$ be a field of prime characteristic $p$, and $K$ the matrix ring
  $ mat(delim: "[", bb(F)_p, F; 0, F). $
  Then the following assertions hold:

  - (i) The ring $K$ is directly indecomposable.
  - (ii) In $K$, any nonzero right ideal has cardinality $>= |F|$.
  - (iii) In $K$ there is a left ideal of cardinality $p$.

  In particular, if $bb(F)_p != F$, then $K$ is not anti-isomorphic to itself.
] <prop:asymmetric-triangular-ring>

#remark(numbered: false)[
  The condition $bb(F)_p != F$ is essential since the ring
  $mat(delim: "[", F, F; 0, F)$ is anti-isomorphic to itself by means of
  $mat(delim: "[", alpha, gamma; 0, beta) arrow.bar
  mat(delim: "[", beta, gamma; 0, alpha)$ for any field $F$.
]

#proof(head: [Proof of Proposition~@prop:asymmetric-triangular-ring.])[
  (i) A direct computation shows that the center of the ring $K$ consists of the
  matrices of the form $mat(delim: "[", n, 0; 0, n)$, where $n in bb(F)_p$.
  Therefore, only $0$ and $1$ are central idempotents of $K$. Hence $K$ is
  directly indecomposable.

  (ii) The assertion holds because nonzero right ideals of $K$ are as follows:
  $
    K, quad mat(delim: "[", bb(F)_p, F; 0, 0), quad
    mat(delim: "[", 0, F; 0, 0), quad
    F mat(delim: "[", 0, mu; 0, 1),
  $
  where $mu in F$. Indeed, let $I$ be a nonzero ideal of $K$, and let
  $mat(delim: "[", n, alpha; 0, beta)$ be a nonzero element of $I$. For any
  $m in bb(F)_p$ and $gamma, delta in F$ the product
  $
    mat(delim: "[", n, alpha; 0, beta) dot
    mat(delim: "[", m, gamma; 0, delta) =
    mat(delim: "[", n m, n gamma + alpha delta; 0, beta delta)
  $
  belongs to $I$. Then $I$ contains $K$ for $n, beta != 0$, $I$ contains
  $mat(delim: "[", bb(F)_p, F; 0, 0)$ for $n != 0$ and $beta = 0$, $I$ contains
  $mat(delim: "[", 0, F; 0, 0)$ for $n = beta = 0$ and $alpha != 0$, and $I$
  contains $F mat(delim: "[", 0, mu; 0, 1)$ for $n = 0$ and $beta != 0$, where
  $mu = beta^(-1) alpha$. Each of these contained right ideals has cardinality
  $>= |F|$.

  (iii) It is obvious that $mat(delim: "[", 0, A; 0, 0)$ is a left ideal of $K$
  for any subgroup $A$ of the additive group of the field $F$. For $A$ we take
  an arbitrary subgroup of cardinality $p$ (for example, $A = bb(F)_p$). Then we
  have a left ideal of cardinality $p$.
]

#remark[
  If the field $F$ is finite, then the ring $K$ is also finite. Therefore, we
  can assume that the rings $R$ and $S$ are finite in
  @prop:nonisomorphic-associated-rings.
] <rem:finite-ring-nonuniqueness>

Regarding @prop:nonisomorphic-associated-rings, the following interesting
question arises: To what extent can the rings $R$ and $S$ be different under the
condition that the groups $UT_n lr((R))$ and $UT_n lr((S))$ are isomorphic? In
particular, the following question is open: Are there rings $R$ and $S$ such
that $R$ is associative and $S$ is not associative, but
$UT_3 lr((R)) tilde.eq UT_3 lr((S))$? By @sec:ring-reconstruction, such a
situation is impossible if, in addition, $R$ is commutative or integral.

== A bilinear mapping associated with a quasi-unitriangular group
<sec:associated-bilinear-map>

Let $n >= 3$, and let $G$ be an $(n - 1)$-step nilpotent group. Let
$ G = G_1 > G_2 > dots > G_(n - 1) > G_n = 1 $
be the lower central series of $G$. Then $[G_i, G_j] <= G_(i + j)$ (cf.
@bib:baumslag1971). If $x in G_1$ and $y in G_(n - 2)$, then
$[x, y] in G_(n - 1) <= Z(G)$. It is easy to see that if $x, x' in G_1$,
$x' G_2 = x G_2$, $y, y' in G_(n - 2)$, and $y' G_(n - 1) = y G_(n - 1)$, then
$[x', y'] = [x, y]$. Indeed, let $x' = x a$ and $y' = y b$, where $a in G_2$ and
$b in G_(n - 1)$. Then
$
  [x', y'] = [x a, y b] = [x, y b]^a [a, y b] = [x, y b]
  = [x, b] [x, y]^b = [x, y].
$
We have used the group identities $[u v, w] = [u, w]^v [v, w]$,
$[u, v w] = [u, w] [u, v]^w$ and the relations
$
  [x, y b] in [G, G_(n - 2)] = G_(n - 1) <= Z(G), \
  [a, y b] in [G_2, G_(n - 2)] <= G_n = 1, \
  b in G_(n - 1) <= Z(G).
$
Thus, the mapping
$
  f_G: G_1 \/ G_2 times G_(n - 2) \/ G_(n - 1) arrow G_(n - 1), quad
  f_G lr((x G_2, y G_(n - 1))) = [x, y]
$
is well defined.

It is easy to see that $f_G$ is a bilinear mapping of abelian groups. Indeed,
for $x, y in G_1$ and $z in G_(n - 2)$ we have
$
  f_G lr((x G_2 dot y G_2, z G_(n - 1)))
  = [x y, z] = [x, z]^y [y, z] = [x, z] [y, z] \
  = f_G lr((x G_2, z G_(n - 1))) dot f_G lr((y G_2, z G_(n - 1))).
$
We have used the relation $[x, z] in G_(n - 1) <= Z(G)$. For $x in G_1$,
$y, z in G_(n - 2)$ we have
$
  f_G lr((x G_2, y G_(n - 1) dot z G_(n - 1)))
  = [x, y z] = [x, z] [x, y]^z = [x, y] [x, z] \
  = f_G lr((x G_2, y G_(n - 1))) dot f_G lr((x G_2, z G_(n - 1))),
$
because $[x, z], [x, y] in G_(n - 1) <= Z(G)$.

It is obvious that for isomorphic nilpotent groups the corresponding bilinear
mappings are isomorphic. We say that bilinear mappings of abelian groups
$f: A_1 times A_2 arrow A_0$ and $f': A_1' times A_2' arrow A_0'$ are
_isomorphic_ if there exist isomorphisms of abelian groups
$Psi_i: A_i arrow A_i'$, $i = 0, 1, 2$, such that
$Psi_0 lr((f(a_1, a_2))) = f'(Psi_1 lr((a_1)), Psi_2 lr((a_2)))$
for any $a_1 in A_1$, $a_2 in A_2$.

We compute the above bilinear mapping for quasi-$UT_n$-groups.

#proposition[
  Let $U = UT_n lr((R, g_1, dots, g_(n - 1)))$. Then $f_U$ is isomorphic to the
  bilinear mapping
  $
    f_n^R: R^(n - 1) times R^2 arrow R, quad
    f_n^R lr(((gamma_1, dots, gamma_(n - 1)), (delta_1, delta_2)))
    = gamma_1 delta_2 - delta_1 gamma_(n - 1).
  $
] <prop:associated-bilinear-map-coordinates>

#proof[
  We note that for $i = 1, 2, dots, n - 1$ the mapping
  $
    h_i: R^(n - i) arrow U_i \/ U_(i + 1), quad
    h_i lr((gamma_1, dots, gamma_(n - i))) =
    t_(n - i, n) lr((gamma_(n - i))) ⊙ dots
    ⊙ t_(1, i + 1) lr((gamma_1)) ⊙ U_(i + 1)
  $
  is an isomorphism between abelian groups. Indeed, by
  @prop:lower-central-coordinates, this mapping is a bijection. Since, for
  $1 <= k, l <= n - i$,
  $
    t_(k, k + i) lr((alpha + beta)) equiv
    t_(k, k + i) lr((alpha)) ⊙ t_(k, k + i) lr((beta))
    mod U_(i + 1), \
    t_(k, k + i) lr((alpha)) ⊙ t_(k, k + i) lr((beta)) equiv
    t_(k, k + i) lr((beta)) ⊙ t_(k, k + i) lr((alpha))
    mod U_(i + 1)
  $
  in $U$, we have
  $
    & h_i lr(
        ((gamma_1, dots, gamma_(n - i)) +
          (gamma_1', dots, gamma_(n - i)'))
      ) \
    & = t_(n - i, n) lr((gamma_(n - i) + gamma_(n - i)'))
      ⊙ dots ⊙ t_(1, i + 1) lr((gamma_1 + gamma_1'))
      ⊙ U_(i + 1) \
    & = (t_(n - i, n) lr((gamma_(n - i))) ⊙ dots
        ⊙ t_(1, i + 1) lr((gamma_1)) ⊙ U_(i + 1)) \
    & ⊙ (t_(n - i, n) lr((gamma_(n - i)')) ⊙ dots
        ⊙ t_(1, i + 1) lr((gamma_1')) ⊙ U_(i + 1)) \
    & = h_i lr((gamma_1, dots, gamma_(n - i))) ⊙
      h_i lr((gamma_1', dots, gamma_(n - i)')).
  $
  Since the mapping $f_U$ is bilinear, we have
  $
    & f_U lr(
        (h_1 lr((gamma_1, dots, gamma_(n - 1))),
          h_(n - 2) lr((delta_1, delta_2)))
      ) \
    & = f_U lr(
        (t_(n - 1, n) lr((gamma_(n - 1))) ⊙ dots
          ⊙ t_(1 2) lr((gamma_1)) ⊙ U_2, \
          & t_(2 n) lr((delta_2)) ⊙
          t_(1, n - 1) lr((delta_1)) ⊙ U_(n - 1))
      ) \
    & = op("⊙") {f_U lr(
          (t_(i, i + 1) lr((gamma_i)) U_2,
            t_(j, j + n - 2) lr((delta_j)) U_(n - 1))
        ):
        1 <= i < n, j = 1, 2} \
    & = op("⊙") {[t_(i, i + 1) lr((gamma_i)),
          t_(j, j + n - 2) lr((delta_j))]: 1 <= i < n, j = 1, 2}.
  $
  We note that $[t_(i, i + 1) lr((gamma_i)),
    t_(j, j + n - 2) lr((delta_j))] = e$ in all cases except $i = 1$, $j = 2$
  and $i = n - 1$, $j = 1$, whereas
  $
    [t_(1 2) lr((gamma_1)), t_(2 n) lr((delta_2))]
    = t_(1 n) lr((gamma_1 delta_2)), quad
    [t_(n - 1, n) lr((gamma_(n - 1))), t_(1, n - 1) lr((delta_1))]
    = t_(1 n) lr((-delta_1 gamma_(n - 1))).
  $
  Therefore,
  $
    f_U lr(
      (h_1 lr((gamma_1, dots, gamma_(n - 1))),
        h_(n - 2) lr((delta_1, delta_2)))
    )
    = t_(1 n) lr((gamma_1 delta_2 - delta_1 gamma_(n - 1))) \
    = h_(n - 1) lr(
      (f_n^R lr(
          ((gamma_1, dots, gamma_(n - 1)),
            (delta_1, delta_2))
        ))
    ).
  $
  Hence $f_U$ and $f_n^R$ are isomorphic. The proposition is proved.
]

#corollary[
  If $UT_n lr((R, g_1, dots, g_(n - 1))) tilde.eq
  UT_n lr((S, g_1, dots, g_(n - 1)))$, then $f_n^R tilde.eq f_n^S$.
] <cor:group-isomorphism-bilinear-invariant>

Renaming the variables
$
  gamma_1 = alpha, quad gamma_(n - 1) = beta, quad
  overline(gamma) = (gamma_2, dots, gamma_(n - 2)), quad
  delta_1 = alpha', quad delta_2 = beta',
$
we obtain $f_n^R lr(((alpha, beta, overline(gamma)), (alpha', beta')))
= alpha beta' - alpha' beta$. We note that for $n = 3$ the tuple
$overline(gamma)$ is empty. It is clear that the bilinear mapping $f_n^R$ is
nondegenerate if and only if $n = 3$.

Proposition~@prop:associated-bilinear-map-coordinates shows that the isomorphism
type of $f_U$ depends only on $n$ and $R$, not on $g_1, dots, g_(n - 1)$.

From @prop:opposite-ring-twisted-isomorphism it follows that
$f_n^(R^"op") tilde.eq f_n^R$. This can be proved immediately. Indeed, we set
$
  Psi_1 lr((alpha, beta, overline(gamma))) =
  (beta, alpha, overline(gamma)), quad
  Psi_2 lr((alpha', beta')) = (beta', alpha'), quad
  Psi_0 lr((zeta)) = -zeta.
$
It is clear that $Psi_1$, $Psi_2$, and $Psi_0$ are automorphisms of the additive
groups $R^(n - 1)$, $R^2$, and $R$, respectively. We have
$
  Psi_0 lr(
    (f_n^R lr(
        ((alpha, beta, overline(gamma)),
          (alpha', beta'))
      ))
  )
  = Psi_0 lr((alpha beta' - alpha' beta)) = alpha' beta - alpha beta' \
  = beta dot^"op" alpha' - beta' dot^"op" alpha
  = f_n^(R^"op") lr(
    ((beta, alpha, overline(gamma)),
      (beta', alpha'))
  ) \
  = f_n^(R^"op") lr(
    (Psi_1 lr((alpha, beta, overline(gamma))),
      Psi_2 lr((alpha', beta')))
  ).
$

It is obvious that $R = product_(i in I) R_i$ implies
$f_n^R tilde.eq product_(i in I) f_n^(R_i)$. Let $R$ and $S$ be the rings from
@prop:nonisomorphic-associated-rings, i.e., $R = K times K$ and
$S = K times K^"op"$, where $K$ is an indecomposable associative ring with unit
that is not anti-isomorphic to itself. As was shown, the ring $R$ is neither
isomorphic nor anti-isomorphic to the ring $S$. However, for $n >= 3$ we have
$f_n^R tilde.eq f_n^K times f_n^K tilde.eq
f_n^K times f_n^(K^"op") tilde.eq f_n^S$. Generally speaking, the isomorphism
type of the bilinear mapping $f_n^R$ does not determine the ring $R$ uniquely up
to an isomorphism or an anti-isomorphism. (This is obvious by
@prop:nonisomorphic-associated-rings and
@prop:associated-bilinear-map-coordinates.) Nevertheless, we will show that if
the ring $R$ belongs to some broad class, then the isomorphism type of the
bilinear mapping $f_n^R$ determines the ring $R$ uniquely up to an isomorphism
or an anti-isomorphism. Consequently, the quasi-unitriangular group over a ring
of this class defines this ring uniquely up to an isomorphism or an
anti-isomorphism.

== Structures associated with a bilinear mapping <sec:bilinear-map-structures>

Let $f: A_1 times A_2 arrow A_0$ be a bilinear mapping of abelian groups. Let
$P(f)$ denote the set of all triples $(phi_0, phi_1, phi_2)$ such that
$phi_i in op("End")(A_i)$, and let
$
  f(phi_1 lr((x_1)), x_2) = f(x_1, phi_2 lr((x_2)))
  = phi_0 lr((f(x_1, x_2)))
$
for $x_1 in A_1$ and $x_2 in A_2$. By $P[f]$ we denote the set of all pairs
$(phi_1, phi_2)$ such that $phi_i in op("End")(A_i)$ and for $x_1 in A_1$,
$x_2 in A_2$
$ f(phi_1 lr((x_1)), x_2) = f(x_1, phi_2 lr((x_2))). $

#proposition[
  The set $P(f)$ is a subring of the ring
  $op("End")(A_0) times op("End")(A_1) times op("End")(A_2)$ and contains the
  unit of this ring.
] <prop:bilinear-endomorphism-ring>

#proof[
  It is required to verify that for any $(phi_0, phi_1, phi_2)$ and
  $(phi_0', phi_1', phi_2')$ of $P(f)$ the triples
  $(phi_0 - phi_0', phi_1 - phi_1', phi_2 - phi_2')$ and
  $(phi_0 phi_0', phi_1 phi_1', phi_2 phi_2')$ also belong to $P(f)$.

  The assertion concerning the first triple is valid since $f$ is bilinear and
  $phi_i$, $phi_i'$ are group endomorphisms. The case of the second triple is
  also simple. We have
  $
    f(phi_1 lr((phi_1' lr((x_1)))), x_2)
    = phi_0 lr((f(phi_1' lr((x_1)), x_2)))
    = phi_0 lr((phi_0' lr((f(x_1, x_2))))) \
    = phi_0 lr((f(x_1, phi_2' lr((x_2)))))
    = f(x_1, (phi_2 lr((phi_2' lr((x_2)))))).
  $
  The proposition is proved.
]

#proposition[
  The set $P[f]$ forms an additive subgroup of
  $op("End")(A_1) times op("End")(A_2)$.
] <prop:bilinear-pair-additive-group>

#proof[
  We need to verify that for any $(phi_1, phi_2)$ and $(phi_1', phi_2')$ of
  $P[f]$, the pairs $(phi_1 - phi_1', phi_2 - phi_2')$ and
  $(phi_1 + phi_1', phi_2 + phi_2')$ also belong to $P[f]$. This is obvious
  since $f$ is bilinear and $phi_i$, $phi_i'$ are group endomorphisms.
]

#remark[
  Generally speaking, the set $P[f]$ is not a subring of the ring
  $op("End")(A_1) times op("End")(A_2)$.
] <rem:bilinear-pairs-not-ring>

#example(numbered: false)[
  Let $R$ be an arbitrary noncommutative associative ring with unit. Consider
  the bilinear mapping $f: R^2 times R^2 arrow R$, $f((x, y), (x', y')) = x y'$.
  For any $a in R$ the mappings $phi_a lr((x, y)) = (x a, y)$ and
  $phi^a lr((x, y)) = (x, a y)$ are endomorphisms of the additive group $R^2$;
  moreover, $(phi_a, phi^a) in P[f]$ because
  $
    f(phi_a lr((x, y)), (x', y')) = (x a) y' = x (a y')
    = f((x, y), phi^a lr((x', y'))).
  $
  Let $a, b in R$, $a b != b a$. Then $(phi_a phi_b, phi^a phi^b)$ does not
  belong to $P[f]$, since
  $
    f(phi_a lr((phi_b lr((x, y)))), (x', y')) = ((x b) a) y', quad
    f((x, y), phi^a lr((phi^b lr((x', y'))))) = x (a (b y')),
  $
  but $x b a y' != x a b y'$ for $x = y' = 1$. Hence $P[f]$ is not a subring.
]

For some special types of rings it is possible to compute $P(f_n^R)$ and
$P[f_n^R]$. In the remaining part of this section, we fix $n >= 3$ and an
associative ring $R$ with unit.

Let $f((alpha, beta, overline(gamma)), (alpha', beta'))
= alpha beta' - alpha' beta$. Let $phi_0$, $phi_1$, and $phi_2$ be endomorphisms
of the additive groups $R$, $R^(n - 1)$, and $R^2$, respectively. We represent
$phi_1$ and $phi_2$ as $(tau_1, sigma_1, pi)$ and $(tau_2, sigma_2)$
respectively, where
$
  tau_1, sigma_1 in Hom(R^(n - 1), R), quad
  tau_2, sigma_2 in Hom(R^2, R), quad
  pi in Hom(R^(n - 1), R^(n - 3)).
$

#proposition[
  $(phi_0, phi_1, phi_2) in P(f)$ if and only if for some (uniquely determined)
  $delta in Z(R)$
  $
    phi_0 lr((alpha)) equiv delta alpha, quad
    phi_1 lr((alpha, beta, overline(gamma))) equiv
    (delta alpha, delta beta, pi(alpha, beta, overline(gamma))), quad
    phi_2 lr((alpha, beta)) equiv (delta alpha, delta beta).
  $
] <prop:bilinear-endomorphism-triples>

#proof[
  By the definition of $P(f)$, the condition $(phi_0, phi_1, phi_2) in P(f)$
  means that
  $
    tau_1 lr((alpha, beta, overline(gamma))) beta'
    - alpha' sigma_1 lr((alpha, beta, overline(gamma)))
    equiv alpha sigma_2 lr((alpha', beta'))
    - tau_2 lr((alpha', beta')) beta
    equiv phi_0 lr((alpha beta' - alpha' beta)).
  $

  _Sufficiency._ For triples of the indicated form the above identities become
  the identities
  $
    (delta alpha) beta' - alpha' (delta beta)
    equiv alpha (delta beta') - delta (alpha' beta)
    equiv delta (alpha beta' - alpha' beta),
  $
  which are valid since $R$ is associative and $delta in Z(R)$. _Necessity._
  Assume that $(phi_0, phi_1, phi_2) in P(f)$. Specifying elements $alpha$,
  $beta$, $alpha'$, and $beta'$, we find that
  $
    alpha' = 0, beta' = 1 &: quad
    tau_1 lr((alpha, beta, overline(gamma))) equiv phi_0 lr((alpha)), \
    alpha' = 1, beta' = 0 &: quad
    sigma_1 lr((alpha, beta, overline(gamma))) equiv phi_0 lr((beta)), \
    alpha = 0, beta = 1 &: quad
    tau_2 lr((alpha', beta')) equiv phi_0 lr((alpha')), \
    alpha = 1, beta = 0 &: quad
    sigma_2 lr((alpha', beta')) equiv phi_0 lr((beta')).
  $
  Therefore, the condition $(phi_0, phi_1, phi_2) in P(f)$ means that
  $
    phi_0 lr((alpha)) beta' - alpha' phi_0 lr((beta))
    equiv alpha phi_0 lr((beta')) - phi_0 lr((alpha')) beta
    equiv phi_0 lr((alpha beta' - alpha' beta)).
  $

  Setting $alpha = 1$ and $alpha' = 0$, we have
  $phi_0 lr((1)) beta' equiv phi_0 lr((beta'))$. Setting $beta = 1$ and
  $beta' = 0$, we get $alpha' phi_0 lr((1)) equiv
  phi_0 lr((alpha'))$. Therefore,
  $phi_0 lr((alpha)) equiv phi_0 lr((1)) alpha equiv
  alpha phi_0 lr((1))$. Hence $delta equiv phi_0 lr((1)) in Z(R)$ and
  $phi_0 lr((alpha)) equiv delta alpha$,
  $phi_1 lr((alpha, beta, overline(gamma))) equiv
  (delta alpha, delta beta, pi(alpha, beta, overline(gamma)))$,
  $phi_2 lr((alpha, beta)) equiv (delta alpha, delta beta)$. The uniqueness of
  $delta$ is obvious, since $phi_0 lr((alpha)) equiv delta alpha$ implies
  $delta equiv phi_0 lr((1))$.
]

#proposition[
  $(phi_1, phi_2) in P[f]$ if and only if
  $
    tau_1 lr((alpha, beta, overline(gamma))) equiv alpha rho + nu beta,
    quad tau_2 lr((alpha, beta)) equiv alpha lambda - nu beta, \
    sigma_1 lr((alpha, beta, overline(gamma))) equiv
    alpha kappa + lambda beta,
    quad sigma_2 lr((alpha, beta)) equiv -alpha kappa + rho beta
  $
  for some (uniquely determined) $rho, nu, kappa, lambda in R$ such that
  $
    nu (delta delta' - delta' delta)
    equiv (delta delta' - delta' delta) kappa equiv 0.
  $
] <prop:bilinear-endomorphism-pairs>

#proof[
  By the definition of $P[f]$, the condition $(phi_1, phi_2) in P[f]$ means that
  $
    tau_1 lr((alpha, beta, overline(gamma))) beta'
    - alpha' sigma_1 lr((alpha, beta, overline(gamma)))
    equiv alpha sigma_2 lr((alpha', beta'))
    - tau_2 lr((alpha', beta')) beta.
  $
  _Sufficiency._ For pairs of the indicated form this identity becomes
  $
    (alpha rho + nu beta) beta' - alpha' (alpha kappa + lambda beta)
    equiv alpha (-alpha' kappa + rho beta')
    - (alpha' lambda - nu beta') beta,
  $
  which is valid since $R$ is associative and $nu$, $kappa$ satisfy the above
  conditions. _Necessity._ Assume that $(phi_1, phi_2) in P[f]$. Specifying
  $alpha$, $beta$, $alpha'$, and $beta'$, we have
  $
    alpha' = 0, beta' = 1 & : quad
                            tau_1 lr((alpha, beta, overline(gamma))) equiv
                            alpha sigma_2 lr((0, 1)) - tau_2 lr((0, 1)) beta, \
    alpha' = 1, beta' = 0 & : quad
                            sigma_1 lr((alpha, beta, overline(gamma))) equiv
                            -alpha sigma_2 lr((1, 0)) + tau_2 lr((1, 0)) beta, \
      alpha = 0, beta = 1 & : quad
                            tau_2 lr((alpha', beta')) equiv
                            alpha' sigma_1 lr((0, 1, overline(gamma)))
                            - tau_1 lr((0, 1, overline(gamma))) beta', \
      alpha = 1, beta = 0 & : quad
                            sigma_2 lr((alpha', beta')) equiv
                            -alpha' sigma_1 lr((1, 0, overline(gamma)))
                            + tau_1 lr((1, 0, overline(gamma))) beta'.
  $
  The first two identities mean that $tau_1$ and $sigma_1$ are independent of
  $overline(gamma)$. Then $tau_1$, $sigma_1$, $tau_2$, and $sigma_2$ have the
  form
  $
    tau_1 lr((alpha, beta, overline(gamma))) equiv
    alpha rho_1 + nu_1 beta, quad
    tau_2 lr((alpha, beta)) equiv alpha rho_2 + nu_2 beta, \
    sigma_1 lr((alpha, beta, overline(gamma))) equiv
    alpha kappa_1 + lambda_1 beta, quad
    sigma_2 lr((alpha, beta)) equiv alpha kappa_2 + lambda_2 beta.
  $
  Therefore,
  $
    (alpha rho_1 + nu_1 beta) beta'
    - alpha' (alpha kappa_1 + lambda_1 beta)
    equiv alpha (alpha' kappa_2 + lambda_2 beta')
    - (alpha' rho_2 + nu_2 beta') beta.
  $
  Specifying $alpha$, $beta$, $alpha'$, and $beta'$, we have
  $
    alpha = alpha' = 1, beta = beta' = 0 & : quad kappa_1 = -kappa_2, \
    alpha = alpha' = 0, beta = beta' = 1 & : quad nu_1 = -nu_2, \
    alpha = beta' = 1, alpha' = beta = 0 & : quad rho_1 = lambda_2, \
    alpha = beta' = 0, alpha' = beta = 1 & : quad lambda_1 = rho_2.
  $
  Hence
  $
    tau_1 lr((alpha, beta, overline(gamma))) equiv
    alpha rho_1 + nu_1 beta, quad
    tau_2 lr((alpha, beta)) equiv alpha lambda_1 - nu_1 beta, \
    sigma_1 lr((alpha, beta, overline(gamma))) equiv
    alpha kappa_1 + lambda_1 beta, quad
    sigma_2 lr((alpha, beta)) equiv -alpha kappa_1 + rho_1 beta.
  $
  Therefore,
  $
    (alpha rho_1 + nu_1 beta) beta'
    - alpha' (alpha kappa_1 + lambda_1 beta)
    equiv alpha (-alpha' kappa_1 + rho_1 beta')
    - (alpha' lambda_1 - nu_1 beta') beta,
  $
  which is equivalent (since $R$ is associative) to the identity
  $
    nu_1 (beta beta' - beta' beta)
    equiv (alpha' alpha - alpha alpha') kappa_1,
  $
  i.e., to the relation
  $
    nu_1 (delta delta' - delta' delta)
    equiv (delta' delta - delta delta') kappa_1 equiv 0.
  $
  Thus, $phi_1$ and $phi_2$ have the form indicated in the proposition.

  The uniqueness of $rho$, $nu$, $kappa$, and $lambda$ follows from the fact
  that for $phi_1$ and $phi_2$ of the form indicated in the proposition, we have
  $phi_2 lr((1, 0)) = (lambda, -kappa)$ and $phi_2 lr((0, 1)) = (-nu, rho)$.
]
