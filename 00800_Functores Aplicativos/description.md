¿Y si ahora queremos implementar combinar no a dos, sino a tres valores validados? ¿Y si son cuatro?

Si bien plantear funciones `aplicarTernarioValidated`, `aplicarCuaternarioValidated`, etc. podría funcionar, intuitivamente será una tarea tediosa y propensa a error.

Así que acá introduciremos una nueva idea. Primero, recordemos que, por currificación, `(+) 2 3` es equivalente a `((+ 2) 3)`. Y esto nos permite modelar funciones de N parámetros, sólo utilizando funciones de un parámetro.

Es decir, si aplicamos (+2) con 3, obtendremos lo mismo que si hicieramos 2 + 3.

El paso de magia viene acá: en lugar de hacer

(+2) 3

hagamos

(Valid (+2)) <*> (Valid 3)


(liftA2 (+)) (Valid 2) (Valid 3)

¿Si podemos currificar No podemos hacer lo mismo con nuestros valores validados?


(Valid (+2)) (Valid 3)


podríamos intentar "currificar" nuestro Validated:

```haskell
