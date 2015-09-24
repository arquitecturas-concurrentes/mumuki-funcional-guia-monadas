Ahora nos pidieron otra operación: que dado un código en la bolsa de una empresa, averiguemos su longitud (la cual la usaremos en validaciones posteriores).

Por ejemplo:

```haskell
longitudTicker (Valid "AAPL")
Valid 4
```

El problema es que esta lógica de modificar el valor contenido de un `Validated` ya la implementamos con valorMensual, y no queremos repetir lógica.

> Desarrollá la función `mapValidated` que generalice la idea anterior. Además, desarrollá `valorMensual` (nuevamente) y `longitudTicker`, usando `mapValidated`
