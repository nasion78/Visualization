# Dendrogram 
install.packages("ape")
require(ape)

raw.data <- read.csv("http://www.auscov.com/uploads/5/4/2/2/5422365/crime2005.csv", header=TRUE)
rownames(raw.data)=raw.data[,1]
# hierarchial cluster analysis using set of distances calculated by dist(raw.data) using method "average"
hc <- hclust(dist(raw.data), "average") 
data <- as.phylo(hc) # tree object of class "phylo" and stored in data

plot(data, edge.color=rainbow(length(data$edge)/2), tip.color="brown", edge.width=2, font=2)
            title("Coloseness of Crime across eleven US states", line=-29, cex.main=1.8)
            title(" (US Census Department - 2005)", line=-30, cex.main=0.8, col="grey")
            axisPhylo(1, las=1)
