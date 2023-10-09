namespace fol_08

variable A : Type
variable f : A → A
variable P : A → Prop

variable  h : ∀ x, P x → P (f x)
include h

theorem fol_08 : ∀ y, P y → P (f (f y)) :=
assume z, show P z → P (f (f z)), from (assume h1,
    have h2 : P (f (z)), from ((h z) h1),
    show P (f (f z)), from
    (h (f z) h2))

end fol_08

