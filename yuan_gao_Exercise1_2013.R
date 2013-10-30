27*49 #1

592/13 #2

2**6 #3

cos(pi/2) #4

factorial(9) #5

sqrt(3) #6

c(1,2) #7

x<-23;y<-19 #8

x-y->z #9

z #10

log2(sqrt(1894)) #11

x=seq(2,4,0.1); y<-exp(x)+cos(x) #12

x=seq(0,33,3);y=(0.1**(x+3)*0.2**(x+1)) #13

x=seq(1,25,1);y=2**x/x #14

rep(1:3,5) #15

c(rep(1:3,5),(1)) #16

c(rep(1,6),rep(2:3,each=6)) #17

x1<-c(8,-2,3,15,10) #18

x1 #19

x2<-seq(1,20,1) #20

x3<-c(x1,x2) #21

x4<-seq(0,5,0.1) #22

base_case= c('case', 'control');treat<-rep(base_case,50);length(treat) #23

base_smok=c('yes','no','no');smoking=rep(base_smock,99/length(base_smok));length(smoking) #24

sum(x1) #25

sum(x2) #26

prod(seq(1,30,1)) #27

color<-c('white', 'black', 'brown', 'gray', 'white') #28

color[3] #29

age<-c(13, 18, 12, 16, 21) ;age #30

data<-cbind(color,age) #31

data #32

data[1,] #33

data[,2] #34

data[3,1] #35

set.seed(100); x <- sample(0 : 100, 50, TRUE); y <- sample(0 : 100, 50, TRUE);y[3:50]/x[1:48] #37

sin(y[1:48])/cos(x[3:50]) #38

x[1:48]+2*x[2:49]+x[3:50] #39

sum(cumprod(seq(2,38,2)/seq(3,39,2)))+1 #40

lifetime <- abs(round(100 * cos(1 : 99))) #41

smoking[smoking=='yes']<-1;smoking[smoking=='no']<-0;index<-as.integer(smoking)*lifetime;index[index!=0] #42

max(index) #43

y=lifetime[lifetime%%2==0];y=y[y<=30] #44

min(lifetime) #45

z1 <- lifetime[smoking=='yes' & treat=='case'];z1 #46

z2 <- lifetime[smoking=='no' & treat=='case'];z2 #47

sum(seq(1,100,1)) #48

sum(2/seq(1,100,1)) #49

i<-seq(1,100,1);sum(i*exp(-i)) #50

i<-seq(1,100,1);sum(i**3+4*i**2) #51

i<-seq(1,100,1);sum(2**i/i+3**i/i**2) #52

i<-seq(1,100,1);prod(2*i**2-i) #53

vector=c(1:100)**8;signif(vector,3) #54

x<-10**-c(2:18);exp(x)-1 #55

expm1(x) #55 #This may be more accurate

set.seed(100);coef <- sample(-8 : 3, 3, replace = TRUE) #57 coef=(-8L, -3L, -3L)

class(coef);length(coef) #58

names(coef) #59

names(coef) <- c('a', 'b', 'c') #60

x<-seq(-3,3,length=100);y<-coef['a']*x**2+coef['b']*x+coef['c'] #63

plot(x=x,y=y) #64 It does not real roots

coef['b']**2-4*coef['a']*coef['c'] # it is -87 and it does not have real roots

