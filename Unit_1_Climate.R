# NRS
# 2022-01-26
### Class notes

##Load in data

### Antarctica ice mass loss
ant_ice_loss = read.table("data/antarctica_mass_200204_202111.txt", skip=31, 
                          sep="", header = FALSE, col.names = c("decimal_date", 
                          "mass_Gt", "sigma_Gt")) 

### Greenland ice mass loss
grn_ice_loss = read.table("data/greenland_mass_200204_202111.txt", skip=31, 
                          sep="", header = FALSE, col.names = c("decimal_date", 
                          "mass_Gt", "sigma_Gt")) 

summary(ant_ice_loss)
summary(grn_ice_loss)

### Visualize

plot(mass_Gt ~ decimal_date, data = ant_ice_loss)
plot(mass_Gt ~ decimal_date, data = grn_ice_loss, ylab = "Greenland Mass Loss (Gt)")

grn_min = min(grn_ice_loss$mass_Gt)
range(grn_ice_loss$mass_Gt)
plot(mass_Gt ~ decimal_date, data = ant_ice_loss, type ="l", ylim = range(grn_ice_loss$mass_Gt))
lines(mass_Gt ~ decimal_date, data = grn_ice_loss, col="red")

### Add NA to account for gap between missions

data_break = data.frame(decimal_date = 2018, mass_Gt = NA, sigma_Gt = NA)
data_break

ant_ice_loss_with_NA = rbind(ant_ice_loss, data_break)
ant_ice_loss_with_NA

order(ant_ice_loss_with_NA$decimal_date)
ant_ice_loss_with_NA = ant_ice_loss_with_NA[order(ant_ice_loss_with_NA$decimal_date), ]

grn_ice_loss_with_NA = rbind(grn_ice_loss, data_break)
grn_ice_loss_with_NA

order(grn_ice_loss_with_NA$decimal_date)
grn_ice_loss_with_NA = grn_ice_loss_with_NA[order(grn_ice_loss_with_NA$decimal_date), ]


plot(mass_Gt~decimal_date, data = ant_ice_loss_with_NA, type = "l", ylim = range(grn_ice_loss$mass_Gt))
lines(mass_Gt ~ decimal_date, data = grn_ice_loss_with_NA, col="red")
