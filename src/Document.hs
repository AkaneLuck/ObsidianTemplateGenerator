-- |
-- Module      : Document
-- Description : 文書のドメインモデル定義
--
module Document where

-- | 文書ファイル全体
data Document content = Document
  { documentName :: String           -- ^ ファイル名
  , templateName :: Maybe String     -- ^ テンプレート名
  , dataFlow :: Maybe String         -- - Mermaid図
  , sections :: [Section content]    -- ^ セクションのリスト
  }

-- | セクション
data Section content = Section
  { sectionName :: String            -- ^ セクション名
  , subsections :: [Section content] -- ^ サブセクション
  , content :: content               -- ^ 内容
  }
