namespace prop_19

variables A B : Prop

theorem prop_19 : (¬ ¬ A ∧ ¬ ¬ (A → B)) → ¬ ¬ B :=
assume h1 : (¬ ¬ A ∧ ¬ ¬ (A → B)), show ¬ ¬ B, from
(assume hnb : ¬ B, show false, from 
    (hnb
    (classical.by_contradiction (assume hnab : ¬ (A → B), show false, from
        (and.right h1 hnab))

((classical.by_contradiction (assume hna : ¬ A, show false, from and.left h1 hna))))))

-- end namespace
end prop_19