Moraleja: ¿cuando hay que usar el `<*>`? ¡Cuando realmente es necesario!

Mientras podamos, escribamos código puro que no sepa nada de functores y functores aplicativos. Y sólo cuando tengamos que combinarlos, recurriremos a las funciones `fmap`, `<*>`, etc.

Con esto, nuestro sistema quedará divido en dos partes: el código puro, fácil de escribir y mantener, y el código de combinación (_glue code_) que opera con los valores en el dominio de las validaciones

