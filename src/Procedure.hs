-- |
-- Module      : Procedure
-- Description : 手順書のドメインモデル定義
--
module Procedure where

-- | 手順書ファイル全体を表す
data Procedure = Procedure
  { fileName :: String    -- ^ ファイル名
  , sections :: [Section] -- ^ セクションのリスト
  }

-- | セクション
data Section = Section
  { sectionName :: String -- ^ セクション名
  , steps :: [Step]       -- ^ ステップのリスト
  }

-- | セクションの個別の作業ステップ
data Step = Step
  { stepId :: String      -- ^ ステップID
  , values :: [String]    -- ^ 入力内容（コピペ用）
  , done :: Bool          -- ^ 実行状況
  , content :: Content    -- ^ 作業内容
  , note :: String        -- ^ 補足情報
  }

-- | ステップの詳細内容
data Content = Content
  { title :: String       -- ^ ステップ名
  , condition :: String   -- ^ 実行条件
  , procedure :: String   -- ^ 操作手順
  }