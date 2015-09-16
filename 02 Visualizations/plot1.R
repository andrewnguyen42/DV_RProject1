df <- read.csv("../01\ Data/titanic.csv")

require(extrafont)
ggplot() +
    coord_cartesian() +
    scale_x_continuous() +
    scale_y_continuous() +
    labs(title='Titanic') +
    labs(x="Age", y=paste("FARE")) +
    layer(data=df,
        mapping=aes(x=as.numeric(as.character(AGE)), y=as.numeric(as.character(FARE)), color=SEX),
        stat="identity",
        stat_params=list(),
        geom="point",
        geom_params=list(),
        position=position_jitter(width=0.3, height=0)

    )
