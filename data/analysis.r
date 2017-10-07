data = read.csv('results.csv', header=T)
sink("analysis.out")

""
"Analysis:"
""

"Means:"
attach(data)
aggregate(. ~ STIMULI, data = data,
  FUN=mean, na.rm=TRUE)

data$stimuli = data$STIMULI
data$stimuli = as.factor( data$stimuli )
table( data$STIMULI , data$stimuli )

"Quality ~ Stimuli"
kruskal.test( QUALITY ~ stimuli, data )

"Fatigue ~ Stimuli"
kruskal.test( FATIGUE ~ stimuli, data )


sink()