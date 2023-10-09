namespace prop_15

variables A B C : Prop

open classical

theorem prop_15 : ((A ∧ B) → C) → ((A → C) ∨ (B → C)) :=
assume h : (A ∧ B) → C,
(by_contradiction
    (assume h1 : ¬ ((A → C) ∨ (B → C)), show false, from
    (h1
    (or.inl
        (assume ha : A, show C, from
            false.elim
            (h1 (or.inr
                (assume hb : B, show C, from
                    (h
                    (and.intro ha hb))))))))))

-- end namespace
end prop_15