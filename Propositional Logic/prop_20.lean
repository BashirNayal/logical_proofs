namespace prop_20

variables P Q : Prop

theorem prop_20 : ¬ ¬ (P ∧ Q) → ¬ ¬ Q :=
assume hnnpq : ¬ ¬ (P ∧ Q), show ¬ ¬ Q, from
(assume hnq : ¬ Q, show false, from
    (hnq (and.right (classical.by_contradiction (assume hnpq : ¬ (P ∧ Q), show false, from         (hnnpq hnpq))))))

-- end namespace
end prop_20