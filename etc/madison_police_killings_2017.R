library(ggplot2, ggthemes)

killings <- data.frame(
  City = c(
    "Madison",
    "Chicago",
    "100 largest U.S. cities",
    "Milwaukee",
    "Philadelphia",
    "U.S. average",
    "Detroit",
    "Minneapolis",
    "New York City",
    "Buffalo"),
  
  Police.killings = c(
    25.73,
    22.26,
    20.79, 
    16.81, 
    15.07,
    14.54,
    14.01,
    13.07,
    7.34,
    0)
)

svg(filename="C:\\Users\\Jackson\\Shared\\attacus2017\\images\\madison\\madison-police-killings-2016.svg")

ggplot(killings, aes(x=reorder(City, Police.killings), y=Police.killings, fill=Police.killings)
) + geom_col(
) + coord_flip(
) + theme_bw(
) + scale_fill_gradient(low = "yellow", high = "red"
) + theme(
  axis.text.y =
    element_text(
        color = "black"
      , face = c("plain", "plain", "plain", "plain", "bold", "plain", "plain", "bold", "plain", "bold")
      , size = c(12, 12, 12, 12, 14, 12, 12, 14, 12, 14)
  ), axis.title.x = element_text(face = "bold", size = 18)
   , plot.title = element_text(face = "bold", size = 18, hjust = 0.5)
) + labs(x = "", y = "Police killings per 1,000,000 population"
) + guides(fill = FALSE
) + ggtitle(paste(sep = "\n"
  ,"The rate of fatal officer involved shootings"
  ,"varies drastically across police departments."
  ,"For example, a sample of a few cities,"
  ,"using data covering Jan, 2013 through Dec, 2016:"
))

dev.off()
