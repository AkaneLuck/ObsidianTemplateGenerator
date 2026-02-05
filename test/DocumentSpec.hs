module DocumentSpec (spec) where

import Test.Hspec
import Document

spec :: Spec
spec = do
  describe "Document" $ do
    it "creates a document with name" $ do
      let doc = Document "test" Nothing Nothing [] :: Document String
      documentName doc `shouldBe` "test"