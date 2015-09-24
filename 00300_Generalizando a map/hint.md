Por si ya te olvidaste, la definición de `valorMensual` es la siguiente:

```haskell
valorMensual (Valid v) = Valid (v/12)
valorMensual (Doubtful v m) = (Doubtful (v/12) m)
valorMensual (Invalid m) = (Invalid m)
```