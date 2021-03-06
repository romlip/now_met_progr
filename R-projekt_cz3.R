# Matryca wykres�w rozproszenia dla wybranych parametr�w ksi�yc�w Jowisza:
# promie�, p�o� wielka, albedo, inklinacja
# 
# �r�d�o: https://nssdc.gsfc.nasa.gov/planetary/factsheet/joviansatfact.html
# Niestety widoczne znaczne r�nice warto�ci pomi�dzy 4-ema najwi�kszymi ksi�ycami, tzw. galileuszowymi, a pozosta�ymi
# w zwi�zku z czym korelacje na wsp�lnym wykresie s� �le widoczne

dane <- read.table("jovian_satellites3.txt", header=TRUE, colClasses=c("factor", "character", rep("numeric", 4)))
typ_ksiezyca <- c("red", "blue")
plot(dane[,3:6],  pch = 1, cex = 1, col=typ_ksiezyca[dane$type], upper.panel=NULL, main="Ksi�yce Jowisza")
legend("topright", title= "Legenda", legend=c("Ksi�yce Galileuszowe", "Mniejsze ksi�yce"), pch = 1, col=typ_ksiezyca, cex=1, inset = .2)