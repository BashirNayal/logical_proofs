namespace fol_20

variable U : Type
variable R : U → U → Prop

theorem fol_20 : (∀ x y, R x y → R y x) → (∀ x y z, (R x y ∧ R y z) → R x z) →
  (∀ x y, R x y → R x x) :=
assume h1 : (∀ x y, R x y → R y x),
assume h2 : (∀ x y z, (R x y ∧ R y z) → R x z), assume a b,
assume h3, ((h2 a b a) (and.intro h3 ((h1 a b) h3)))

end fol_20