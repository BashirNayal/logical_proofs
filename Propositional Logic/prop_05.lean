namespace prop_05

variables A B : Prop

theorem prop_5 : (¬ A ∧ ¬ B) → ¬ (A ∨ B) :=
assume hnanb : (¬ A ∧ ¬ B), show ¬ (A ∨ B), from 
    (assume hab : A ∨ B, show false, from 
        or.elim hab
            (assume ha : A, show false, from 
                ((and.left hnanb) ha))
            (assume hb: B, show false, from
                ((and.right hnanb) hb)))

-- end namespace
end prop_05