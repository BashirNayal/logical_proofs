namespace prop_12

variables A B C : Prop

theorem prop_12 : (A → (B → C)) → ((B ∧ ¬ C) → ¬ A) :=
assume habc : A → (B → C), show B ∧ ¬C → ¬A, from
    (assume hbnc : B ∧ ¬ C, show ¬ A, from
        (assume ha : A, show false, from
            (and.right hbnc
            ((habc ha) (and.left hbnc)))))

-- end namespace
end prop_12