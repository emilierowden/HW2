#1
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))
#df1 is the data frame that holds the information we want to use. 
#the third line (aggregate) shows us the data organized by sales from each state.
#library(dplyr) provides R with the info to do the next line.
#the final line organizes the table shown earlier in an easier way to read. It also includes 
#header titles in the new table, unlike the first one. This can make the info easier to
#comprehend.
#2
worldcup = read.csv('/Users/martiewisenbaugh/Downloads/WorldCupMatches.csv', header=T)
#a
head(worldcup)
nrow(worldcup)
ncol(worldcup)
#there are 852 rows and 20 cols
#b
summary(worldcup)
#c
length(unique(worldcup$City))
#d
which(colSums(is.na(worldcup))>0)
worldcup2 = worldcup[rowSums(is.na(worldcup))]
worldcup[is.na(Attendance)]<-mean(worldcup$Attendance, na.rm=T)
table(worldcup$Attendance)
#e
worldcup %>% group_by(Home.Team.Name) %>% summarise(sum(Home.Team.Goals))
#f
worldcup %>% group_by(Year) %>% summarise(sum(Attendance))
#as the years go on, attendance normally grows larger if we are looking for a pattern. 
#3
metabolites = read.csv('/Users/martiewisenbaugh/Downloads/metabolite.csv')
#a
table(metabolites$Label)
#b
which(colSums(is.na(metabolites))>0)
#c
metabolites2 = metabolites[rowSums(is.na(metabolites))] 
table(metabolites2$Dopamine)
#d
metabolites2[is.na(c4.OH.Pro)]<-median(metabolites2$c4.OH.Pro, na.rm=T) #NOT DONE
table(metabolites2$c4.OH.Pro)



