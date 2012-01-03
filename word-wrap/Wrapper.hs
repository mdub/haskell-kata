-- You write a class called Wrapper, that has a single static function named wrap that takes two
-- arguments, a string, and a column number. The function returns the string, but with line breaks
-- inserted at just the right places to make sure that no line is longer than the column number.
-- You try to break lines at word boundaries.
-- 
-- Like a word processor, break the line by replacing the last space in a line with a newline.

module Wrapper (wrap) where
  
  wrap :: String -> Int -> String
  wrap s n = s

  splits :: [a] -> [([a],[a])]
  splits [] = [([],[])]
  splits s@(x:rest) = 
    ([], s) : map (prepend x) (splits rest) 
    where prepend x (init,tail) = (x:init,tail)
