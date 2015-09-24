describe "fmap" $ do
  it "fmap (+3) (Valid 8) == (Valid 11)" $ do
    fmap (+3) (Valid 8) `shouldBe` (Valid 11)

  it "fmap (+3) (Invalid \"foo\") == (Invalid \"foo\")" $ do
    fmap (+3) (Invalid "foo") `shouldBe` (Invalid "foo")

  it "fmap not (Valid True) == (Valid False)" $ do
    fmap not (Valid True) `shouldBe` (Valid False)

  it "fmap not (Doubtful True \"ups\") == (Doubtful False \"ups\")" $ do
    fmap not (Doubtful True "ups") `shouldBe` (Doubtful False "ups")

