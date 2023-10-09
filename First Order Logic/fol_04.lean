namespace fol_04

variable A : Type
variable R : A → A → Prop

theorem fol_04 : (∃ x, ¬ R x x) → (∃ x, ∃ y, ¬ R x y) :=
assume h1,
show (∃ x, ∃ y, ¬ R x y),
from exists.elim
    h1
    (assume z (h2 : ¬R z z),
    show ∃ x y, ¬ R x y,
    from exists.intro
        z
        (exists.intro z h2))

end fol_04

