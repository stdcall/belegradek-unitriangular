"""Exact polynomial checks of the quasi-unitriangular multiplication.

Passages: Proposition 1.3.1, Proposition 1.4.1 and the following remark.
The base rings are integer polynomial rings, degrees 3 and 4; cocycles
are g_i(x,y)=lambda_i*x*y. Polynomial equalities hold after specialization
in any commutative ring. These checks do not cover arbitrary cocycles,
noncommutative rings or all degrees, and do not establish the paper's
model-theoretic classification results.
"""
from sage.all import PolynomialRing, ZZ, identity_matrix, matrix
from copy import copy


checks = 0
for n in (3, 4):
    pairs = [(i,j) for i in range(n) for j in range(i+1,n)]
    names = [f'{prefix}{i}{j}' for prefix in 'abc' for i,j in pairs]
    names += [f'l{i}' for i in range(n-1)]
    ring = PolynomialRing(ZZ, names)
    gens = ring.gens_dict()
    unit = identity_matrix(ring, n)
    center = matrix(ring, n, n)
    center[0,n-1] = 1

    def general(prefix):
        value = copy(unit)
        for i,j in pairs:
            value[i,j] = gens[f'{prefix}{i}{j}']
        return value

    def cocycle(i, x, y):
        return gens[f'l{i}']*x*y

    def twist(a,b):
        correction = sum(cocycle(i,a[i,i+1],b[i,i+1])
                         for i in range(n-1))
        return a*b + correction*center

    def inverse(a):
        ordinary = copy(unit)
        nilpotent = a-unit
        for k in range(1,n):
            ordinary += (-1)**k * nilpotent**k
        correction = sum(cocycle(i,a[i,i+1],ordinary[i,i+1])
                         for i in range(n-1))
        return ordinary - correction*center

    a,b,c = [general(prefix) for prefix in 'abc']
    assert twist(twist(a,b),c) == twist(a,twist(b,c))
    assert twist(a,unit) == a == twist(unit,a)
    assert twist(a,inverse(a)) == unit == twist(inverse(a),a)
    checks += 3
    # The printed p17 right-hand side a-gamma*e_1n omits the
    # ordinary inverse. It fails even when every cocycle is zero.
    elementary = copy(unit)
    elementary[0,1] = 1
    assert elementary*elementary != unit
    checks += 1
    # Remove the first superdiagonal as in Proposition 1.4.1.
    remainder = copy(unit)
    for i in range(n-1):
        elementary = copy(unit)
        elementary[i,i+1] = -a[i,i+1]
        remainder = twist(remainder,elementary)
    remainder = twist(remainder,a)
    assert all(remainder[i,i+1] == 0 for i in range(n-1))
    epsilon = sum(cocycle(i,-a[i,i+1],a[i,i+1])
                  for i in range(n-1))
    remainder -= epsilon*center
    recovered = copy(unit)
    for i in reversed(range(n-1)):
        elementary = copy(unit)
        elementary[i,i+1] = a[i,i+1]
        recovered = twist(recovered,elementary)
    assert twist(recovered,remainder) == a
    checks += 2

# Printed 4x4 product in the remark following Corollary 1.4.2.
order = [(2,3),(1,2),(0,1),(1,3),(0,2),(0,3)]
value = copy(unit)
for i,j in order:
    elementary = copy(unit)
    elementary[i,j] = gens[f'a{i}{j}']
    value = twist(value,elementary)
expected = copy(a)
expected[0,3] += gens['a01']*gens['a13']
assert value == expected
checks += 1

# The cocycle of UT4/Z depends on the top row and last column, and
# is not pulled back from the first superdiagonal (printed p20).
left, right = identity_matrix(ZZ,4), identity_matrix(ZZ,4)
left[0,2] = 1
right[2,3] = 1
assert [left[i,i+1] for i in range(3)] == [0,0,0]
assert (left*right)[0,3] == 1
assert sum(left[i,i+1]*right[i,i+1] for i in range(3)) == 0
checks += 3
print(f'ok quasi-product: {checks} exact polynomial checks')
