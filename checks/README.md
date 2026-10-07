# Mathematical checks

`just check-lean` compiles the four declarations in
`checks/lean-proofs.json`, checks their passage labels, and audits their
axioms. The proof treats the central extension construction of §1.2
with a trivial action. Its assumptions and limits are stated in the file.
The pinned toolchain and mathlib revision are specified in `checks/lean`.
A prebuilt matching mathlib checkout can be selected with `LEAN_MATHLIB`.

`just check-sage` checks multiplication, associativity, the inverse,
first-superdiagonal decomposition and the printed 4×4 product over
integer polynomial rings for degrees 3 and 4 and the family of symmetric
cocycles g_i(x,y)=lambda_i*x*y. It also verifies the counterexample
UT4(Z), t13(1), t34(1), to the intermediate cocycle pullback on p.20.
These checks cover precisely the stated polynomial identities and
counterexample; they do not formalize the article's classification results.

`just check` also verifies source references, statement numbering,
editor navigation, bibliography data propagation and mention backlinks,
licensed fonts, glyphs, PDF destinations, page labels and page geometry.
