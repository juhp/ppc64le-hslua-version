{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE TypeApplications    #-}
module Main (main) where

import HsLua (Exception, getglobal, openlibs, peek, run, top)

main :: IO ()
main = do
  luaVersion <- HsLua.run @HsLua.Exception $ do
    openlibs
    _ <- getglobal "_VERSION"
    peek top
  putStrLn luaVersion
