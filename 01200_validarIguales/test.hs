describe "validarIguales" $ do
  it "validarIguales 4 4 == Valid 4" $ do
    validarIguales 4 4 `shouldBe` Valid 4

  it "validarIguales 10 9 == Invalid \"10 /= 9\"" $ do
    validarIguales 10 9 `shouldBe` Invalid "10 /= 9"

  it "validarIguales True True == Valid True" $ do
    validarIguales True True `shouldBe` Valid True