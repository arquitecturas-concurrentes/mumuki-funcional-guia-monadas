Pheeew, costó implementar `codigoUnico`, ¿no?. Probablemente no queramos volver a desarrollar alguna operación binaria entre `Validated`s desde cero. :astonished::gun:

Así que antes de continuar, la vamos a generalizar: `aplicarBinarioValidated`. Esta será una función que tome una operación binaria, y dos valores validados, y los combine.

Ejemplo:

```haskell
> aplicarBinarioValidated (+) (Valid 4) (Doubtful 5 "X deberia ser par" )
Doubtful 9 "X deberia ser par"
```

> Implementá `aplicarBinarioValidated` y reimplementá `codigoUnico` usando esta función.



