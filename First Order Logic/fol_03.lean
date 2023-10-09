namespace fol_03

variable A : Type
variables P Q : A → Prop

theorem fol_03 : ((∃ x, P x) → (∀ x, Q x)) → ∀ y, P y → Q y :=
assume h1 : ((∃ (x : A), P x) → ∀ (x : A), Q x), show ∀ y, P y → Q y, from
    (assume z, show P z → Q z, from (assume h2 : P z, show Q z, from
        ((h1) (exists.intro z h2)) z
))

end fol_03