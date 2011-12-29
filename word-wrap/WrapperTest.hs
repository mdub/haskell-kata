import Char
import Test.HUnit
import Wrapper

tests = TestCase $ assertEqual "not wrapped" "foo" (wrap "foo" 3)

main = do
  runTestTT tests
