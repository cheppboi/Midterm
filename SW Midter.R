tuna <- read.csv("midtermseatwork_data.csv", TRUE, ",")
tuna.subO <- tuna[tuna$Ozone > 25 , drop = FALSE]
tuna.subTO <- tuna.subO[tuna.subO$Temp > 70 , , drop = FALSE]
tuna.subTOO <- na.omit(tuna.subTO)
mean(tuna.subTOO$Wind)

tuna <- read.csv("midtermseatwork_data.csv", TRUE, ",")
tuna.June <- tuna[tuna$Month == 9 & tuna$Day ==8, ,drop = FALSE]
mean(tuna.June$Temp)

tuna <- read.csv("midtermseatwork_data.csv", TRUE, ",")
sub = subset(tuna, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, min)