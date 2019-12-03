import Test.Hspec
import Test.QuickCheck

import qualified Lib as Lib


main :: IO ()
main = hspec $ do
  describe "The logic of my program" $ do
    -- Using hspec for testing controlled input to output.
    it "should return [1,0,0,0,99] when getting [1,0,0,0,99] as input" $ do
      Lib.programLogic [1,0,0,0,99] `shouldBe` ([1,0,0,0,99] :: [Int])

    -- Using QuickCheck for property testing.
    it "should always retun its input as output" $ property $
      \n -> Lib.programLogic n == (n :: Int)
