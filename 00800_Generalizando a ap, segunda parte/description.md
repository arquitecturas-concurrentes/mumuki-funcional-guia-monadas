¿Y si ahora queremos implementar combinar no a dos, sino a tres valores validados? ¿Y si son cuatro?

Si bien plantear funciones `aplicarTernarioValidated`, `aplicarCuaternarioValidated`, etc. podría funcionar, intuitivamente será una tarea tediosa y propensa a error. Así que vamos a generalizar esta idea.

Y para eso vamos a introducir `aplicarValidated`. Si bien tendrá una logica de combinación similar a `aplicarBinarioValidated`, en lugar de tomar una función y dos `Validated`, tendra el siguiente tipo:

```haskell
aplicarValidated :: Validated (a -> b) -> Validated a -> Validated b
```

Ejemplos:

```
> aplicarValidated (Valid even) (Valid 4)
Valid True

> aplicarValidated (Doubtful succ "ojo") (Valid 4)
Doubtful 5 "ojo"
```

> Desarrollar la función `aplicarValidated`