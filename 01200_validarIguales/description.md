Y finalmente llegó el gran día en que ya no solamente transformaremos y combinarmos valores ya validados, sino en el que necesitamos...¡escribir funciones que validan!

La primera que nos pidieron es validar que dos valores (puros, no validados), sean iguales: si lo son, devolveremos el primero de ellos como válido. En caso contrario, devolveremos inválido. Ejemplo:

```haskell
> validarIguales 4 4
Valid 4

> validarIguales 4 5
Invalid "4 /= 5"
```

> Implementá `validarIguales`
