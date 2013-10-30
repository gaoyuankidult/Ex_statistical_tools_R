X <-matrix(seq(1:12),nrow=3,byrow = T); X #1

dimnames(X); #2

dimnames(X)<-list(c(1, 2, 3),c('A', 'B', 'C', 'D')) #3

Y <-matrix(seq(1:12),nrow=3); Y #4

Z1<-cbind(X,Y); Z1 #5

Z2<-rbind(X,Y); Z2 #6

x<-seq(1,20) #7

names(x)<-tolower(c('A','B','C','D','E','F','G','H','I','K','L','M','N','O','P','Q','R','S','T','V')) #7

x[1:5] #9

x[c(2,4,6,8)] #10

x[-c(2,4)] #11

x[x>=10] #12

x[c('d','g')] #13

X<-matrix(seq(1,100,1), 10) #14

X[1:5,] #15

X[,1:4][X<4] #16

apply(X,2,sum) #17

colSums(X) #18

X=X+1 #19

Y<-(X+X)*X; Y #20

rowSums(Y) #21

colSums(Y) #22

Z<-matrix(rep(c(1, -1, 1), each = 15),15);Z #23

crossprod(Z) #24

a=seq(0,2);outer(a,a,'+') #25

myfunction1 <- function(x,y){return((x+y)%%3)};a=seq(0,2);outer(a,a,myfunction1) #26

myfunction2 <- function(x,y){return((x+y)%%3)};a=seq(0,2);b=c(0,2,1);outer(a,b,myfunction2) #27

X^(1:3);X^1:3 #28

set.seed(100);X <- matrix(rnorm(10 ^ 7 * 2), 10 ^ 7, 2);y <- rnorm(10 ^ 7) #29

t(X)*y #30

crossprod(X,y) #31

system.time(t(X)*y);system.time(crossprod(X,y)); test_time<-function(n, x) replicate(n, system.time(x)); test_time(10,t(X)*y);test_time(10,crossprod(X,y))#32 (1)the crossprod is muchmore faster 

c1<-c(1,2,1,0);c2<-c(1,0,1,2);c3<-c(0,1,2,1);rbind(0.25*c1+0.75*c2-0.5*c3,0.5*c1-0.5*c2,(c2-c1)/4+c3/2) #33 The answer is 1,-1,1 respectively
  
set.seed(100);X <- array(sample(1 : 100, 24), dim = c(4, 3, 2));X #34

apply(X, 3, sum) #35

apply(X, 3, colSums) #36

set.seed(100);x <- rnorm(5000);y <- 1+0.3*x+rnorm(5000) #37

lm(y~x) #38 

lm(y~x) #39 (1) It contains two elements, the estimatited intercept is 1.006

lm(y~x) #40 (2)coefficient of varible x is 0.370 lm return the best-fit a and b in the linear equation ax+b = y 

somelist<-vector("list", 43);assign_list<-list(ControlType=integer(),ProbeName=character(),SystematicName=character(),gMedianSignal=numeric(),rMedianSignal=numeric(),gBGMedianSignal=numeric(),rBGMedianSignal=numeric());somelist[c(6,7,8,18,19,20,21)]<-assign_list;names(somelist)[c(6,7,8,18,19,20,21)]<-names(assign_list);file_data<-scan(file="/home/gao/Desktop/Statistical_Tools/cgh_scan.csv",what=somelist,sep="\t", skip=10);file_data; names(file_data) #41

df <- file_data[!sapply(file_data, is.null)] #34
