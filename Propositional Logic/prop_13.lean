namespace prop_13

variables A B C : Prop

theorem prop_13 : (A → (B → C)) → ((A ∧ B) → C) :=
assume habc : (A → (B → C)), assume hab : A ∧ B, 
    ((habc (and.left hab))
    (and.right hab))

-- end namespace
end prop_13