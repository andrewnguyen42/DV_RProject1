df <- read.csv("../01\ Data/titanic_sex.csv")

require(extrafont)
ggplot() +
    coord_cartesian() +
    scale_x_discrete() +
    scale_y_continuous() +
    labs(title='Titanic') +
    labs(x="SURVIVED", y=paste("FARE")) +
    layer(data=df,
        mapping=aes(x=(as.character(SEX)), y=as.numeric(as.character(FARE)), color=as.character(SURVIVED)),
        stat="identity",
        stat_params=list(),
        geom="point",
        geom_params=list(),
        position=position_jitter(width=0.3, height=0)

    )
