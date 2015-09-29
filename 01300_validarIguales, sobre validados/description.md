¿Y si quisieramos aplicar `validarIguales`, pero sobre valores validados? ¿No tienen derecho, acaso, los `Validated`s a ser validados también?

Sí, sí, definitivamente: si los dos valores fueran válidos, simplemente aplicaríamos la `validarIguales`. Y de forma análoga a `<*>`:

* si alguno de los dos fuera inválido, el resultado sería inválido
* si no, si alguno de los dos fuera dudoso, el resultado sería dudoso

Por ejemplo:

```haskell
> validarIgualesValidated (Valid 4) (Valid 5)
Invalid "4 /= 5"

> validarIgualesValidated (Valid 4) (Doubtful 4 "capaz es 5")
Doubtful 4 "capaz es 5"

> validarIgualesValidated (Invalid "sin datos") (Valid 4)
Invalid "sin datos"
```

> Implementá `validarIgualesValidated`, usando `validarIguales`
