#  Collection of utility functions

#  Given vector "v", this function will plot the largest "bins - 1" elements and sum the others to put in "other"
hist_topn <- function(v, bin) {
    sv = sort(v[1:bin], decreasing = TRUE)
    other_sum = sum(v[-(1:bin)])
    sv[bin + 1] = other_sum
    names(sv)[bin + 1] = "Other"
    par(ps = 8, mar = c(8, 4, 2, 1))
    barplot(sv, las = 2)
}
