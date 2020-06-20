# 下記のようなcsvファイルを読み込む

# "利用日","利用店名・商品名","利用者","支払方法","利用金額","支払手数料","支払総額","4月支払金額","5月繰越残高","新規サイン"
# "2019/03/30","Jpp","本人","1回払い","1782","0","1782","1782","0","*"

# データの読み込み
# 「header=T, sep=','」を加えることで「列名よりも列数のほうが多いです」というエラーを解消
# また「fileEncoding="UTF-8-BOM"」を加えることで「invalid multibyte string at '<ef>ｻ<bf>蛻」といった文字化けエラーを解消
# 参考：https://teratail.com/questions/109388
df<-read.csv('C:/Users/Owner/Documents/181115/data/enavi201904(6875).csv',header=T, sep=',',fileEncoding="UTF-8-BOM")