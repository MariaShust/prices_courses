ds = read.csv('courses_eng_analytics4.csv', sep = ',')
options(scipen = 999)


m0 <- lm(Price_with_sale ~ log(Duration) + Rating + Sale + Chat + Lifetime_access + Teacher + Installment + 
           + Certificate + Start, data = ds)
summary(m0)


m <- lm(log(Price_with_sale) ~ log(Duration) + Teacher + Chat, data = ds)
summary(m)
