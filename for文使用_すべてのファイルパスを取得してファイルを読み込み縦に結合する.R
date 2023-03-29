library(tidyverse)
library(openxlsx)
library(dplyr)
library(readxl)
# 指数表記を避けるため
options(scipen=100)

setwd("/xxx/")
getwd()

# パスは「/」から「/」に修正する必要あり
path = "/xxxxxx/"
# すべてのファイルパスを取得
path_list <- list.files(path, pattern = "[2-3]", full.names=T)

# for文ですべてのファイルパスを読み込み、読み込んだデータを縦に連結
# 連結時にFileName列を付与
df_main <- tibble()
for (path in path_list) {
  df <- read.xlsx(path) %>% 
    mutate(FileName = basename(path))
  # 縦に連結
  df_main <- bind_rows(df_main, df)
}  