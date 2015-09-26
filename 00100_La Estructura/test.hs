describe "Validated" $ do
  it "permite construir (Valid 2000000)" $ do
    let patrimonioAsquelCorp = Valid 2000000
    patrimonioAsquelCorp `shouldBe` patrimonioAsquelCorp

  it "show (Valid True) == \"(Valid True)\"" $ do
    show (Valid True) `shouldBe` "Valid True"

  it "permite construir (Doubtful 45 \"contratron mas gente\")" $ do
    let empleadosNoditoInc = Doubtful 45 "contratron mas gente"
    empleadosNoditoInc `shouldBe` empleadosNoditoInc

  it "permite construir (Invalid \"no está mas en la bola\")" $ do
    let tickerJemaRoja = Invalid "no está mas en la bola" :: Validated Int
    tickerJemaRoja `shouldBe` tickerJemaRoja