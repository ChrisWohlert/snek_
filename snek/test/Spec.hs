import Test.HUnit
import Lib

main :: IO ()
main = return ()

run = runTestTT tests

tests = TestList [
    TestLabel "test1" (TestCase (assertEqual "testing the test" "test" testTheTest))]