import Test.QuickCheck

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2

import Wrapper

main = defaultMain [
    test_dontWrapUnnecessarily,
    test_overflowCausesWrap
  ]

test_dontWrapUnnecessarily = testProperty "dontWrapUnnecessarily" $
  \ s n ->
  n >= (length s) ==> 
  wrap s n == s

test_overflowCausesWrap = testProperty "overflowCausesWrap" $
  \ s ->
  (not (null s)) ==> 
  wrap (s ++ " X") (length s) == (s ++ "\nX")
