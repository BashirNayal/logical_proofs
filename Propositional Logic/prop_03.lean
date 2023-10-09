namespace prop_03

variables A B : Prop

theorem prop_3 : ¬ (A ∧ B) → (A → ¬ B) :=
assume hnab : ¬ (A ∧ B), show A → ¬ B, from 
    (assume ha : A, show ¬ B, from 
        (assume hb : B, show false, from 
            hnab
            (and.intro ha hb)))

-- end namespace
end prop_03