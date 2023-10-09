namespace fol_19

variable U : Type
variable f : U → U → U
variable P : U → Prop

theorem fol_19 : (∀ x, P (f x x)) → (∀ x, ∃ y, P (f x y)) :=
assume h1, assume z, exists.intro z (h1 z)

end fol_19