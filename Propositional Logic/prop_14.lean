namespace prop_14

variables A B C : Prop

theorem prop_14 : ((A → C) ∨ (B → C)) → ((A ∧ B) → C) :=
assume h1 : ((A → C) ∨ (B → C)), show (A ∧ B) → C, from (
    assume hab : A ∧ B, show C, from (
        (or.elim (h1)
                 (assume h2 : A → C, show A → C, from h2)
                 (assume h3 : B → C, show A → C, from
                    (assume ha : A, show C, from (h3 (and.right hab)))))
        (and.left hab)))

-- end namespace
end prop_14