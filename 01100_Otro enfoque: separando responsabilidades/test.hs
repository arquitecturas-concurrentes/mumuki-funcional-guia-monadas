describe "codigoUnico" $ do

  it "codigoUnico \"INTC\" \"458140100\" == \"INTC:458140100\"" $ do
    codigoUnico "INTC" "458140100" `shouldBe` "INTC:458140100"

