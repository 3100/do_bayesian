source('DBDA2E-utilities.R')
source('BernBeta.R')
##(A)
# 事前信念が一様分布なのでA=B=1とみなす
prior=c(1, 1)
data = c(rep(1, 58), rep(0, 42))
# 95% HDI(95%最高密度区間)はグラフ上にしかプロットされない
posterior = BernBeta(prior, data, showHDI=T)
# [0.483, 0.673]

##(B)
# "世論調査の間に人々の意見が変わらないとしたら"が
# 前回の信念をベースに追加データで処理をできる前提ぽい
newData = c(rep(1,57), rep(0, 43))
newPosterior = BernBeta(posterior, newData, showHDI=T)
# [0.506, 0.642]
