days=1:365
count=1135
repeatn=1000
varstor=numeric()
for (j in 1:repeatn){
brownlow = 0
for (i in 1:count) {
  sam=sample(days,size=35,replace = T)
  y=duplicated(sam)
  if (sum(y)>0) brownlow=brownlow+1
  else brownlow = brownlow - 2
}
varstor[j]=brownlow
}
hist(varstor)
var(varstor)
