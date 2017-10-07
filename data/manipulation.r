data = read.csv('results.csv', header=T)
sink("manipulation.out")

# age groups: <25; 25-29; 30-35; >35
data$agecat = cut( data$BIRTHYEAR, c(2000, 1991, 1987, 1980, 1970) )
data$agecat = as.factor( data$agecat )
table( data$BIRTHYEAR , data$agecat )

data$group = data$GROUP
data$group = as.factor( data$group )
table( data$GROUP , data$group )

data$vrexpr = data$VREXPR
data$vrexpr = as.factor( data$vrexpr )
table( data$VREXPR , data$vrexpr )

data$instance = data$INSTANCE
data$instance = as.factor( data$instance )
table( data$INSTANCE , data$instance )

""
"Manipulation tests:"
""

"Quality ~ Age"
kruskal.test( QUALITY ~ agecat, data )

"Fatigue ~ Age"
kruskal.test( FATIGUE ~ agecat, data )

"Quality ~ Group"
kruskal.test( QUALITY ~ group, data )

"Fatigue ~ Group"
kruskal.test( FATIGUE ~ group, data )

"Quality ~ VR Experience"
kruskal.test( QUALITY ~ vrexpr, data )

"Fatigue ~ VR Experience"
kruskal.test( FATIGUE ~ vrexpr, data )

"Quality ~ Instance"
wilcox.test( QUALITY ~ instance, data )

"Fatigue ~ Instance"
wilcox.test( FATIGUE ~ instance, data )


sink()