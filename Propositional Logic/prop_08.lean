namespace prop_08

variable P : Prop

theorem prop_8 : ¬ ¬ ¬ P → ¬ P :=
assume hnnnp : ¬ ¬ ¬ P, show ¬ P, from
    (assume hp : P, show false, from
        hnnnp
        (assume hnp : ¬ P, show false, from
            (hnp hp)))

-- end namespace
end prop_08