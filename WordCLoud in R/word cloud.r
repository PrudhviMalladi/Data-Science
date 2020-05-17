library(tm)
library(wordcloud)
library(RColorBrewer)
library(SnowballC)
speech <- "C:/Users/desktop/dhoni.txt"
data_txt = readLines(speech)
data<-Corpus(VectorSource(data_txt))
data_data<-tm_map(data,stripWhitespace)
data_data<-tm_map(data_data,tolower)
data_data<-tm_map(data_data,removeNumbers)
data_data<-tm_map(data_data,removePunctuation)


data_data<-tm_map(data_data,removeWords, stopwords("english"))



data_data <- tm_map(data_data, removeWords, c ("and","the","our","that","for","are","also","more","has","must","have","should","this","with"))




tdm_data<-TermDocumentMatrix (data_data) #Creates a TDM
TDM1<-as.matrix(tdm_data) #Convert this into a matrix format
v = sort(rowSums(TDM1), decreasing = TRUE) #Gives you the frequencies for every 

wordcloud (data_data, scale=c(5,0.5), colors=brewer.pal(8, "Dark2"))



max.words=1, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))