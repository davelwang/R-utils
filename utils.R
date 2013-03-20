#  Collection of utility functions

#  Given vector "v", this function will plot the largest "bins - 1" elements and sum the others to put in "other"
hist_topn <- function(v, bin) {
    counts = table(v) # counts occurrances in vector
    counts = sort(counts, decreasing = TRUE)
    sv = counts[1:bin]
    other_sum = sum(counts[-(1:bin)])
    sv[bin + 1] = other_sum
    names(sv)[bin + 1] = "Other"
    par(ps = 8, mar = c(8, 4, 2, 1))
    barplot(sv, las = 2, main = paste("Vector contains", length(v), "points in", length(counts), "levels"))

    return(sv)
}


#  Given vector "v" that contains date, this function will plot the histogram across days of the week
hist_weekday <- function(v) {
    tmp = weekdays(as.Date(v))  # convert string date to date datatype
    counts = table(tmp)
    
    par(ps = 8, mar = c(8, 4, 2, 1))
    barplot(counts, las = 2, main = paste("Vector contains", length(v), "points"))
}


#  Given vector "v" that contains Epoch Time, ths fucntion will convert the time to human readable string
epoch_to_readable <- function(v) {
    return(as.POSIXct[v], origin = "1970-01-01")
}
