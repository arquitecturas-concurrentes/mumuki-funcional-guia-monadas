Supongamos que tenemos un proceso estilo ETL, que nos arroja datos, con un cierto grado de confianza en los mismos.

Por ejemplo, la aplicación nos puede decir:
* que el patrimonio de la empresa asquelCorp es seguridad 2.000.000 USD.
* que la empresa noditoInc tiene 45 empleados, pero es dudoso, porque en el último trimestre contrataron más empelados
* que el código en la bolsa de la empresa jemaRoja es inválido, por un escándalo reciente que la obligó a salir de ella.

Entonces queremos poder decir expresar de la siguiente forma:

```haskell
patrimonioAsquelCorp = Valid 2000000
empleadosNoditoInc = Doubtful 45 "contratron mas gente"
tickerJemaRoja = Invalid "no está mas en la bola"
```

> Declará un tipo de dato algebraico `Validated` que permita crear representar la información de esta forma. Asegurarse de que se pueda mostrar y comparar.

