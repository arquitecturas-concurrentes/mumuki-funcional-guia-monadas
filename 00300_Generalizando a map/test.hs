describe "mapValidated" $ do
  it "mapValidated (+3) (Valid 8) == (Valid 11)" $ do
    mapValidated (+3) (Valid 8) `shouldBe` (Valid 11)

  it "mapValidated (+3) (Invalid \"foo\") == (Invalid \"foo\")" $ do
    mapValidated (+3) (Invalid "foo") `shouldBe` (Invalid "foo")

  it "longitudTicker (Doubtful \"AAPL\" \"foo\") == (Doubtful 4 \"foo\")" $ do
    longitudTicker (Doubtful "AAPL" "foo") `shouldBe` (Doubtful 4 "foo")

  it "valorMensual (Valid 12) == (Valid 1)" $ do
    valorMensual (Valid 12) `shouldBe` (Valid 1)


