describe "codigoUnico" $ do

  it "codigoUnico (Valid \"INTC\") (Valid \"458140100\") == Valid \"INTC:458140100\"" $ do
    codigoUnico (Valid "INTC") (Valid "458140100") `shouldBe` Valid "INTC:458140100"

  it "codigoUnico (Doubtful \"INTD\" \"la D podria ser una C\") (Doubtful \"458140100\" \"estaba cansado\") == Valid \"INTD:458140100\" \"la D podria ser una C\"" $ do
    codigoUnico (Doubtful "INTD" "la D podria ser una C") (Doubtful "458140100" "estaba cansado") `shouldBe` Doubtful "INTD:458140100" "la D podria ser una C"

  it "codigoUnico (Valid \"INTC\") (Invalid \"cusip ilegible\") == Invalid \"cusip ilegible\"" $ do
    codigoUnico (Valid "INTC") (Invalid "cusip ilegible") `shouldBe` Invalid "cusip ilegible"

  it "codigoUnico (Doubtful \"INTC\" \"??\") (Invalid \"cusip ilegible\") == Invalid \"cusip ilegible\"" $ do
    codigoUnico (Doubtful "INTC" "??") (Invalid "cusip ilegible") `shouldBe` Invalid "cusip ilegible"

  it "codigoUnico (Invalid \"??\") (Invalid \"cusip ilegible\") == Invalid \"??\"" $ do
    codigoUnico (Invalid "??") (Invalid "cusip ilegible") `shouldBe` Invalid "??"
