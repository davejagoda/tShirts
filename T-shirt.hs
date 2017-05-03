f s c = if length s <= 2
  then [(head s)] ++ (show c) ++ [(last s)]
  else f ([head s] ++ tail(tail s)) (c + 1)

main = putStrLn (f "andreessenhorowitz" 0)
