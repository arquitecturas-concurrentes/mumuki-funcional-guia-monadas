describe "valorMensual" $ do
  it "valorMensual (Valid 1200) == (Valid 100)" $ do
    valorMensual (Valid 1200) `shouldBe` (Valid 100)

  it "valorMensual (Invalid \"quebró\") == (Invalid \"quebró\")" $ do
    valorMensual (Invalid "quebró") `shouldBe` (Invalid "quebró")

  it "valorMensual (Doubtful 36 \"incendio en abril\") == (Doubtful 3 \"incendio en abril\")" $ do
    valorMensual (Doubtful 36 "incendio en abril") `shouldBe` (Doubtful 3 "incendio en abril")

