
<!-- README.md is generated from README.Rmd. Please edit that file -->

turkeymap
=========

<!-- badges: start -->
<!-- badges: end -->

The goal of turkeymap is to provide province and district data for
Turkey.

Installation
------------

You can install `turkeymap` from github with:

    devtools::install_github("emraher/turkeymap")

    tr_provinces <- turkeymap::provinces
    tr_districts <- turkeymap::districts

Shapefile Sources for Turkey
============================

-   [Leventcan](https://github.com/Leventcan/spatial_files)
-   [HGM](https://www.harita.gov.tr/kategori-14-ucretsiz-urunler.html)
-   [Tarim ve Orman Bak.](http://veri.tarimorman.gov.tr/)
-   [OGM](https://cbs.ogm.gov.tr/vatandas/)
-   [MTA](https://www.mta.gov.tr/v3.0/)
-   [Coğrafi Veri Servis
    Havuzu](https://cbs.csb.gov.tr/cografi-veri-servis-havuzu-i-5438)
-   **[MÜLKİ İDARE BİRİMLERİ - Not Shapefile
    Source](https://www.e-icisleri.gov.tr/Anasayfa/MulkiIdariBolumleri.aspx)**
-   [giscoR](https://github.com/dieghernan/giscoR)
-   [European Environment
    Agency](https://www.eea.europa.eu/data-and-maps/data/eea-reference-grids-2/gis-files/turkey-shapefile)
-   [DIVA-GIS](http://biogeo.ucdavis.edu/data/diva/adm/TUR_adm.zip)
-   [HDX](https://data.humdata.org/dataset/turkey-administrative-boundaries-levels-0-1-2)
-   [Free GIS Data](http://freegisdata.org/place/224880/)
-   [GEOFABRIK](http://download.geofabrik.de/europe/turkey.html)
-   [GADM](https://gadm.org/download_country_v3.html)
-   [GIS Data Repositories by Dr. Karen
    Payne](https://docs.google.com/spreadsheets/d/1utQRlrX3lJniBjWE3rNjLZeTRsbjH-zdjxNmXhhvO9Q/htmlview)


GADM
====

Problems with GADM data
-----------------------

GADM data has some wrong information. Some province and district names
are either wrong or missing Turkish characters. **This must be fixed.**
The problems are caused by some recent changes. For example, Merkez
district in Antalya was split into 5 different districts. GADM has not
updated their files to reflect these changes.

GADM Download
-------------

[`sptools`](https://github.com/epix-project/sptools) can download maps
from GADM database. Install from GitHub using,

    devtools::install_github("epix-project/sptools")

To download maps for Turkey and to plot them run the following codes,

    tr <- sptools::gadm("Turkey", "sf", 0, save = FALSE, intlib = FALSE)
    tr_province <- sptools::gadm("Turkey", "sf", 1, save = FALSE, intlib = FALSE)
    tr_district <- sptools::gadm("Turkey", "sf", 2, save = FALSE, intlib = FALSE)

    # Plot maps

    plot(tr$geometry) # Turkey

    plot(tr_province$geometry) # Turkey - Provinces

    plot(tr_district$geometry) # Turkey - Districts

Amendments
==========

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
