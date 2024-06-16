{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE TypeApplications    #-}

module Main (main) where

import HsLua.Core
import HsLua.Core.Types

import qualified Data.ByteString as B
import qualified Foreign.Storable as F
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Lua.Primary

main :: IO ()
main = do
  eluaVersion <- runEither @Exception $ do
    openlibs
    _ <- getglobal "_VERSION"
    -- tostring top
    liftLua $ \l ->
      alloca $ \lenPtr -> do
      liftIO $ print '1'
      cstr <- lua_tolstring l top lenPtr
      liftIO $ print '2'
      if cstr == nullPtr
        then return Nothing
        else do
        cstrLen <- F.peek lenPtr
        Just <$> B.packCStringLen (cstr, fromIntegral cstrLen)
  print eluaVersion
