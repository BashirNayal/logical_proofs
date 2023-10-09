namespace prop_10

variables A B : Prop

theorem prop_10 : ¬ (A ∨ ¬ B) ∨ (¬ A ∧ ¬ B) → ¬ A :=
assume h1 :  ¬ (A ∨ ¬ B) ∨ (¬ A ∧ ¬ B), show ¬ A, from
    (assume ha : A, show false, from
        or.elim
            h1
            (assume hnanb :  ¬(A ∨ ¬B), show false, from 
                hnanb (or.inl ha))
            (assume hna_and_nb : (¬ A ∧ ¬ B), show false, from
                (and.left hna_and_nb ha)))

-- end namespace
end prop_10