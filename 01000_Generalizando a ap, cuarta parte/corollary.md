En realidad, un functor aplicativo queda definido por tres métodos:

* `fmap`, heredado de `Functor`
* `<*>`
* `pure`

¿Qué es eso de `pure`? Simple: es un método que toma un valor cualquiera y lo envuelve en un functor, usando el constructor más básico (en nuestro caso Valid) y que represente el caso en que hay un único resultado sin información agregada.

Con lo cual, las expresiones anteriores se pueden escribir así:

```haskell
>pure (+4) <*> Doubtful 4 "ups"
Doubtful 8 "ups"
```

Y como lo más común es que la función esté envuelta con `pure`, el functor aplicativo nos provee una función auxiliar: `<$>`

```haskell
>(+4) <$> Doubtful 4 "ups"
Doubtful 8 "ups"
```

Que si la miran con cuidado... ¡es el mismo `fmap` de siempre, pero infijo!
