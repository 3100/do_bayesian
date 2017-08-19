## 陽性だった後の再検査で陰性になったとき、その人が病気である確率を求める。

# p(D=陽|θ=病) = 0.99 # ある人が病気の時に、陽性になる確率
pPositiveWhenTrue = 0.99
# 病気でないのに陽性になる確率0.05
# p(D=陽|θ=無)
pPositiveWhenFalse = 0.05
# p(θ=病) = pPositive = 0.001
pTrue <- 0.001
# p(D=陽) = Σp(D=陽|θ*)p(θ*) # すべてのθ値での和 : 周辺確率
pPositive <- pPositiveWhenTrue*pTrue + pPositiveWhenFalse*(1-pTrue)

# 1回目の検査で陽性のときの事後確率 P(θ=病|D=陽)
# すなわち、2回めの検査での事前確率
p1 <- pPositiveWhenTrue * pTrue / pPositive 
print(p1) # for debug

# 病気のときに陰性になる確率
pNegativeWhenTrue = 0.01
# 病気じゃない時に陰性になる確率
pNegativeWhenFalse = 0.95 
# p(D=陰)
pNegative <- pNegativeWhenTrue*p1 + pNegativeWhenFalse * (1-p1)

p2 <- pNegativeWhenTrue * p1 / pNegative 
print(p2)