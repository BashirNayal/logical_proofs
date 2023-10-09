namespace prop_06

variables A B : Prop

theorem prop_6 : (A -> B) -> (A -> (A /\ B)) :=
assume hab : A → B, show A -> (A /\ B), from 
    (assume ha : A, show A ∧ B, from 
    (and.intro 
        ha
        (hab ha)))

-- end namespace
end prop_06