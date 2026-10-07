import Mathlib.Algebra.Group.Prod
import Mathlib.Tactic.Abel

/-!
Belegradek, §1.2: a normalized 2-cocycle with trivial action defines
a central extension. This file verifies associativity and the unit,
and the coboundary identity for an arbitrary multiplicative group B.
It does not formalize the classification of extensions or the whole
quasi-unitriangular representation theorem.
-/
namespace Belegradek

variable {A B : Type*} [AddCommGroup A] [Group B]

def extensionMul (g : B → B → A) (x y : A × B) : A × B :=
  (x.1 + y.1 + g x.2 y.2, x.2 * y.2)

theorem extensionMul_assoc (g : B → B → A)
    (cocycle : ∀ x y z, g x y + g (x*y) z = g y z + g x (y*z))
    (x y z : A × B) :
    extensionMul g (extensionMul g x y) z =
      extensionMul g x (extensionMul g y z) := by
  apply Prod.ext
  · change (x.1 + y.1 + g x.2 y.2) + z.1 + g (x.2*y.2) z.2 =
        x.1 + (y.1 + z.1 + g y.2 z.2) + g x.2 (y.2*z.2)
    calc
      _ = (x.1 + y.1 + z.1) + (g x.2 y.2 + g (x.2*y.2) z.2) := by abel
      _ = (x.1 + y.1 + z.1) + (g y.2 z.2 + g x.2 (y.2*z.2)) := by
        rw [cocycle]
      _ = _ := by abel
  · exact mul_assoc x.2 y.2 z.2

theorem extensionMul_unit (g : B → B → A)
    (right_zero : ∀ x, g x 1 = 0) (left_zero : ∀ x, g 1 x = 0)
    (x : A × B) :
    extensionMul g x (0, 1) = x ∧ extensionMul g (0, 1) x = x := by
  constructor <;> apply Prod.ext <;>
    simp [extensionMul, right_zero, left_zero]

def coboundary (q : B → A) (x y : B) : A := q x + q y - q (x*y)

theorem coboundary_cocycle (q : B → A) (x y z : B) :
    coboundary q x y + coboundary q (x*y) z =
      coboundary q y z + coboundary q x (y*z) := by
  simp only [coboundary, mul_assoc]
  abel

theorem coboundary_normalized (q : B → A) (normalized : q 1 = 0)
    (x : B) : coboundary q x 1 = 0 ∧ coboundary q 1 x = 0 := by
  simp [coboundary, normalized]

#print axioms extensionMul_assoc
#print axioms extensionMul_unit
#print axioms coboundary_cocycle
#print axioms coboundary_normalized

end Belegradek
