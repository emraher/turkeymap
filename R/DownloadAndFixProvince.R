library(tidyverse)
library(sp)

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
# Download data----
# -------------------------------------------------------------------------- ###
# maplevel <- 1
# url <- paste0("https://biogeo.ucdavis.edu/data/gadm3.6/Rsf/gadm36_TUR_", maplevel, "_sf.rds")
# download.file(url, "./data-raw/TUR_adm1.sf.rds")
il_sf <- readRDS("./data-raw/TUR_adm1.sf.rds")

# Some district names are wrong. Fix them.
il_sf[il_sf$NAME_1 == "Afyon", "NAME_1"] <- "Afyonkarahisar"
il_sf[il_sf$NAME_1 == "K. Maras", "NAME_1"] <- "Kahramanmaras"
il_sf[il_sf$NAME_1 == "Kinkkale", "NAME_1"] <- "Kirikkale"
il_sf[il_sf$NAME_1 == "Zinguldak", "NAME_1"] <- "Zonguldak"
il_sf$NAME_1 <- as.vector(sapply(il_sf$NAME_1, to.plain))
il_sf$NAME_1 <- toupper(il_sf$NAME_1)

# -------------------------------------------------------------------------- ###
# Save----
# -------------------------------------------------------------------------- ###
saveRDS(il_sf, "./data/il_sf.rds")
