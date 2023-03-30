# ファイル名毎の行数と金額合計を確認
df_check <- df %>% 
  group_by(FileName) %>% 
  summarise(Nrows = n(), SumAmount = sum(金額))

# ファイルの出力
write.xlsx(df_check, 'Check.xlsx')