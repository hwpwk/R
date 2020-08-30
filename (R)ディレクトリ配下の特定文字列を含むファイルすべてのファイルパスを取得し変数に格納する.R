# ディレクトリ配下の「enavi」を含むファイルすべてのファイルパスを取得し変数に格納する
# 参考：https://qiita.com/dokokano_panda/items/8962650700130bd99ab7
path <- 'C:/Users/Owner/Documents/181115/data/'
f_list <- list.files(path, full.names=T, pattern='enavi*')