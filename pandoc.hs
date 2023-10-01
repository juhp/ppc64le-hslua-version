{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE TypeApplications    #-}

module Main (main) where

import HsLua.Core

main :: IO ()
main = do
  eluaVersion <- runEither @Exception $ do
    openlibs
    _ <- getglobal "_VERSION"
    liftIO $ print '1'
    tostring top
  print eluaVersion
