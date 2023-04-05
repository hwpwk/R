# yymmを格納したベクトルを作成
yymm_v <- c()
for (fy in 20:21) {
  # mmが12の場合はそのまま連結し、mmが3,6,9の場合は0を追加
  for (mm in seq(3, 12, 3)) {
    if (mm == 12){
      yymm <- str_c(as.character(fy), as.character(mm))
      yymm_v <- c(yymm_v, yymm)
    } else{
      yymm <- str_c(as.character(fy), 0, as.character(mm))
      yymm_v <- c(yymm_v, yymm)
    }
    
  }
  
}