namespace prop_18

variables P Q : Prop

theorem prop_18 : ¬ (P ∧ Q) → ¬¬ (¬ P ∨ ¬ Q) :=
assume h1 : ¬ (P ∧ Q), show ¬¬ (¬ P ∨ ¬ Q), from
    (assume h2 : ¬ (¬ P ∨ ¬ Q), show false, from
    (h1 (false.elim
            ((h2) (or.inl
                (assume h3 : P, show false, from
                    ((h2) (or.inr (assume h4 : Q, show false, from
                        ((h1) (and.intro h3 h4)))))))))))

-- end namespace
end prop_18