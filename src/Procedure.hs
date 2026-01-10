-- |
-- Module      : Procedure
-- Description : 手順書のドメインモデル定義
--
module Procedure where

import Document

type Procedure = Document Step

-- 手順書の制約：全てのSectionはsubsectionsが空でなければならない
validateProcedure :: Procedure -> Bool
validateProcedure = all hasNoSubsections . sections
  where
    hasNoSubsections (Section _ subs _) = null subs

-- | セクションの個別の作業ステップ
data Step = Step
  { stepId :: String           -- ^ ステップID
  , values :: [String]         -- ^ 入力内容（コピペ用）
  , done :: Bool               -- ^ 実行状況
  , content :: StepContent     -- ^ 作業内容
  , note :: String             -- ^ 補足情報
  }

-- | ステップの詳細内容
data StepContent = StepContent
  { title :: String            -- ^ ステップ名
  , condition :: String        -- ^ 実行条件
  , procedure :: String        -- ^ 操作手順
  }