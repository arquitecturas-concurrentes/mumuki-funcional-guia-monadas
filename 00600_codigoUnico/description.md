Seguimos procesando información de nuestro ETL. Y ahora nos encontramos con que éste, para una empresa nos provee dos datos identificatorios: ticker y cusip.

En nuestra aplicación, para identificar a una empresa de forma unívoca en el tiempo, vamos a usar un codigo único de la forma `ticker:cusip`

Para eso, implementaremos una función `codigoUnico`, de tipo `Validated String -> Validated String -> Validated String`, que genere este código. Ejemplos:

```haskell
> codigoUnico (Valid "INTC") (Valid "458140100")
Valid "INTC:458140100"

> codigoUnico (Doubtful "INTD" "la D podria ser una C") (Doubtful "458140100" "estaba cansado")
Doubtful "INTD:458140100" "la D podria ser una C"

> codigoUnico (Valid "INTC") (Invalid "cusip ilegible")
Invalid "cusip ilegible"
```

> Implementar `codigoUnico`. Notar que en caso de que los dos valores sean dudosos, queda el mensaje del primer valor. De forma análoga, si los dos son inválidos, queda el primer mensaje.
