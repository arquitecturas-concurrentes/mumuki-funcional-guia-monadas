describe "validarIgualesValidated" $ do
  it "validarIgualesValidated (Valid 4) (Valid 4) == Valid 4" $ do
    validarIgualesValidated (Valid 4) (Valid 4) `shouldBe` Valid 4

  it "validarIgualesValidated (Valid 10) (Valid 9) == Invalid \"10 /= 9\"" $ do
    validarIgualesValidated (Valid 10) (Valid 9) `shouldBe` Invalid "10 /= 9"

  it "validarIgualesValidated (Invalid \"ups\") (Valid 5) == Invalid \"ups\"" $ do
    validarIgualesValidated (Invalid "ups") (Valid 5) `shouldBe` Invalid "ups"

  it "validarIgualesValidated (Doubtful 4 \"ups\") (Doubtful 4 \"pum\") == Doubtful 4 \"ups\"" $ do
    validarIgualesValidated (Doubtful 4 "ups") (Doubtful 4 "pum") `shouldBe` Doubtful 4 "ups"

  it "validarIgualesValidated (Doubtful 5 \"ups\") (Valid 5) == Doubtful 5 \"ups\"" $ do
    validarIgualesValidated (Doubtful 5 "ups") (Valid 5) `shouldBe` Doubtful 5 "ups"

  it "validarIgualesValidated (Invalid \"ups\") (Invalid \"pum\") == Invalid \"ups\"" $ do
    validarIgualesValidated (Invalid "ups" :: Validated String) (Invalid "pum") `shouldBe` Invalid "ups"
