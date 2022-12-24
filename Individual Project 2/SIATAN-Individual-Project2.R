#FLOREDA MAE SIATAN BSIT 2-A

#Individual Project2

library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

CONSUMER_SECRET <- "m7YDTdIUsXrHBctdYXRL5vh8fXlVRPcOIYVmrK7z7fMddyuUFC"
CONSUMER_KEY <- "GkDEUOHWT25PLk78NjGpAlIY7"
ACCESS_SECRET <- "MA1Le3foaizXx6P8rlQc72axfUdsyITDajVJUYdykJrNX"
ACCESS_TOKEN <- "1320378136396091392-C2qoI175v2JLG3vEAV3gKRBtPiw9J6"

#connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

avatar_trend = searchTwitter("AVATAR", n = 10000, 
                             since = "2022-12-19",
                             until = "2022-12-22",
                             lang = "en", 
                             retryOnRateLimit = 120)
avatar_trend

tweetsDF <- twListToDF(avatar_trend)
tweetsDF


save(tweetsDF,file = "trendingTweetsDF.Rdata")
load(file = "trendingTweetsDF.Rdata")

data_checking <- sapply(avatar_trend,
                function(x) sum(is.na(x)))  
data_checking  

#SUBSETTING
tweet <- tweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
tweet


#GROUPING 
tweet %>% group_by(1) %>%  
  summarise(max = max(created),
  min = min(created))

create_data <- tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
create_data


minim <- tweets %>% pull(created) %>% min()
minim 

maxim <- tweets %>% pull(created) %>% max()
maxim


#Plot tweets by time using the library(plotly) and ggplot()


plotdata <- ggplot(create_data,
            aes(x = Created_At_Round)) +
            geom_histogram(aes(fill = ..count..)) +
            theme(legend.position = "right") +
             xlab("Time") + ylab("Number of tweets") + 
            scale_fill_gradient(low = "yellow", high = "blue")

plotdata %>% ggplotly()



#Retweets
sub_tweets <- tweetsDF %>%
              select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)

sub_tweets


sub_tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

create <- sub_tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
create

mini <- sub_tweets %>% pull(created) %>% min()
mini

maxi <- sub_tweets %>% pull(created) %>% max()
maxi


# Plot on tweets by time using the library(plotly) and ggplot()


plot_data <- ggplot(create, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "blue", high = "red")

plot_data %>% ggplotly()
