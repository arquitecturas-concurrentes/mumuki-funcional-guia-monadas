Esta última idea de `bind` es bastante común y es parte fundamental del último patrón funcional que veremos en esta ocasión: la mónada, cuyo typeclass en Haskell es `Monad`.

¿Qué es una mónada? Simple: cualquier functor aplicativo que además provee un método bind, que en Haskell se escribe `>>=`. Además, para una definción completa de la mónada, tal como ocurre con el functor aplicativo, necesitamos un método que nos permita crear un contenedor "puro", que en Haskell se llama `return`.

En resúmen, una mónada provee al menos los siguientes métodos fundamentales:

* `>>=`, de tipo `M a -> (a -> M b) -> M b` (donde M es el tipo de mónada, en este caso Validated)
* `return`, de tipo `a -> M a`

Y los siguientes métodos heredados de `Functor` y `Applicative`, que de hecho se pueden implementar en términos de `return` y `>>=`.

* `<*>`, de tipo `M (a -> b) -> M a -> M b`
* `pure`, de idéntico tipo a `return`
* `fmap`, de tipo `(a -> b) -> M a -> M b`


> Declará una instancia de `Monad Validated`. Recordá que tenés que implementar sólo los métodos `>>=` y `return`. Podés asumir que ya existe `bindValidated` que definimos anteriormente.




