# Association Rules for Market Basket Analysis (R)
### line:3-5
## arules package: it provides infrastructure for representing, manipulating 
## and analyzing transaction data and patterns using data structures, mining
## algo, interest measures. It makes use of association rule.

## arulesViz package: visualization of association rules

## RColorBrewer package: it offers several color palette for R.Lightness 
## steps dominate the look of these schemes, with light colors for low data 
## values to dark colors for high data values.

### line: 7
## data() in R returns a list of currently loaded datasets or loads a dataset
## Groceries dataset contains 1 month of real world point of sale transaction 
## data from a typical local grocery outlet. It contains 9835 transactions and 
## the items are aggregated to 169 categories 
data(Groceries)  # grocery transactions object from arules package


### line: 10-13
# show the dimensions of the transactions object
## dim() returns number of rows and columns of a matrix, array or data frame
## dim(Groceries) output: 9835 169 => first no. reflects rows =>no. of market baskets
## and second reflects columns =>no. of item categories in store


### line: 16-22; 36-41; 
# examine frequency for each item with support greater than 0.025
## pdf(): pdf starts the graphics device driver for producing PDF graphics.
## arguments:- 
## width,height: the width and height of the graphics region in inches. The default values are 7.

## itemFrequencyPlot:  create an item frequency bar plot for inspecting the item frequency distribution
## arguments:- 
## support: Only display items which have a support of at least support.
## cex.names: a numeric value for the expansion factor for axis names (bar labels)
## type: indicates whether item frequencies should be displayed relative of absolute..
## horiz:  If TRUE, the bars are drawn horizontally. default value = FALSE
## xlab: a character string with the label for the x axis

## dev.off shuts down the specified (by default the current) device. If the 
## current device is shut down and any other devices are open, the next open device is made current.


### line: 25-27
# explore possibilities for combining similar items
## head: Returns the first or last parts of a vector, matrix, table, data frame or function.
## itemInfo: printout label(cols in dataset/items in store), level1 & level2(catg of items)
## print(Groceries)
## print(itemInfo(Groceries))
## print(head(Groceries))
 
# 10 levels... too few 
# 55 distinct levels


### line: 31-34
# aggregate items using the 55 level2 levels for food categories
# to create a more meaningful set of items
## aggregate: Splits the data into subsets, computes summary statistics for each, 
## and returns the result in a convenient form. this reduces the number of categories of
## items(169) into no. of categories in level2(55)


### line: 45-52
# obtain large set of association rules for items by category and all shoppers
# this is done by setting very low criteria for support and confidence
## Apriori algorithm employs level-wise search for frequent itemsets.
## the first rule is with very low support value thus returns a large no. of rules
## in second we increase the support value, hence less rules


### line: 55-59; 62-65; 75-79
## plot: It is used to make graphs according to the type of the object passed. 
## Its generic function, it has methods which are called as per the type of object passed to plot() .
# data visualization of association rules in scatter plot


### line: 68-73
# select rules with vegetables in consequent (right-hand-side) item subsets
## subset: its a useful indexing feature for accessing object elements. 
## It can be used to select and filter variables and observations.
## parameter subset: logical expression indicating elements or rows to keep.
# sort by lift and identify the top 10 rules




