Ahora que nuestro Validated es tanto un functor como un functor aplicativo, podemos escribir código más genérico, y que además, utilice herramientas estándar.  Eso es bueno :thumb_up:.

Pero aún podemos hacerlo mejor. Se incorpora otro requermiento: calcular un coeficiente `h` que tiene la siguiente fórmula:

```
x + y / z
```

(sí, los tipos que nos presentaron el modelo son matemáticos, y aún no tenemos buenos nombres).

El tema es que nuestros `x`, `y` y `z` son valores validados, así que hay que convertir este cálculo. Primero lo reescribimos de forma infija:

```haskell
(/) ((+) x y) z
```

Y luego, introducimos convenientemente `<*>` y `<$>`

```haskell
(/) <$> ((+) <$> x <*> y) <*> z
```

Creo que estarás deacuerdo con nosotros en que un código trivial se volvió ilegible. ¿La solución? Simple: extraer el cálculo puro

```haskell
c x y z = x + y / z
```

y sólo **elevarlo** al dominio de los functores aplicativos (o en inglés _lift_):

```haskell
> c <$> (Valid 5) <*> (Valid 8) <*> (Doubfufl 9 "hmm")
```

> Ahora te toca a vos: definí `codigoUnico`  pero esta vez como una función "pura" de tipo `String -> String -> String`