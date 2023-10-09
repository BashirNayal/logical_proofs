namespace fol_15_16

/-
The following exercise shows that in the presence of reflexivity, the rules for symmetry and transitivity are equivalent to a single rule.
-/

theorem foo {A : Type} {a b c : A} : a = b → c = b → a = c :=
assume h1, assume h2, eq.trans h1 (eq.symm h2)

-- notice that you can now use foo as a rule. The curly braces mean that
-- you do not have to give A, a, b, or c. For example:

section
  variable A : Type
  variables a b c : A

  example (h1 : a = b) (h2 : c = b) : a = c :=
  foo h1 h2
end

section

  variable {A : Type}
  variables {a b c : A}

  -- replace the sorry with a proof, using foo and rfl, without using eq.symm.
  theorem fol_15 (h : b = a) : a = b :=
    foo (refl a) h

  -- now use foo and fol_15 to prove transitivity
  theorem fol_16 (h1 : a = b) (h2 : b = c) : a = c :=
      foo h1 (fol_15 h2)

end



end fol_15_16