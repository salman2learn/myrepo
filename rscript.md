# Read from clipboard and plot

```
df <- read.table(file='clipboard',sep=',', header=T, stringsAsFactors=T )
df <- as.data.frame(df)

library(lattice)
histogram(~ ColForX | ColForY, data =df)
```
