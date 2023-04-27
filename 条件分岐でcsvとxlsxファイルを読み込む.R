df <- tibble()
for (path in path_list){
  if (str_detect(path, pattern = '.csv')){
    # .csvファイルの読み込み
    df_tmp <- read.csv(path, fileEncoding = 'Shift_JIS')
    df <- bind_rows(df, df_tmp)
    
  }else{
    # .xlsxファイルの読み込み
    df_tmp <- read.xlsx(path)
    df <- bind_rows(df, df_tmp)
  }
}