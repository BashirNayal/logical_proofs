namespace fol_06

variable A : Type
variables P Q : A → Prop

variable h : ¬ ∃ x, P x ∨ Q x
include h
theorem fol_06 : ∀ x, ¬ P x ∧ ¬ Q x :=
assume y, show ¬ P y ∧ ¬ Q y, from
    (and.intro (assume h1,
                have h2 : ¬ P y,
                from (false.elim (h
                    (exists.intro y
                        (or.inl h1)))),
                show false, from h2 h1)

                (assume h3,
                 have h4 : ¬ Q y,
                 from (false.elim (h
                     (exists.intro y
                         (or.inr h3)))),
                show false, from h4 h3))

end fol_06