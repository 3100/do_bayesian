source('DBDA2E-utilities.R')
source('BernBeta.R')

showResult <- function(label, posterior) {
  print(sprintf("%s: A=%d B=%d", label, posterior[1], posterior[2]))
}

## (A)
posterior = BernBeta(c(4,4), c(1))
showResult('(A)', posterior)
## (B)
newPosterior = BernBeta(posterior, c(1))
showResult('(B)', newPosterior)
## (C)
morePosterior = BernBeta(newPosterior, c(0))
showResult('(C)', morePosterior)
## (D)
anotherPosterior1 = BernBeta(morePosterior, c(1,1,0))
anotherPosterior2 = BernBeta(morePosterior, c(0,1,1))
print(sprintf("(D): %s", all(anotherPosterior1 == anotherPosterior2)))