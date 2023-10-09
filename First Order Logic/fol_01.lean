namespace fol_01

variable A : Type
variable R : A → A → Prop

theorem fol_01 : (∀ x y, R x y) → (∀ x, R x x) :=
assume h1 : ∀ x y, R x y, show ∀ x, R x x, from
    (assume z, show R z z, from (h1 z z))
end fol_01
