namespace prop_07

variable P : Prop

theorem prop_7 : P → ¬ ¬ P :=
assume hp : P, show ¬ ¬ P, from 
    (assume hnp : ¬ P, show false, from hnp hp)

-- end namespace
end prop_07