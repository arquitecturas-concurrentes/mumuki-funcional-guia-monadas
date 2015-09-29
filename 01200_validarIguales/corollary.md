Hasta ahora nos veníamos enfoncando en dos tipos de problemas

* transformar un valor validado en otro (interfaz de functores) utilizando una función pura
* combinar dos o más valores validados utilizando una función pura (interfaz de functores aplicativos)

Pero al introducir `validarIguales` (que opera sobre valores **puros**) entraremos en un nuevo terreno: el de combinar valores **validados** usando funciones que no son puras, entendiendo por puro acá a funciones que devuelven valores validados.

Esta idea nos lleva a una nueva interfaz y patrón funcional: mónada.
