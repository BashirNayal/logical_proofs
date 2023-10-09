namespace fol_02

variable A : Type
variables P Q : A → Prop

theorem fol_02 : ¬ (∀ x, P x ∨ Q x) → ¬ (∀ x, P x) := assume h1 : ¬ (∀ x, P x ∨ Q x), show ¬ (∀ x, P x), from 
    (assume h2 : ∀ x, P x, show false, from 
        (h1 (assume y, show P y ∨ Q y, from (or.inl (h2 y)))))

end fol_02

