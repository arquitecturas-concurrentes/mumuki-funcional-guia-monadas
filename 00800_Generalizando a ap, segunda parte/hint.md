Por si no te acordás, la función `aplicarBinarioValidated` debería verse aproximadamente así:

```haskell
aplicarBinarioValidated f (Invalid m) _                 = Invalid m
aplicarBinarioValidated f _              (Invalid m)    = Invalid m
aplicarBinarioValidated f (Valid t)      (Valid c)      = Valid (f t c)
aplicarBinarioValidated f (Valid t)      (Doubtful c m) = Doubtful (f t c) m
aplicarBinarioValidated f (Doubtful t m) (Valid c)      = Doubtful (f t c) m
aplicarBinarioValidated f (Doubtful t m) (Doubtful c _) = Doubtful (f t c) m
```