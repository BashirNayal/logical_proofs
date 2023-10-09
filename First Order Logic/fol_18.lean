namespace fol_18

variable U : Type
variables P Q : U → Prop
variable c : U

theorem fol_18 (h : ∃ x, P x ∧ Q x ∧ ∀ y, P y → x = y) : P c → Q c :=

assume h1, exists.elim h (assume g (h2 : P g ∧ (Q g ∧ ∀ y, P y → g = y)),
    have h3 : Q g ∧ ∀ y, P y → g = y, from and.right h2,
    have h4 : ∀ y, P y → g = y, from and.right h3,
    have h5 : Q g, from and.left h3,
    have h6 : c = g, from eq.symm ((h4 c) h1),
    have h7 : g = c, from eq.symm h6,
    eq.subst h7 h5)


end fol_18

