namespace prop_17

variables A B : Prop

theorem prop_17 : ¬ (¬ A ∧ ¬ B) → (A ∨ B) :=
assume hnnab : ¬ (¬ A ∧ ¬ B), show A ∨ B, from classical.by_contradiction
    (assume hnab : ¬ (A ∨ B), show false, from hnab
        (false.elim
            (or.elim (or.inl (classical.by_contradiction
                (assume hna : ¬ A, show false, from 
                    (hnab (or.inr (classical.by_contradiction (assume hnb : ¬ B, show false, from
                        (hnnab (and.intro hna hnb)))))))))

          (assume ha : A, show false, from
            (false.elim (hnab (or.inl ha))))

         (assume hb : B, show false, from
            (false.elim (hnab (or.inr hb)))))))

-- end namespace
end prop_17