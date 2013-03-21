#  some commonly used R syntax example

#  getting info about a var
summary(var)
str(var)
class(var)
names(var)

#  type conversion
as.<whatever>

#  read in CSV file
data = read.csv(file = "infilename.csv", head = TRUE, sep = ",")

#  count frequency of occurance of data values
histogram = table(data)

#  sort an array
sorted_v = sort(v, decreasing = TRUE)

#  getting a row in df
a_row = dataf[m,]

#  getting a col in df
a_col = dataf[,n]
a_col = dataf$n

#  labeling an element in array
names(arr)[index] = "new bin name"
