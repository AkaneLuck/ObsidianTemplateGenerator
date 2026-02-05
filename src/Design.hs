-- |
-- Module      : Design
-- Description : 設計書のドメインモデル定義
--
module Design where

import Document

type DesignDocument = Document String

data ManagementTable = ManagementTable
  { tableId :: String
  , tableName :: String
  , entries :: [ManagementEntry]
  }

data ManagementEntry = ManagementEntry
  { entryId :: String
  , entryName :: String
  , comment :: String
  , attributes :: [(String, String)]  -- 任意項目
  }