namespace fol_09

variable A : Type
variables P Q : A → Prop

theorem fol_09 : ((∀ x, P x → Q x) ∧ (∃ x, P x)) → ∃ x, Q x :=
assume h1, show ∃ x, Q x, from
    (exists.elim (and.right h1) (assume y (h2 : P y),
        show ∃ x, Q x, from
            (have h3 : ∀ x, P x → Q x, from (and.left h1),
             have h4 : P y → Q y, from h3 y,
             have h5 : Q y, from h4 h2,
            (exists.intro y h5))
))

end fol_09