Ahora haremos un paso de magia. :tophat:

Primero, recordemos que, por currificación, `(+) 2 3` es equivalente a `((+ 2) 3)`. Y esto nos permite modelar funciones de N parámetros, sólo utilizando funciones de un parámetro.

Es decir, si aplicamos (+2) con 3, obtendremos lo mismo que si hicieramos 2 + 3. ¿Y que me decís de esto?

```haskell
aplicarValidated (aplicarValidated (Valid (+)) (Valid 2)) (Valid 3)
```

Puede verse un poco extraño, pero lo que estamos haciendo es aplicar `Valid (+)` contra `Valid 2`, y al resultado, lo aplicamos contra `Valid 3`. Y, como por currificación `(+)` aplicado a `2`, da `(+2)`, esto significa que toda la expresión es equivalente

```haskell
aplicarValidated (Valid (+2)) (Valid 3)
```

¡Lo cual tiene bastante sentido! ¡La currificación tiene sentido también para `aplicarValidated`!

Moraleja: Si queremos hacer cualquier operación que combine dos o más valores validados, sólo tenemos que envolver la operación en un `Valid`, y usar `aplicarValidated` reiteradas veces.

> ¿No te convencimos? Probá en la consola `aplicarValidated`: hacé cuentas como sumas, multiplicaciones, etc. Después seguinos.