A decir verdad la idea de mapear es bastante genérica, y está muy asociada al concepto de contenedor: si tengo un contenedor, no importa cómo sea este o qué contenga, siempre puedo crear un contenedor nuevo que cambie el valor contenido.

El nombre técnico para contenedor es _functor_: si algo es _"mapeable"_, entonces es un functor, y si es un functor, es mapeable.

Como esta idea es tan común, existe una _typeclass_ que la formaliza: `Functor`. Los tipos que la implementen proveen una función `fmap` que es simplemente la generalización de `map`.

Por ejemplo:

```haskell
fmap (+5) [4, 5, 0]
[9, 10, 5]
```

> ¿No te convenciste? Probá en la consola usar la función `fmap` contra algunos functores fáciles: _maybe_'s, listas y _either_'s. Y después seguinos al siguiente ejercicio.



