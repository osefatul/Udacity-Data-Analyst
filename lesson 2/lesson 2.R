reddit= read.csv('reddit.csv')

summary(reddit)
names(reddit) 
head(table(reddit$state))
summary(reddit)
str(reddit)
summary(reddit$age.range)
levels(reddit$age.range)
str(reddit)

#convert a datatype to factor
reddit$age.range= factor(reddit$age.range)

#check the structure of reddit; notice especially age.range
str(reddit)

#check the level of age
levels(reddit$age.range)

library(ggplot2)

#see the range level
qplot(data = reddit, x=age.range)

#as we saw in the plot that its not by ordered(started by the heighest value and ended with lowest)

reddit$age.range=factor(reddit$age.range, levels=c('Under 18','18-24','25-34','35-44', '45-54','55-64','65 of Above'),
                          ordered=T)

qplot(data=reddit, x=age.range)




#lets check the income variable
str(reddit)
qplot(data=reddit, x=reddit$income.range)

#lets factrized and order the income range

reddit$income.range= factor(reddit$income.range, levels=c('Under $20,000', 
              '$21,000-$29,000','$41,000-$60,000', '$61,000-$80,000','$81,000-$10,0000',
               '$10,0000-$150000','$150,000 of above'), ordered=T)


levels(reddit$income.range)































