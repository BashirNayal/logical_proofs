namespace fol_11
open classical   -- not needed, but you can use it

-- This is an exercise from Chapter 4. Use it as an axiom here.
axiom not_iff_not_self (P : Prop) : ¬ (P ↔ ¬ P)

-- For example:
example (Q : Prop) : ¬ (Q ↔ ¬ Q) :=
not_iff_not_self Q

section
  variable Person : Type
  variable shaves : Person → Person → Prop
  variable barber : Person
  variable h : ∀ x, shaves barber x ↔ ¬ shaves x x
include h
variable x : Person

  -- Show the following:
  theorem fol_11 : false :=
    false.elim ((not_iff_not_self (shaves barber barber)) (h barber))



end

#check fol_11

end fol_11








