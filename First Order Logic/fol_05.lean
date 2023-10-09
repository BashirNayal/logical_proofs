namespace fol_05

variable A : Type
variables P Q : A → Prop

theorem fol_05 : (∃ x, P x ∨ Q x) → (∀ x, ¬ Q x) → ∃ y, P y :=
assume h1 , show (∀ x, ¬ Q x) → ∃ y, P y, from (assume h2, show ∃ y, P y, from exists.elim h1 
    (assume z (h3 : P z ∨ Q z), show ∃ y, P y, from
       exists.intro z (or.elim h3 (assume h4 : P z, show P z, from h4)
            (assume h5 :  Q z, show P z, from (false.elim ((h2 z) h5))))))

end fol_05