### �e�l�q�� and �����Z�ļҲ� ### INPUT profit5 �V�q

#performance=function (x=profit){

DD=rep(0,length(profit))	##�֭p���l�V�q
topprofit=rep(profit[1],length(profit))	##�̤j��Q

for (m in 2:length(profit)){
	if (sum(profit[1:m])>topprofit[m-1]){
	topprofit[m:length(profit)]=sum(profit[1:m])}##�p�G�зs���A�N�겣�s���]��topprofit

	DD[m]=sum(profit[1:m])-topprofit[m]	##�p��ثe���s�����l
}



plot(DD,type="h",col="darkgreen",lwd=2,ylab="Cumulative Profit & Loss",xlab="Trading Day",main="2010.05.25 ~ 2015.08.19",ylim=c(min(DD),max(cumsum(profit
))))
par(new=T)
plot(cumsum(profit),type="h",col="Tomato",lwd=2,ylab="Cumulative Profit & Loss",xlab="Trading Day",main="2010.05.25 ~ 2015.08.19",ylim=c(min(DD),max(cumsum(profit))))

TPT=rep(1,1);i=1

for (m in 2:length(profit)){
	if (topprofit[m]>topprofit[m-1]){points(m,topprofit[m],pch=4,col="red")
	TPT[i]=m
	i=i+1}
}

DDT=rep(TPT[1],1)
for (i in 2:length(TPT)){	DDT[i]=TPT[i]-TPT[i-1]}


cat(" �l�q(��5�I����O):",sum(profit),"\n"
,"����Ѽ�:",length(profit),"\n"
,"�`�������:",length(profit[profit!=0]),"\n"
,"�����C���l�q(��5�I����O):",sum(profit)/length(profit[profit!=0]),"\n"
,"��Q����:",length(profit[profit>0]),"\n"
,"�Ӳv:",length(profit[profit>0])*100/length(profit[profit!=0]),"%","\n"
,"������:",mean(profit[profit>0]),"\n"
,"������:",mean(profit[profit<0]),"\n"
,"�̤j�s�����l:",abs(min(DD)),"\n"
,"�̤j�s�����l�϶�(��):",tail(sort(DDT),5),"\n"
,"��Q�]�l:",sum(profit[profit>0])/-sum(profit[profit<0]),"\n"
,"SQN:",(sum(profit)/length(profit[profit!=0]))*length(profit[profit!=0])^0.5/sd(profit[profit!=0]),"\n"
,"�`��Q/MDD:",sum(profit)/abs(min(DD)),"\n")
#,"�i��:",kk1,kk2,tt1,tt2,"\n")

#}