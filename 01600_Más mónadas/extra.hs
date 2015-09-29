inversa :: Float -> Maybe Float
inversa 0 = Nothing
inversa x = Just (1 / x)

menoresA :: Int -> [Int]
menoresA n = [0..n]
