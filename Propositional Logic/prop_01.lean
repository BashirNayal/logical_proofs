namespace prop_01

variables A B : Prop

theorem prop_1 : A ∧ (A → B) → B :=
assume haab : A ∧ (A → B), show B, from
    ((and.right haab) (and.left haab))

-- end namespace
end prop_01
