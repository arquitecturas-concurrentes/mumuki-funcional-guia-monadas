Bien hecho.

Ahora observá lo siguiente: aprovechando que `>>=` es una funcíon infija, si hacemos que `Validated` sea instancia de `Monad` podemos escribir entonces, `validarIgualesValidated` de la siguiente forma:

```haskell
validarIgualesValidated :: Validated a -> Validated a -> Validated a
validarIgualesValidated x y = x >>= \vx -> y >>= \vy -> validarIguales vx vy
```

Eso nos permite extraer el valor del primer Validated `x`, luego el de `y`, compararlos y finamente hacer aplicar `aplicarValidated`. ¿Simple no?
