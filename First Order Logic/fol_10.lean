namespace fol_10

variable A : Prop
variables P Q : A → Prop

theorem fol_10 : ((∃ x, P x ∨ Q x) ∧ (¬ ∃ x, P x)) → ¬ ∀ x, (Q x → P x) :=
assume h1 : ((∃ x, P x ∨ Q x) ∧ (¬ ∃ x, P x)), show  ¬ ∀ x, (Q x → P x), from assume h2 : ∀ x, (Q x -> P x), ((and.right h1) 
    (exists.elim (and.left h1) (assume y (h3 : P y ∨ Q y), show ∃ x, P x, from
        (or.elim h3 (assume h3 : P y, show ∃ x, P x, from exists.intro y h3)
                    (assume h4 : Q y, show ∃ x , P x, from
                        (exists.intro y (h2 y h4))))
    ))
)

end fol_10
