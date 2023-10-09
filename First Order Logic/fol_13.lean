namespace fol_13

variable A : Type
variable P : A → Prop
variable c : A
include c

theorem fol_13 : (∀ x y, P x ∨ P y) → ∃ x, P x :=
assume h1, exists.intro c (or.elim (h1 c c) (assume h2 : P c, show P c, from h2) (assume h3 : P c, show P c, from h3))

end fol_13