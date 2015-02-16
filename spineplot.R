require(graphics)
r1 <- c(7.9, 67.6, 28.3, 53.6)
r2 <- c(4.4, 54.5, 29.9, 57.6)
r3 <- c(10.2, 50, 27.7, 53.4)
r4 <- c(2.5, 35.3, 22.2, 47)
r5 <- c(8.5, 46.3, 32.2, 50)
data <- as.table(rbind(r1, r2, r3, r4, r5))
dimnames(data) <- list(Town = c("Sheffield", "Warrington", "Dewsbusy", "Leicester", "Gloucester"), 
                                Vaccinated = c("Yes(<10)", "No(<10)", "Yes(>10)", "No(>10)"))

# Spine Plot
spineplot(data)
spineplot(data, col=c("darkred", "orange", "darkgreen", "yellow1")) #spine graph color option

# Mosaic Plot
mosaicplot(data, color=1:4)
mosaicplot(data, color=2:5)  #color pattern change
mosaicplot(data, color=1:4, las=1) # text orientation horizontal
