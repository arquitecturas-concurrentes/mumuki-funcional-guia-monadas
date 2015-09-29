Si no sabés que probar, te damos algunas expresiones para que jueges:

* `Just 4 >>= \x -> Just (x + 5)`
* `Just 4 >>= \x -> return (x + 5)`
* `Just 5 >>= \x -> return (x + 6) >>= \y -> return (y * 2)`
* `Nothing >>= \x -> return (x + 6) >>= \y -> return (y * 2)`
* `Just 1 >>= inversa >>= \y -> return (y * 2)`
* `Just 0 >>= inversa >>= \y -> return (y * 2)`
* `[4, 5, 6] >>= \x -> [-x, x]`
