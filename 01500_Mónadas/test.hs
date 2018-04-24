describe "Monad Validated" $ do

  it "(Valid 4) >>= (validarIguales 4) == Valid 4"  $ do
    ((Valid 4) >>= (validarIguales 4)) `shouldBe` Valid 4

  it "(Valid 9) >>= (validarIguales 4) == Invalid \"4 /= 9\""  $ do
    ((Valid 9) >>= (validarIguales 4)) `shouldBe` Invalid "4 /= 9"

  it "(Invalid \"ups\") >>= (validarIguales 4) == Invalid \"ups\""  $ do
    (Invalid "ups" >>= (validarIguales 4)) `shouldBe` Invalid "ups"
