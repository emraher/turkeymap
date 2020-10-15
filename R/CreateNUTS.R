library(tidyverse)
library(sp)
library(sf)
library(mapview)

dt <- read_rds("./data/il_sf.rds")

# -------------------------------------------------------------------------- ###
# Function to fix turkish characters----
# -------------------------------------------------------------------------- ###
to.plain <- function(s) {

  # 1 character substitutions
  old1 <- "çğşıüöÇĞŞİÖÜ"
  new1 <- "cgsiuocgsiou"
  s1 <- chartr(old1, new1, s)

  # 2 character substitutions
  old2 <- c("œ", "ß", "æ", "ø")
  new2 <- c("oe", "ss", "ae", "oe")
  s2 <- s1
  for (i in seq_along(old2)) s2 <- gsub(old2[i], new2[i], s2, fixed = TRUE)

  s2
}

# -------------------------------------------------------------------------- ###
# Merge for IBBS1----
# -------------------------------------------------------------------------- ###
tr <- read_csv("./data-raw/ibbs.csv")
nuts3_sf <- merge(dt, tr, by.x = "NAME_1", by.y = "CITY_EN", all.x = TRUE)

# -------------------------------------------------------------------------- ###
# Merge polygons----
# -------------------------------------------------------------------------- ###
# dttt <- dtn
# st_geometry(dttt) <- NULL

nuts1_sf <- nuts3_sf %>%
  group_by(NUTS1) %>%
  summarize()

nuts2_sf <- nuts3_sf %>%
  group_by(NUTS2) %>%
  summarize()

plot(st_geometry(nuts1_sf))
plot(st_geometry(nuts2_sf))
plot(st_geometry(nuts3_sf))

write_rds(nuts1_sf, "./data/nuts1_sf.rds")
write_rds(nuts2_sf, "./data/nuts2_sf.rds")


nuts3_sf <- nuts3_sf %>% select(NAME_1, REGION, starts_with("NUTS"), geometry)

write_rds(nuts3_sf, "./data/nuts3_sf.rds")
