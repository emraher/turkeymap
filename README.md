
<!-- README.md is generated from README.Rmd. Please edit that file -->

# turkeymap

<!-- badges: start -->
<!-- badges: end -->

The goal of turkeymap is to provide province and district data for
Turkey.

## Installation

You can install `turkeymap` from github with:

``` r
devtools::install_github("emraher/turkeymap")

tr_provinces <- turkeymap::provinces
tr_districts <- turkeymap::districts
```

# Shapefile Sources for Turkey

-   [giscoR](https://github.com/dieghernan/giscoR)
-   [European Environment
    Agency](https://www.eea.europa.eu/data-and-maps/data/eea-reference-grids-2/gis-files/turkey-shapefile)
-   [DIVA-GIS](http://biogeo.ucdavis.edu/data/diva/adm/TUR_adm.zip)
-   [HDX](https://data.humdata.org/dataset/turkey-administrative-boundaries-levels-0-1-2)
-   [Free GIS Data](http://freegisdata.org/place/224880/)
-   [GEOFABRIK](http://download.geofabrik.de/europe/turkey.html)
-   [GADM](https://gadm.org/download_country_v3.html)
-   [Tarim ve Orman Bak. - GEODATA](http://geodata.ormansu.gov.tr/)
-   [GIS Data Repositories by Dr. Karen
    Payne](https://docs.google.com/spreadsheets/d/1utQRlrX3lJniBjWE3rNjLZeTRsbjH-zdjxNmXhhvO9Q/htmlview)
-   [Coğrafi Veri Servis
    Havuzu](https://cbs.csb.gov.tr/cografi-veri-servis-havuzu-i-5438)
-   **[MÜLKİ İDARE BİRİMLERİ - Not Shapefile
    Source](https://www.e-icisleri.gov.tr/Anasayfa/MulkiIdariBolumleri.aspx)**

# HDX

HDX provides the most recent shapefiles for Turkey. You can download
shapefiles for Administrative Boundaries from [this
link](https://data.humdata.org/dataset/turkey-administrative-boundaries-levels-0-1-2).

You can import shp file into R using `sf` library.

``` r
library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────────────── tidyverse 1.3.0 ──
#> ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
#> ✓ tibble  3.0.4     ✓ dplyr   1.0.2
#> ✓ tidyr   1.1.2     ✓ stringr 1.4.0
#> ✓ readr   1.4.0     ✓ forcats 0.5.0
#> ── Conflicts ────────────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
library(sf)
#> Linking to GEOS 3.8.1, GDAL 3.1.1, PROJ 6.3.1
dt <- st_read("./data-raw/hdx/tur_polbnda_adm2.shp")
#> Reading layer `tur_polbnda_adm2' from data source `/Users/emraher/Dropbox/gitRepos/SourcesOnGitHub/turkeymap/data-raw/hdx/tur_polbnda_adm2.shp' using driver `ESRI Shapefile'
#> Simple feature collection with 973 features and 12 fields
#> geometry type:  MULTIPOLYGON
#> dimension:      XY
#> bbox:           xmin: 25.67 ymin: 35.81 xmax: 44.82 ymax: 42.1
#> geographic CRS: WGS 84
hdx_dt <- st_set_geometry(dt, NULL)
```

# `tuik`

[`tuik`](https://github.com/emraher/tuik) package also provides
functions for mapping data.

# Amendments

### 1990s

-   [İKİ İL İLE BEŞ İLÇE
    KURULMASI](http://www.mevzuat.gov.tr/MevzuatMetin/1.5.3647.pdf)
    -   Kanun Numarası: 3647
    -   Kabul Tarihi: 16/05/1990
    -   Yayımlandığı R. Gazete Tarih : 18/05/1990
    -   Yayımlandığı R. Gazete Sayı : 20522
-   [130 İlçe Kurulması Hakkında
    Kanun](http://www.resmigazete.gov.tr/arsiv/20523.pdf)
    -   Kanun Numarası: 3644
    -   Kabul Tarihi: 09/05/1990
    -   Yayımlandığı R. Gazete Tarih : 20/05/1990
    -   Yayımlandığı R. Gazete Sayı : 20523
-   [Onüç İlçe ve İki İl Kurulması Hakkında
    Kanun](http://www.resmigazete.gov.tr/arsiv/21247_1.pdf)
    -   Kanun Numarası: 3806
    -   Kabul Tarihi: 27/05/1992
    -   Yayımlandığı R. Gazete Tarih : 03/06/1992
    -   Yayımlandığı R. Gazete Sayı : 21247
-   [3 İlçe Kurulması Hakkında
    Kanun](http://www.mevzuat.gov.tr/MevzuatMetin/1.5.3949.pdf)
    -   Kanun Numarası: 3949
    -   Kabul Tarihi: 27/12/1993
    -   Yayımlandığı R. Gazete Tarih : 29/12/1993
    -   Yayımlandığı R. Gazete Sayı : 21803
-   [SEKİZ İLÇE VE ÜÇ İL
    KURULMASI](http://www.mevzuat.gov.tr/MevzuatMetin/4.5.550.pdf)
    -   Kanun Numarası: 550 KHK
    -   Kabul Tarihi:
    -   Yayımlandığı R. Gazete Tarih : 06/06/1995
    -   Yayımlandığı R. Gazete Sayı : 22305
-   [Üç İlçe ve Bir İl Kurulması ile 190 Sayılı Kanun Hükmünde
    Kararnamenin Eki Cetvellerde
    Değişiklik…](http://www.resmigazete.gov.tr/arsiv/22801.pdf)
    -   Kanun Numarası: 4200
    -   Kabul Tarihi: 24/10/1996
    -   Yayımlandığı R. Gazete Tarih : 28/10/1996
    -   Yayımlandığı R. Gazete Sayı : 22801
-   [Aydın İli Yenihisar İlçesi Adının “Didim” Olarak Değiştirilmesi
    Hakkında Kanun](http://www.resmigazete.gov.tr/arsiv/22959.pdf)
    -   Kanun Numarası: 4235
    -   Kabul Tarihi: 03/04/1997
    -   Yayımlandığı R. Gazete Tarih : 09/04/1997
    -   Yayımlandığı R. Gazete Sayı : 22959
-   [Bir İl ve İki İlçe
    Kurulması](http://www.resmigazete.gov.tr/arsiv/23901.pdf)
    -   Kanun Numarası: 190 KHK
    -   Kabul Tarihi:
    -   Yayımlandığı R. Gazete Tarih : 09/12/1999
    -   Yayımlandığı R. Gazete Sayı : 23901

### 2000s

-   [BÜYÜKŞEHİR BELEDİYESİ SINIRLARI İÇERİSİNDE İLÇE KURULMASI VE BAZI
    KANUNLARDA DEĞİŞİKLİK YAPILMASI HAKKINDA
    KANUN](http://www.resmigazete.gov.tr/eskiler/2008/03/20080322M1-1.htm)
    -   Kanun Numarası: 5747
    -   Kabul Tarihi: 06/03/2008
    -   Yayımlandığı R. Gazete Tarih : 22/03/2008
    -   Yayımlandığı R. Gazete Sayı : 26824
-   [ON DÖRT İLDE BÜYÜKŞEHİR BELEDİYESİ VE YİRMİ YEDİ İLÇE
    KURULMASI](http://www.mevzuat.gov.tr/MevzuatMetin/1.5.6360.pdf)
    -   Kanun Numarası: 6360
    -   Kabul Tarihi: 12/11/2012
    -   Yayımlandığı R. Gazete Tarih : 06/12/2012
    -   Yayımlandığı R. Gazete Sayı : 28489
