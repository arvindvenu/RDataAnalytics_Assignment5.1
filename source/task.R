# take the vector of state names and split it by "" to get individual character
# finally unlist to flatten list to a vector
characters = state.name %>% strsplit( split = "") %>% unlist

# filter out those characters which are vowels
vowels = characters[grepl(pattern = 'a|b|c|d|e',x = characters,  
      ignore.case = TRUE)] %>% tolower

# histogram of vowels
table(vowels)

# import ggplot2 library
library(ggplot2)

# form the base plot using the ggplot function
ggp <- ggplot(data.frame(vowels),aes(x=vowels))

# call gemo_histogram and pass the stat as "count" to plot a histogram
ggp + geom_histogram(fill="lightgreen", stat="count")





