png("./../00\ Doc/newplot.png",width=800,height=550,units="px")

df <- read.csv("./../01\ Data/titanic_sex.csv")

require(extrafont)
ggplot() +
    coord_cartesian() +
    scale_x_continuous() +
    scale_y_continuous() +
    labs(title='Titanic') +
    labs(x="SURVIVED", y=paste("AGE")) +
    layer(data=df,
        mapping=aes(x=as.numeric(as.character(SURVIVED)), y=as.numeric(as.character(AGE)), color=SEX),
        stat="identity",
        stat_params=list(),
        geom="point",
        geom_params=list(),
        position=position_jitter(width=0.3, height=0.3)

    )
dev.off()

