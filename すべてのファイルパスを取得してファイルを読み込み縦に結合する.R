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
path_list <- list.files(path, full.names=T)
# すべてのファイルを読み込み縦に結合
df <- do.call(rbind, lapply(path_list, read_excel))