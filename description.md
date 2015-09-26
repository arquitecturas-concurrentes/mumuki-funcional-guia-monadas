Cuando en funcional creamos tipos de datos propios, es muy común que sus operaciones cumplan ciertos patrones. Por ejemplo, tanto las listas, como los Maybe, puede ser mapeados.

Entender los patrones que siguen estos tipos de datos es útil porque nos ayuda a

* entender y seperar mejor las ideas que están detrás de los mismos
* escribir código más genérico y reusable, al aprovechar el polimorfismo de _typeclasses_, que es bastante diferente del polimorfismo ad-hoc del paradigma de objetos.
* comprender código escrito utilizando estas abstracciones genéricas

Además, los patrones funcionales son más rigurosos que por ejemplo los patrones de objetos, dado que no sólo nos proveen
* una terminlogía
* una forma estándar de resolver problemas comunes

Sino también leyes que se deben cumplir para asegurar que que tu tipo de dato está implementado de forma consistente.

En esta guía vamos a presentarte tres patrones funcionales comunes y sus leyes: functores, functores aplicativos, y mónadas.
