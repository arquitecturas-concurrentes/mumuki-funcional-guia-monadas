Por las dudas, te recordamos cómo era código único:

```haskell
codigoUnico (Invalid m) _                 = Invalid m
codigoUnico _              (Invalid m)    = Invalid m
codigoUnico (Valid t)      (Valid c)      = Valid (t ++ c)
codigoUnico (Valid t)      (Doubtful c m) = Doubtful (t ++ c) m
codigoUnico (Doubtful t m) (Valid c)      = Doubtful (t ++ c) m
codigoUnico (Doubtful t m) (Doubtful c _) = Doubtful (t ++ c) m
```
