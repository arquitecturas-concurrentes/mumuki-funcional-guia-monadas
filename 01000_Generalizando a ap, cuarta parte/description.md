En realidad esta idea de "aplicar" functores contra functores es bastante común, se la conoce como "ap" y en Haskell se escribe `<*>`.

Esto permite escribir de forma infija y más compacta cosas como:

```haskell
>Valid (+4) <*> Doubtful 4 "ups"
Doubtful 8 "ups"

> Valid (*)  <*> Invalid "bar" <*> Doubtful 4 "ups"
Invalid "bar"

> Valid (,,) <*> Valid 3 <*> Valid 0 <*> Doubtful 9 "ups"
Doubtful (3, 0, 9) "ups"
```

Dado que implementar una función `<*>` para algún tipo de dato es algo común, existe la typeclass de los _functores aplicativos_: `Aplicative`.

Un functor aplicativo es simplemente un functor, que se puede combinar mediante `<*>`. Y de igual forma, si se puede definir un `<*>` y `fmap` para un tipo de dato, entonces es un functor aplicativo. (¡Bah, casi, resolvé este ejercicio primero!)

> Hacé a `Validated` instancia de `Applicative`. Vas a tener que definir dos métodos: `<*>` y `pure`, el primero definilo igual a `aplicarValidated`  , y el segundo definilo asi: `pure x = Valid x`. Podés asumir que `aplicarValidated` ya existe

