namespace prop_02

variables A B : Prop

theorem prop_2 : A → ¬ (¬ A ∧ B) :=
assume ha : A, show (¬ (¬ A ∧ B)), from
    (assume hnab : ¬ A ∧ B, show false , from
    (and.left hnab ha))


-- end namespace
end prop_02