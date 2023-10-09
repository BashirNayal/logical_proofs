namespace fol_12

variable A : Type
variable P : A → Prop
variable R : A → A → Prop

theorem fol_12 : (∀ y, P y → (∀ x, R x y)) → (∃ y, P y) → (∃ z, ∀ x, R x z) :=
assume h1,
assume h2,
exists.elim h2 (assume a (h3 : P a),
have h4 : ∀ x, R x a, from  (h1 a) h3,
exists.intro a h4)
end fol_12