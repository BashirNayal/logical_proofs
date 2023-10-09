namespace prop_04

variables A B C D : Prop

theorem prop_4 (h1 : A ∨ B) (h2 : A → C) (h3 : B → D) : C ∨ D :=
or.elim h1 
    (assume ha : A, show C ∨ D, from
        (or.inl (h2 ha)))
    (assume hb : B, show C ∨ D, from 
        (or.inr (h3 hb)))

-- end namespace
end prop_04