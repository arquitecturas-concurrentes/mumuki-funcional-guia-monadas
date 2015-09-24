Ahora queremos realizar algunas operaciones simples sobre los valores validados. La primera de ellas es, dado un ingreso anual, obtener el ingreso mensual. Por ejemplo:

```haskell
> valorMensual (Valid 12000)
Valid 1000

> valorMensual (Invalid "quebró")
Invalid "quebró"

> valorMensual (Doubtful 24 "enero está mal cargado")
(Doubtful 2 "enero está mal cargado")
```

> implementá la función `valorMensual`