df <- read.csv("../01\ Data/titanic_sex.csv")

df <- df[df$AGE!='null' ,]

summary(as.numeric(df$AGE))

ageRange <- c()

for (i in 1:length(df$AGE)) {
  age <- as.numeric(as.character(df$AGE))[i]

  
  if(age<=22)
    ageRange<-c(ageRange,0)
  if(age>22 && age <= 34)
    ageRange<-c(ageRange,1)
  if(age>34 && age <= 49)
    ageRange<-c(ageRange,2)
  if(age>49)
    ageRange<-c(ageRange,3)
}

df <- data.frame(df,ageRange)


require(extrafont)
ggplot() +
    coord_cartesian() +
    scale_x_continuous() +
    scale_y_continuous() +
    labs(title='Titanic') +
    labs(y="SURVIVED", x=paste("AGE QUARTILE")) +
    layer(data=df,
        mapping=aes(y=as.numeric(as.character(SURVIVED)), x=as.numeric(as.character(ageRange)), color=SEX),
        stat="identity",
        stat_params=list(),
        geom="point",
        geom_params=list(),
        position=position_jitter(width=0.3, height=0.3)

    )
