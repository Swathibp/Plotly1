library(plotly)
fit<-lm(height~weight,data=women)
plot_ly(women,x=~weight,y=~height,type="scatter",mode="markers") %>% add_lines(x=~weight,y=fitted(fit)) %>% layout(title="Linear regression line of women's height and weight")