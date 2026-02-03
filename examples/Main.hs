module Main where

main = do
  l <- getLine
  case f 
    (reverse l) of
    0 -> print "ok"
    x -> print x
    
f s =
  case g (reverse s) of
    [] -> 0
    (c:cs) -> length cs

g s =
  h ('a':s)

h s =
  case length s of
    0 -> [-10]
    l -> [1-l]

