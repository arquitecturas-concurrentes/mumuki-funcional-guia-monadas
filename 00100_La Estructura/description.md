Supongamos que tenemos un proceso estilo [ETL](https://es.wikipedia.org/wiki/Extract,_transform_and_load), que nos arroja datos, con un cierto grado de confianza en los mismos.

Por ejemplo, la aplicación nos puede decir:

* que el patrimonio de la empresa asquelCorp es con seguridad 2.000.000 USD.
* que la empresa noditoInc tiene 45 empleados, pero es dudoso, porque en el último trimestre contrataron más empleados
* que el código en la bolsa de la empresa jemaRoja es inválido, por un escándalo reciente que la obligó a salir de ella.

Entonces queremos poder expresar de la siguiente forma:

```haskell
patrimonioAsquelCorp = Valid 2000000
empleadosNoditoInc = Doubtful 45 "contratron mas gente"
tickerJemaRoja = Invalid "no está mas en la bolsa"
```

> Declará un tipo de dato algebraico `Validated` que permita representar la información de esta forma. Asegurate de que se pueda mostrar y comparar.

