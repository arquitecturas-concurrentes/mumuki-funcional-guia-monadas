En lugar de crear a mano nuestro propio `validarIgualesValidated`, que sólo sirve para elevar  `validarIguales` al dominio de los `Validated`, podemos hacerlo mucho mejor: generalizarlo para que podamos utilizarlo con cualquier función similar a ésta.

Para ello, haremos una transformación similar a cuando generalizaste `<*>`.

1. Haremos que sirva para cualquier función que devuelva un `Validated`, pasandola por parámetro en lugar de _harcodearla_
2. Haremos que sólo sirva para funciones de un argumento. Luego veremos que extender la idea a mas argumentos es trivial.

¿El nombre que le daremos a esta función genérica? `bindValidated`, cuyo tipo será `Validated a -> (a -> Validated b) -> Validated b`. Ejemplos:

```haskell
> bindValidated (Valid 4) (validarIguales 4)
Valid 4

> bindValidated (Valid 9) (validarIguales 4)
Invalid "4 /= 9"

> bindValidated (Invalid "ups") (validarIguales 4)
Invalid "ups"
```

> Implementá `bindValidated`. La lógica de combinación es la misma que en `validarIgualesValidated`.