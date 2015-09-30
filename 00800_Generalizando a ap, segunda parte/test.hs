describe "aplicarValidated" $ do

  it "aplicarValidated (Valid succ) (Valid 3) == Valid 4" $ do
    aplicarValidated (Valid succ) (Valid 3) `shouldBe` (Valid 4)

  it "aplicarValidated (Valid even) (Valid 3) == Valid False" $ do
    aplicarValidated (Valid even) (Valid 3) `shouldBe` (Valid False)

  it "aplicarValidated (Invalid \"bad function\") (Valid 3) == (Invalid \"bad function\")" $ do
    aplicarValidated (Invalid "bad function" :: Validated (a -> String)) (Valid 3) `shouldBe` (Invalid "bad function")

  it "aplicarValidated (Invalid \"ups\") (Invalid \"foo\") == (Invalid \"ups\")" $ do
    aplicarValidated (Invalid "ups" :: Validated (a -> String)) (Invalid "fuu") `shouldBe` (Invalid "ups")

  it "aplicarValidated (Doubtful (+3) \"ups\") (Invalid \"foo\") == (Invalid \"foo\")" $ do
    aplicarValidated (Doubtful (+3) "ups") (Invalid "foo") `shouldBe` (Invalid "foo")

  it "aplicarValidated (Doubtful even \"ups\") (Doubtful 9 \"fuu\") == (Doubtful False \"ups\")" $ do
    aplicarValidated (Doubtful even "ups") (Doubtful 9 "fuu") `shouldBe` (Doubtful False "ups")
