describe "bindValidated" $ do

  it "bindValidated (Valid 4) (validarIguales 4) == Valid 4"  $ do
    bindValidated (Valid 4) (validarIguales 4) `shouldBe` Valid 4

  it "bindValidated (Valid True) (\x -> Valid (not x)) == Valid False"  $ do
    bindValidated (Valid True) (\x -> Valid (not x)) (validarIguales 4) `shouldBe` Valid False

  it "bindValidated (Valid 9) (validarIguales 4) == Invalid \"4 /= 9\""  $ do
    bindValidated (Valid 9) (validarIguales 4) `shouldBe` Invalid "4 /= 9"

  it "bindValidated (Invalid \"ups\") (validarIguales 4) == Invalid \"ups\""  $ do
    bindValidated Invalid "ups" (validarIguales 4) `shouldBe` Invalid "ups"
