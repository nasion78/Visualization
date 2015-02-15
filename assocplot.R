require(graphics)
M <- as.table(cbind(c(18,28,14), c(20,51,28), c(12,25,9)))
dimnames(M) <- list(Husband = c("Tall", "Medium", "Short"), Wife = c("Tall", "Medium", "Short"))
assocplot(M, col=c("green", "red"))
