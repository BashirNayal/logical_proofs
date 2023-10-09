namespace fol_07

variable A : Type
variable R : A → A → Prop

variable hxy : ∀ x y, R x y ∨ R y x
include hxy

theorem fol_07 : ∀ x, R x x :=
assume a ,
have h1 : R a a ∨ R a a, from hxy a a,
show R a a, from or.elim h1 (assume h2 : R a a, h2) (assume h3 : R a a, h3)

end fol_07