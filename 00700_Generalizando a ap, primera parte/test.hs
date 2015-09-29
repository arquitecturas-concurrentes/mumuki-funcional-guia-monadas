describe "aplicarBinarioValidated" $ do

  it "aplicarBinarioValidated (++) (Valid \"INTC\") (Valid \"458140100\") == Valid \"INTC458140100\"" $ do
    aplicarBinarioValidated (++) (Valid "INTC") (Valid "458140100") `shouldBe` Valid "INTC458140100"

  it "aplicarBinarioValidated (++) (Doubtful \"INTD\" \"la D podria ser una C\") (Doubtful \"458140100\" \"estaba cansado\") == Valid \"INTD458140100\" \"la D podria ser una C\"" $ do
    aplicarBinarioValidated (++) (Doubtful "INTD" "la D podria ser una C") (Doubtful "458140100" "estaba cansado") `shouldBe` Doubtful "INTD458140100" "la D podria ser una C"

  it "aplicarBinarioValidated (++) (Valid \"INTC\") (Invalid \"cusip ilegible\") == Invalid \"cusip ilegible\"" $ do
    aplicarBinarioValidated (++) (Valid "INTC") (Invalid "cusip ilegible") `shouldBe` Invalid "cusip ilegible"

  it "aplicarBinarioValidated (++) (Doubtful \"INTC\" \"??\") (Invalid \"cusip ilegible\") == Invalid \"cusip ilegible\"" $ do
    aplicarBinarioValidated (++) (Doubtful "INTC" "??") (Invalid "cusip ilegible") `shouldBe` Invalid "cusip ilegible"

  it "aplicarBinarioValidated (++) (Invalid \"??\") (Invalid \"cusip ilegible\") == Invalid \"??\"" $ do
    aplicarBinarioValidated (++) (Invalid "??" :: Validated String) (Invalid "cusip ilegible" :: Validated String) `shouldBe` Invalid "??"

  it "codigoUnico (Valid \"INTC\") (Valid \"458140100\") == Valid \"INTC:458140100\"" $ do
    codigoUnico (Valid "INTC") (Valid "458140100") `shouldBe` Valid "INTC:458140100"
