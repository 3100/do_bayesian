source('DBDA2E-utilities.R')
source('BernBeta.R')
# 一様事前分布
prior = c(1, 1)
# 1回目のテスト 'F' = 0 'J' = 1と定義
data = c(rep(0, 40), rep(1, 10))
openGraph(width=5, height=7)
posterior = BernBeta(prior, data, showHDI=T)
# 95% HDIは0.107～0.323
# 空値0.5は95% HDIの外側になるので、棄却される

# 2回めのテスト
newData = c(rep(0, 15), rep(1, 35))
openGraph(width=5, height=7)
posterior = BernBeta(prior, newData, showHDI=T)
# 95% HDIは0.567～0.813
# やはり空値0.5は95% HDIの外側にあるので、棄却される。

# 結論： どちらの場合も偏っている