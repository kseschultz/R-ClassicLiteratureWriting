
install.packages("readr")
library("readr")
titles <- read_csv("C:/Users/kesch/Documents/GitHub/R-ClassicLiteratureWriting/data/titles.csv")
stats <- read.csv("C:\\Users\\kesch\\Documents\\GitHub\\R-ClassicLiteratureWriting\\data/stats.csv")
library(dplyr)
??join
books <- full_join(stats, titles,by ='id')
dickens <- books %>% filter(author=="Dickens, Charles")
dickens_stats <- dickens %>% select(id, words, sentences, to_be_verbs, contractions, pauses, cliches, similes)
published <- read.csv("C:\\Users\\kesch\\Documents\\GitHub\\R-ClassicLiteratureWriting\\data/published.csv")
time <- full_join(dickens_stats, published, by= "id")
head(time)
library(tidyr)
??tidyr
time
time_long <-time %>% gather(type,value,words:similes)
library(ggplot2)
ggplot(time_long, aes(date,value)) + geom_line(aes)
plot(p)
??ggplot          
