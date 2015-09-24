* Recordar que para implementar fácilmente las funciones de comparación y conversión a String, se puede utilizar `deriving`:

```haskell
data MiData = .... deriving (Eq, Show)
```

* La idea de un valor validados es bastante genérica: si bien los mensajes de error de los valores dudosos e inválidos siempre es un string, el valor contenido en un valido o un dudoso puede ser de cualquier tipo.