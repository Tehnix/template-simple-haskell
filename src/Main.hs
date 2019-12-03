module Main where

import qualified Lib as Lib

-- | Main entry point of your application.
main :: IO ()
main = do
  let test = Lib.programLogic "test"
  print test
