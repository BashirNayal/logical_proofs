namespace prop_09

variables X Y : Prop

theorem prop_9 (h : X ∨ Y) (h2 : ¬ X) : Y :=

or.elim h
(assume hx : X, false.elim (h2 hx))
(assume hy : Y, hy)
-- end namespace
end prop_09
