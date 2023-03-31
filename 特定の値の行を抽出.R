#「コード」が3桁の項目は分析対象外のため削除
df_check <- df %>% 
  mutate(len = map(df$`コード`, str_length)) %>% 
  filter(len!=3)