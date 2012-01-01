import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit

import Wrapper

main = defaultMain [
    test_dontWrapUnnecessarily,
    test_overflowCausesWrap
  ]

test_dontWrapUnnecessarily = testCase "dontWrapUnnecessarily" $ do
  (wrap s (length s)) @?= s
  where s = "some words"

test_overflowCausesWrap = testCase "overflowCausesWrap" $
  (wrap (s ++ " extra") (length s)) @?= (s ++ "\nextra")
  where s = "some words"
