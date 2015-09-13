png("./../00\ Doc/plot5.png",width=800,height=550,units="px")

df <- read.csv("./../01\ Data/titanic_sex_age.csv")

require(extrafont)
ggplot() +
    coord_cartesian() +
    scale_x_discrete() +
    scale_y_continuous() +
    facet_grid(PCLASS~SURVIVED,labeller=label_both) +
    labs(title='Titanic where age <= 10') +
    labs(x="SURVIVED", y=paste("FARE")) +
    layer(data=df,
        mapping=aes(x=(as.character(SEX)), y=as.numeric(as.character(FARE)), color=SEX),
        stat="identity",
        stat_params=list(),
        geom="point",
        geom_params=list(),
        position=position_jitter(width=0.3, height=0)

    )
dev.off()

