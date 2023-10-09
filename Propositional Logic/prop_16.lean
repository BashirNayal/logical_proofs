namespace prop_16

variables A B : Prop

theorem prop_16 : ((¬ A → B) ∧ (¬ A → ¬ B)) → A :=
assume h1 : (¬ A → B) ∧ (¬ A → ¬ B), show A, from 
    (classical.by_contradiction (assume hna : ¬ A, show false, from
        (((and.right h1) (hna)) ((and.left h1) (hna)))))

-- end namespace
end prop_16