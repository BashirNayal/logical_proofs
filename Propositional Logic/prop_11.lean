namespace prop_11

variables A B : Prop

theorem prop_11 (h : ¬ A) : ¬ (A ∨ B) ∨ (¬ A ∧ B) :=
classical.by_contradiction (assume h1 : ¬ ( ¬ (A ∨ B) ∨ (¬ A ∧ B)), show false, from
    (h1
    (or.inl
        (assume hab : A ∨ B, show false, from 
            (h1
            (or.inr (and.intro h
            (classical.by_contradiction (assume hnb : ¬ B, show false, from
                (or.elim hab 
                (assume ha : A, show false, from (h ha))
                (assume hb : B, show false, from (hnb hb))))))))))))

-- end namespace
end prop_11