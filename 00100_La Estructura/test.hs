describe "Validated" $ do
  it "permite construir (Valid 2000000)" $ do
    let patrimonioAsquelCorp = Valid 2000000

  it "(Valid True) == (Valid True)" $ do
    (Valid True) `shouldBe` (Valid True)

  it "permite construir (Doubtful 45 \"contratron mas gente\")" $ do
    let empleadosNoditoInc = Doubtful 45 "contratron mas gente"

  it "permite construir (Invalid \"no está mas en la bola\")" $ do
    let tickerJemaRoja = Invalid "no está mas en la bola"
