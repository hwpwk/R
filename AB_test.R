# クーポンを付けた商品・付けなった商品とでCV数に差があるのかを比較
# 参考URL：https://tjo.hatenablog.com/entry/2013/06/13/084846

# 疑似データ入力
df <- matrix(c(250,50,280,20),ncol=2,byrow=T)
# インデックス名付与
rownames(df) <- c('is_coupon', 'not_is_coupon')
# カラム名付与
colnames(df) <- c('not_success', 'success')

# カイ二乗検定
chisq.test(df) 

## p-value = 0.0002261であるため有意差あり

# フィッシャーの正確確率検定
# データ数が5以下のセルが一つでもある場合など
# 標本数が少ない場合に使用する。
fisher.test(df)

## p-value = 0.0001883であるため有意差あり