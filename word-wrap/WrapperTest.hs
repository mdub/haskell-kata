import Char
import Test.HUnit
import Wrapper

tests = TestList [
  TestCase( assertEqual "not wrapped" "foo"          (wrap "foo" 3)         ),
  TestCase( assertEqual "wrapped"     "foo\nbar"     (wrap "foo bar" 3)     )
  ]

main = do
  runTestTT tests
