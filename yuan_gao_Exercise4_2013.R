a=c(1,6,9,3,4);b=c(4,2,5,2,8);test_disajoint<-function(x,y){for(i in 1:length(a)){for(j in 1:length(b)){if(a[i]==b[j]){print("Two vectors are not disajoint.");break}}}};test_disajoint(a,b) #1

test_coef<-function(a,b,c){if(b**2-4*a*c>0){print("Two distinct roots")}else if(b**2-4*a*c == 0){print("coincident roots")}else{print("Complex roots")}}; set.seed(100);coef <- sample(-8 : 3, 3, replace = TRUE);test_coef(coef[1],coef[2],coef[3]);coef #2

set.seed(100);x <- log(rnorm(20));x<-ifelse(is.nan(x),-9,x);x #3 

func1<-function(){set.seed(100);x<- runif(500); for(i in 1:500){y[i]=sin(x[i])};y} #4

func2<-function(){set.seed(100);x <- runif(500);y<-sin(x);y}; system.time(replicate(1000, func1()));system.time(replicate(1000, func2())); #5 the vectorized code is much more faster

owned_after_n<-function(n){P<-5000;R<-11.5;return (P*(1+R/100)**n);}; owned_after_n(1:15) #6

find_biggest<-function(x){best=0; for(i in 1:20){if(x[i]>best){best=x[i]}};return (best)};set.seed(100);x <- sample(1 : 100, 20, replace = TRUE); print(find_biggest(x));

sort(x) #8

order(x) #first element in list returned from order tells you what should u put at first place when you order #9

a<-c(1,7,9,4,5,20,49,3,10,11);sum_loop<-function(x){sum=0; for(i in 1:length(x)){sum=sum+x[i]};return(sum);};system.time(replicate(1000,sum_loop(a)));system.time(replicate(1000,sum(a))) #10 the vecterized vertion is much more faster

a<-c(1,7,9,4,5,20,49,3,10,11);cumsum_loop<-function(x){sum_loop=0;cumsum_loop_var=vector(); for(i in 1:length(x)){sum_loop=sum_loop+x[i];cumsum_loop_var[i]=sum_loop};return(cumsum_loop_var)} system.time(replicate(1000,cumsum_loop(a)));system.time(replicate(10000,cumsum(a))) ##11 the vectorized version is much more faster.

a<-c(1,7,9,4,5,20,49,3,10,11); cos_loop<-function(x){cos_loop=vector();for( i in 1:length(x)){cos_loop[i]=cos(x[i])};return (cos_loop)};system.time(replicate(1000,cos_loop(a)));system.time(replicate(1000,cos(a))) #12 the vectorized vertin is much more faster.

set.seed(100);X <- matrix(rnorm(10 * 5), 10, 5);for(i in 1:length(X)){if(X[i]<=0.2){X[i]=0}else{X[i]=1}};X #13

x<-c(1, 6, 2, 9); y<-c(4, 2, 5, 2); a=vector();for(i in 1:length(x)){a[i]<-x[i]*y[i]};a #14

b= vector();for(i in 1:length(x)){b[i]<-x[i]/y[i]};b #15

c=vector(); for(i in 1:length(x)){c[i]<-x[i]/(2+x[i]+y[i])};c #16

rolling_dies<-function(){sum=0; for(i in 1:20){sum=sum+sample(1:6,1,replace=T);if(sum>=20){return (i)}}};map<-rep(0,20);map_names<-strsplit(toString(1:20), ", ");names(map)<-unlist(map_names);for(i in 1:10000){n=rolling_dies();map[toString(n)]=map[toString(n)]+1};map # The most likely times to row the dies is 6.