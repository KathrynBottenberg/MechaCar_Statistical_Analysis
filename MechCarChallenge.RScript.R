##Part 1:
## load packages
library(dplyr)

##import and read csv MechaCar_mpg
carMpg <- read.csv(file = 'MechaCar_mpg.csv')

## Create a linear model that passes in all 6 variables and uses carMpg as data
multi.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
               + ground_clearance + AWD, data = carMpg)
##  use summary() to determine p-value and r-squared value
summary(multi.lm)

## Part 2:

##import and read csv suspension_coil
suspension <- read.csv(file = 'Suspension_Coil.csv')

## create summary df of suspension coils PSI column
totalsummary <- suspension %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep')
## create a df using groupby() and summarize() to group each manufacturing lot and PSI
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI),
                                                                        Num_Coil=n(), .groups = 'keep')
##Part 3:
## use t-test to determine if the PSI across manufacturers is statistically different from population mean=1500
t.test(suspension$PSI, mu=1500)

## use t-test with subset() to determine if PSI for each lot is statistically different from population mean
lot1 <- subset(suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)