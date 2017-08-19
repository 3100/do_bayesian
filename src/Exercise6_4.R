source('DBDA2E-utilities.R')
source('BernBeta.R')

prior = c(0.01, 0.01) # 表または裏ばかり出るという事前信念の例 
data = c(rep(1, 4), rep(0, 1))
openGraph(width=5, height=7)
posterior = BernBeta(prior, data, showHDI=T)
