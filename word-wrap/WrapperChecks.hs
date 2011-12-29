import Test.QuickCheck

import Wrapper

-- prop_doesntWrapUnnecessarily s = wrap s (length s) == s
prop_doesntWrapUnnecessarily s n = n >= (length s) ==> wrap s n == s

main = do
  quickCheck prop_doesntWrapUnnecessarily
