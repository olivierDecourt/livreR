generateRPointShapes<-function(){
  oldPar<-par()
  par(font=2, mar=c(0.5,0,0,0))
  y=rev(c(rep(1,6),rep(2,5), rep(3,5), rep(4,5), rep(5,5)))
  x=c(rep(1:5,5),6)
  plot(x, y, pch = 0:25, cex=5, ylim=c(1,5.5), xlim=c(1,6.5), 
       axes=FALSE, xlab="", ylab="", bg="blue")
  text(x, y, labels=0:25, pos=3, offset=2)
  par(mar=oldPar$mar,font=oldPar$font )
}
generateRPointShapes()


png(filename = "c:/temp/figure8.2.png",
    height = 20, width = 20, units="cm", res=400)
generateRLineTypes<-function(){
  oldPar<-par()
  par(font=2, mar=c(0,0,0,0))
  plot(1, pch="", ylim=c(0,6), xlim=c(0,0.7),  axes=FALSE,xlab="", ylab="")
  for(i in 0:6) lines(c(0.3,0.7), c(i,i), lty=i, lwd=3)
  text(rep(0.1,6), 0:6, labels=c("0 ou \"blank\" ", "1 ou \"solid\" ", "2 ou \"dashed\" ", "3 ou \"dotted\" ",
                                 "4 ou \"dotdash\" ", "5 ou \"longdash\" ", "6 ou \"twodash\" "))
  par(mar=oldPar$mar,font=oldPar$font )
}
generateRLineTypes()
dev.off()