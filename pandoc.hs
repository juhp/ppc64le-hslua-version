{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE TypeApplications    #-}

module Main (main) where

import HsLua.Core

main :: IO ()
main = do
  eluaVersion <- runEither @Exception $ do
    openlibs
    liftIO $ print '1'
    _ <- getglobal "_VERSION"
    liftIO $ print '2'
    tostring top
  print eluaVersion
