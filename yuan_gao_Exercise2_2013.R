x<-seq(-5,5,length=20);x #1

x[x>0] #2

y<-x>=0;y #3

!y #4

p <- c(TRUE,TRUE,FALSE,FALSE);q<-c(TRUE,FALSE,TRUE,FALSE);p&q #5

p <- c(TRUE,TRUE,FALSE,FALSE);q<-c(TRUE,FALSE,TRUE,FALSE);p|q #6 & and | are binary operators. && and || are logical operators. (2) the difference betwwen or and xor is if both boolean values are 1, 1 or 1 is 1 ad 1 xor 1 is 0

c(2,1,5,6)+c(TRUE,FALSE,FALSE,TRUE) #7 (1)True is 1 and False is 0 (2) Yes ex. c(1,0,1,0)

intersect(seq(1,10,1),seq(5,14,1)) #8

x<-seq(1,45,1);x #9

length(x[x%%5==0]) #10

color = c('white','black','white','black','red','green','orange'); #11

length(color[color=='white'])/length(color) #12

month = c('March', 'April', 'January', 'November', 'January', 'September', 'October', 'September','November', 'August', 'January', 'November', 'November', 'February', 'May', 'August','July', 'December', 'August', 'August', 'September', 'November', 'February', 'April'); #13

class(month); #14

mode(month); #15

sort(table(month),decreasing=TRUE)[1] #16 (1) It is November, it apeared 5 times

month_f = factor(month,levels=c('January','February','March','April','May','June','July','August','September','October','November','December')) #17

names(month_f)<-month #18

class(month_f); #19

mode(month_f) #20

xout<-as.data.frame(table(month_f));xout<-transform(xout,cumFreq = cumsum(Freq),relative = prop.table(Freq));xout #21

as.numeric(month[1]) <as.numeric(month[2]) #22 #cannot be casted to numeric values

as.numeric(month_f[1]) <as.numeric(month_f[2]) #23 #can be casted to numeric value

set.seed(100);charvec <- sample(c('cat', 'dog', 'mouse'), size = 20, replace = TRUE);charvec #24

charvec_f = factor(charvec,levels =c('mouse','cat','dog')); charvec_f #25

table(charvec_f); #26

income =c(44,65,59,31,40,76,57,48,74,47,58,41,28,56,61,45,32,69,78,34) #27

direct = c('N', 'W', 'N', 'W', 'E', 'N', 'W', 'S', 'S', 'S', 'E', 'S', 'N', 'W', 'W', 'E', 'N', 'N', 'W', 'E') #28

direct_f=factor(direct,levels=c('E','S','W','N')) #29

income_mean = tapply(income,direct,mean) #30

stderr<- function(x) sd(x)/sqrt(length(x)); stdv = tapply(income,direct_f,stderr) #31

alpha<-1-0.95; half_interval = qnorm(1-alpha/2) * stdv/sqrt(length(income)); lower_bound = income_mean - half_interval; higher_bound =income_mean+half_interval; higher_bound #32

sex = c('M', 'F', 'F', 'F', 'F', 'M', 'F', 'F', 'F', 'M', 'M', 'M', 'M', 'M', 'F', 'F', 'F', 'M', 'M', 'F') #33

combination = paste(direct,sex,sep = "");combination_f=factor(combination);income_mean_c = tapply(income,combination,mean);stderr<- function(x) sd(x)/sqrt(length(x)); stdv = tapply(income,combination_f,stderr);alpha<-1-0.95; sd(income)/sqrt(length(income));half_interval = qnorm(1-alpha/2) * stdv/sqrt(length(income)); lower_bound_c = income_mean_c - half_interval; higher_bound_c =income_mean_c + half_interval; higher_bound_c #34
