clear all
log using 15.log, replace
use "/Users/kenatuitoek/Desktop/diss/Gravity_dta_V202211/Gravity_V202211.dta", clear

*******creating region column in terms of continents both for origin and destination countries

**Origin Regions 
generate region_o = ""

replace region_o = "Africa" if country_id_o=="DZA" | country_id_o=="AGO" | country_id_o== "BEN"|country_id_o== "BWA"| country_id_o== "BFA"| country_id_o== "BDI"| country_id_o=="CMR"| country_id_o=="CPV"| country_id_o=="TCD"| country_id_o=="COM"| country_id_o=="COG"| country_id_o=="CIV"| country_id_o=="DJI"| country_id_o=="EGY"| country_id_o=="GNQ"| country_id_o=="ERI"| country_id_o=="ETH"| country_id_o== "GAB"| country_id_o=="GMB"| country_id_o=="GHA"| country_id_o=="GIN"| country_id_o=="GNB"| country_id_o=="KEN"| country_id_o=="LSO"| country_id_o=="LBR"| country_id_o=="LBY"| country_id_o=="MDG"| country_id_o=="MLI"| country_id_o=="MWI"| country_id_o=="TGO"| country_id_o=="TUN"| country_id_o=="UGA"| country_id_o=="ESH"| country_id_o=="ZMB"| country_id_o=="ZWE"|country_id_o=="ZAF"|country_id_o=="TZA"|country_id_o=="SYC"|country_id_o=="SWZ"|country_id_o=="STP"|country_id_o=="SSD"|country_id_o=="SOM"|country_id_o=="SLE"|country_id_o=="SHN"|country_id_o=="SEN"|country_id_o=="SDN.1"|country_id_o=="SDN.2"|country_id_o=="RWA"|country_id_o=="REU"|country_id_o=="NGA"|country_id_o=="NER"|country_id_o=="NAM"|country_id_o=="MYT"|country_id_o=="GBR"|country_id_o=="MRT"|country_id_o=="MOZ"|country_id_o=="MAR"|country_id_o=="ETH.1"|country_id_o=="ETH.2"|country_id_o=="COD"|country_id_o=="CAF"

replace region_o = "Europe" if country_id_o=="AUT"|country_id_o=="BEL"|country_id_o=="BGR"|country_id_o=="HRV"| country_id_o=="CYP"|country_id_o=="CZE"|country_id_o=="DZA"|country_id_o=="DNK"|country_id_o=="EST"|country_id_o=="FIN"|country_id_o=="FRA"|country_id_o=="DEU"|country_id_o=="GRC"|country_id_o=="HUN"|country_id_o=="IRL"|country_id_o=="ITA"|country_id_o=="LVA"|country_id_o=="LTU"|country_id_o=="LUX"|country_id_o=="MLT"|country_id_o=="DLD"|country_id_o=="POL"|country_id_o=="PRT"|country_id_o=="ROU"|country_id_o=="SVK"|country_id_o=="SVN"|country_id_o=="ESP"|country_id_o=="SWE"|country_id_o=="GBR"|country_id_o=="ALB"|country_id_o=="AND"|country_id_o=="BIH"|country_id_o=="BLR"|country_id_o=="CHE"|country_id_o=="CSK"|country_id_o=="DDR"|country_id_o=="DEU.1"|country_id_o=="DEU.2"|country_id_o=="FRO"|country_id_o=="GIB"|country_id_o=="ISL"|country_id_o=="LIE"|country_id_o=="MCO"|country_id_o=="MDA"|country_id_o=="MKD"|country_id_o=="MNE"|country_id_o=="NLD"|country_id_o=="NOR"|country_id_o=="SCG"|country_id_o=="SMR"|country_id_o=="SRB"|country_id_o=="UKR"|country_id_o=="VAT"|country_id_o=="YUG"

replace region_o = "Asia" if country_id_o=="AFG"|country_id_o=="ARM"|country_id_o=="AZE"|country_id_o=="BHR"|country_id_o=="BGD"|country_id_o=="BTN"|country_id_o=="IOT"|country_id_o=="BRN"|country_id_o=="KHM"|country_id_o=="CHN"|country_id_o=="CCK"|country_id_o=="GEO"|country_id_o=="HKG"|country_id_o=="IND"|country_id_o=="IDN"|country_id_o=="IRN"|country_id_o=="IRQ"|country_id_o=="ISR"|country_id_o=="JPN"|country_id_o=="JOR"|country_id_o=="KAZ"|country_id_o=="KWT"|country_id_o=="KGZ"|country_id_o=="LAO"|country_id_o=="LBN"|country_id_o=="MAC"|country_id_o=="MYS"|country_id_o=="MDV"|country_id_o=="MNG"|country_id_o=="MMR"|country_id_o=="NPL"|country_id_o=="PRK"|country_id_o=="OMN"|country_id_o=="PAK"|country_id_o=="PSE"|country_id_o=="PHL"|country_id_o=="QAT"|country_id_o=="SAU"|country_id_o=="SGP"|country_id_o=="KOR"|country_id_o=="LKA"|country_id_o=="SYR"|country_id_o=="TWN"|country_id_o=="TJK"|country_id_o=="THA"|country_id_o=="TUR"|country_id_o=="TKM"|country_id_o=="ARE"|country_id_o=="UZB"|country_id_o=="VNM"|country_id_o=="YEM"|country_id_o=="IDN.1"|country_id_o=="IDN.2"|country_id_o=="MYS.1"|country_id_o=="MYS.2"|country_id_o=="PAK.1"|country_id_o=="PAK.2"|country_id_o=="RUS"|country_id_o=="SUN"|country_id_o=="TLS"|country_id_o=="VDR"|country_id_o=="VNM.1"|country_id_o=="VNM.2"|country_id_o=="YEM.1"|country_id_o=="YEM.2"|country_id_o=="YMD"

replace region_o = "North America" if country_id_o=="AIA"|country_id_o=="ATG"|country_id_o=="ABW"|country_id_o=="BRB"|country_id_o=="BLZ"|country_id_o=="BMU"|country_id_o=="BES"|country_id_o=="VGB"|country_id_o=="CAN"|country_id_o=="CYM"|country_id_o=="CRI"|country_id_o=="CUB"|country_id_o=="CUW"|country_id_o=="DMA"|country_id_o=="DOM"|country_id_o=="SLV"|country_id_o=="GRL"|country_id_o=="GRD"|country_id_o=="GLP"|country_id_o=="GTM"|country_id_o=="HTI"|country_id_o=="HND"|country_id_o=="JAM"|country_id_o=="MTQ"|country_id_o=="MEX"|country_id_o=="MSR"|country_id_o=="ANT"|country_id_o=="NIC"|country_id_o=="PAN"|country_id_o=="PRI"|country_id_o=="BLM"|country_id_o=="KNA"|country_id_o=="LCA"|country_id_o=="MAF"|country_id_o=="SPM"|country_id_o=="VCT"|country_id_o=="SXM"|country_id_o=="BHS"|country_id_o=="TTO"|country_id_o=="USA"|country_id_o=="VIR"|country_id_o=="ANT.1"|country_id_o=="ANT.2"|country_id_o=="TCA"

replace region_o = "Oceania" if country_id_o=="ASM"|country_id_o=="AUS"|country_id_o=="COK"|country_id_o=="CXR"|country_id_o=="FJI"|country_id_o=="FSM"|country_id_o=="GUM"|country_id_o=="KIR"|country_id_o=="MHL"|country_id_o=="MNP"|country_id_o=="MUS"|country_id_o=="NCL"|country_id_o=="NFK"|country_id_o=="NIU"|country_id_o=="NRU"|country_id_o=="NZL"|country_id_o=="PCN"|country_id_o=="PLW"|country_id_o=="PNG"|country_id_o=="PYF"|country_id_o=="SLB"|country_id_o=="TKL"|country_id_o=="TON"|country_id_o=="TUV"|country_id_o=="VUT"|country_id_o=="WLF"|country_id_o=="WSM"

**Destination Regions 
generate region_d = ""

replace region_d = "Africa" if country_id_d=="DZA" | country_id_d=="AGO" | country_id_d== "BEN"|country_id_d== "BWA"| country_id_d== "BFA"| country_id_d== "BDI"| country_id_d=="CMR"| country_id_d=="CPV"| country_id_d=="TCD"| country_id_d=="COM"| country_id_d=="COG"| country_id_d=="CIV"| country_id_d=="DJI"| country_id_d=="EGY"| country_id_d=="GNQ"| country_id_d=="ERI"| country_id_d=="ETH"| country_id_d== "GAB"| country_id_d=="GMB"| country_id_d=="GHA"| country_id_d=="GIN"| country_id_d=="GNB"| country_id_d=="KEN"| country_id_d=="LSO"| country_id_d=="LBR"| country_id_d=="LBY"| country_id_d=="MDG"| country_id_d=="MLI"| country_id_d=="MWI"| country_id_d=="TGO"| country_id_d=="TUN"| country_id_d=="UGA"| country_id_d=="ESH"| country_id_d=="ZMB"| country_id_d=="ZWE"|country_id_d=="ZAF"|country_id_d=="TZA"|country_id_d=="SYC"|country_id_d=="SWZ"|country_id_d=="STP"|country_id_d=="SSD"|country_id_d=="SOM"|country_id_d=="SLE"|country_id_d=="SHN"|country_id_d=="SEN"|country_id_d=="SDN.1"|country_id_d=="SDN.2"|country_id_d=="RWA"|country_id_d=="REU"|country_id_d=="NGA"|country_id_d=="NER"|country_id_d=="NAM"|country_id_d=="MYT"|country_id_d=="GBR"|country_id_d=="MRT"|country_id_d=="MOZ"|country_id_d=="MAR"|country_id_d=="ETH.1"|country_id_d=="ETH.2"|country_id_d=="COD"|country_id_d=="CAF"

replace region_d = "Europe" if country_id_d=="AUT"|country_id_d=="BEL"|country_id_d=="BGR"|country_id_d=="HRV"| country_id_d=="CYP"|country_id_d=="CZE"|country_id_d=="DZA"|country_id_d=="DNK"|country_id_d=="EST"|country_id_d=="FIN"|country_id_d=="FRA"|country_id_d=="DEU"|country_id_d=="GRC"|country_id_d=="HUN"|country_id_d=="IRL"|country_id_d=="ITA"|country_id_d=="LVA"|country_id_d=="LTU"|country_id_d=="LUX"|country_id_d=="MLT"|country_id_d=="DLD"|country_id_d=="POL"|country_id_d=="PRT"|country_id_d=="ROU"|country_id_d=="SVK"|country_id_d=="SVN"|country_id_d=="ESP"|country_id_d=="SWE"|country_id_d=="GBR"|country_id_d=="ALB"|country_id_d=="AND"|country_id_d=="BIH"|country_id_d=="BLR"|country_id_d=="CHE"|country_id_d=="CSK"|country_id_d=="DDR"|country_id_d=="DEU.1"|country_id_d=="DEU.2"|country_id_d=="FRO"|country_id_d=="GIB"|country_id_d=="ISL"|country_id_d=="LIE"|country_id_d=="MCO"|country_id_d=="MDA"|country_id_d=="MKD"|country_id_d=="MNE"|country_id_d=="NLD"|country_id_d=="NOR"|country_id_d=="SCG"|country_id_d=="SMR"|country_id_d=="SRB"|country_id_d=="UKR"|country_id_d=="VAT"|country_id_d=="YUG"

replace region_d = "Asia" if country_id_d=="AFG"|country_id_d=="ARM"|country_id_d=="AZE"|country_id_d=="BHR"|country_id_d=="BGD"|country_id_d=="BTN"|country_id_d=="IOT"|country_id_d=="BRN"|country_id_d=="KHM"|country_id_d=="CHN"|country_id_d=="CCK"|country_id_d=="GEO"|country_id_d=="HKG"|country_id_d=="IND"|country_id_d=="IDN"|country_id_d=="IRN"|country_id_d=="IRQ"|country_id_d=="ISR"|country_id_d=="JPN"|country_id_d=="JOR"|country_id_d=="KAZ"|country_id_d=="KWT"|country_id_d=="KGZ"|country_id_d=="LAO"|country_id_d=="LBN"|country_id_d=="MAC"|country_id_d=="MYS"|country_id_d=="MDV"|country_id_d=="MNG"|country_id_d=="MMR"|country_id_d=="NPL"|country_id_d=="PRK"|country_id_d=="OMN"|country_id_d=="PAK"|country_id_d=="PSE"|country_id_d=="PHL"|country_id_d=="QAT"|country_id_d=="SAU"|country_id_d=="SGP"|country_id_d=="KOR"|country_id_d=="LKA"|country_id_d=="SYR"|country_id_d=="TWN"|country_id_d=="TJK"|country_id_d=="THA"|country_id_d=="TUR"|country_id_d=="TKM"|country_id_d=="ARE"|country_id_d=="UZB"|country_id_d=="VNM"|country_id_d=="YEM"|country_id_d=="IDN.1"|country_id_d=="IDN.2"|country_id_d=="MYS.1"|country_id_d=="MYS.2"|country_id_d=="PAK.1"|country_id_d=="PAK.2"|country_id_d=="RUS"|country_id_d=="SUN"|country_id_d=="TLS"|country_id_d=="VDR"|country_id_d=="VNM.1"|country_id_d=="VNM.2"|country_id_d=="YEM.1"|country_id_d=="YEM.2"|country_id_d=="YMD"

replace region_d = "South America" if country_id_d=="ARG"|country_id_d=="BOL"|country_id_d=="BRA"|country_id_d=="CHL"|country_id_d=="COL"|country_id_d=="ECU"|country_id_d=="FLK"|country_id_d=="GUF"|country_id_d=="GUY"|country_id_d=="PRY"|country_id_d=="PER"|country_id_d=="SUR"|country_id_d=="URY"|country_id_d=="VEN"

replace region_d = "Oceania" if country_id_d=="ASM"|country_id_d=="AUS"|country_id_d=="COK"|country_id_d=="CXR"|country_id_d=="FJI"|country_id_o=="FSM"|country_id_d=="GUM"|country_id_d=="KIR"|country_id_d=="MHL"|country_id_d=="MNP"|country_id_d=="MUS"|country_id_d=="NCL"|country_id_d=="NFK"|country_id_d=="NIU"|country_id_d=="NRU"|country_id_d=="NZL"|country_id_d=="PCN"|country_id_d=="PLW"|country_id_d=="PNG"|country_id_d=="PYF"|country_id_d=="SLB"|country_id_d=="TKL"|country_id_d=="TON"|country_id_d=="TUV"|country_id_d=="VUT"|country_id_d=="WLF"|country_id_d=="WSM"

*** generating dummy variable for WTO membership 

gen wtoboth = 0
replace wtoboth=1 if wto_o==1 & wto_d==1

*** generating dummy variable for PTA membership 
generate ptaboth = 0 
replace ptaboth = 1 if rta_type != .

*** generating country pair fixed effects 
egen countrypair =group(iso3num_o iso3num_d)


******BASELINE REGRESSIONS*********

**PPMLHDFE 1 - wtoboth, noabsorb 
eststo: ppmlhdfe tradeflow_imf_d wtoboth if year >= 1960, noabsorb vce(cluster countrypair)

**PPMLHDFE 2 - ptaboth, noabsorb 
eststo: ppmlhdfe tradeflow_imf_d ptaboth if year >= 1960 , noabsorb vce(cluster countrypair)

**PPMLHDFE 3 - wtoboth ptaboth, noabsorb
eststo: ppmlhdfe tradeflow_imf_d wtoboth ptaboth if year >= 1960 , noabsorb vce(cluster countrypair)

**PPMLHDFE 4 - wtoboth,ptaboth, countrypair absorbed 
eststo: ppmlhdfe tradeflow_imf_d wtoboth ptaboth if year >= 1960, a(countrypair) vce(cluster countrypair)

**PPMLHDFE 5 - wtoboth,ptaboth, countrypair,import x year export x year absorbeded
eststo : ppmlhdfe tradeflow_imf_d wtoboth ptaboth if year >= 1960, a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

**PPMLHDFE 6 - wtoboth,ptaboth, countrypair,import x year export x year absorbeded, removal of financial crisis
eststo : ppmlhdfe tradeflow_imf_d wtoboth ptaboth if (year >=1960 & year < 2007 | year > 2009), a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

***Output results table 
esttab est1 est2 est3 est4 est5 est6 using "baselinereg-f.rtf" , replace cells(b(star fmt(3))  se(par fmt(3))) starlevels(* 0.10 ** 0.05 *** 0.01) stats(r2 N,  fmt(3 0)  labels("R-squared" "Observations")) wide 

*************************** ROBUSTNESS CHECKS ********************

********PTA HETEROGENEITY
label list type

** 1 CU  , 2 CU & EIA,  3 EIA, 4 FTA,  5 FTA & EIA, 6 PSA, 7 PSA & EIA


***generating separate dummy variables for different RTAtypes

generate pta_cu = 0
replace pta_cu = 1 if rta_type == 1 

generate pta_cu_eia = 0
replace pta_cu_eia = 1 if rta_type == 2 

generate pta_eia = 0 
replace pta_eia = 1 if rta_type == 3

generate pta_fta = 0 
replace pta_fta = 1 if rta_type == 4

generate pta_fta_eia = 0 
replace pta_fta_eia = 1 if rta_type == 5

generate pta_psa = 0 
replace pta_psa = 1 if rta_type == 6

generate pta_psa_eia = 0 
replace pta_psa_eia = 1 if rta_type == 7

**deep vs shallow --INSIGNIFICANT

generate pta_deep = 0 
replace pta_deep = 1 if rta_type == 2 | rta_type == 3 | rta_type == 5 | rta_type == 7

generate pta_shallow = 0 
replace pta_shallow = 1 if rta_type == 1 | rta_type == 4 | rta_type == 6


***CU, FTA, OTHER
generate pta_customs_union = 0
replace pta_customs_union = 1 if rta_type == 1 | rta_type == 2

generate pta_free_trade = 0
replace pta_free_trade = 1 if rta_type == 4 | rta_type == 5

generate pta_other = 0
replace pta_other = 1 if rta_type == 3 | rta_type == 7


******** GLOBALISATION EFFECTS 
*****AFRICA IMPORT BORDER YEAR DUMMY 
gen AFR_BRDR_imp = 1 if region_o != "Africa" & region_d == "Africa"
replace AFR_BRDR_imp = 0 if AFR_BRDR_imp == . 

forvalues year = 1990(4)2021 {
	gen Afr_Imp_`year' = AFR_BRDR_imp * (year ==`year')
	replace Afr_Imp_`year' = 0 if Afr_Imp_`year' == . 
}

******** LAG ON PTA VARIABLES 
***lag on custom union, free trade area, other 

rangestat (mean) pta_fta_lag2 = pta_free_trade, interval(year -2 -2) by(countrypair)
rangestat (mean) pta_fta_lag4 = pta_free_trade, interval(year -4 -4) by(countrypair)
rangestat (mean) pta_fta_lag6 = pta_free_trade, interval(year -6 -6) by(countrypair)

rangestat (mean) pta_cu_lag2 = pta_customs_union, interval(year -2 -2) by(countrypair)
rangestat (mean) pta_cu_lag4 = pta_customs_union, interval(year -4 -4) by(countrypair)
rangestat (mean) pta_cu_lag6 = pta_customs_union, interval(year -6 -6) by(countrypair)

rangestat (mean) pta_other_lag2 = pta_other, interval(year -2 -2) by(countrypair)
rangestat (mean) pta_other_lag4 = pta_other, interval(year -4 -4) by(countrypair)
rangestat (mean) pta_other_lag6 = pta_other, interval(year -6 -6) by(countrypair)




***** ROBUSTNESS CHECKS REGRESSIONS *********


**PPMLHDFE 7 - wtoboth,pta_custom union pta_free_trade pta_other , (countrypair,import x year export x year)absorbed 
eststo: ppmlhdfe tradeflow_imf_d wtoboth pta_customs_union pta_free_trade pta_other if (year >=1960 & year < 2007 | year > 2009), a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

**PPMLHDFE 8 - wtoboth all types of pta, (countrypair,import x year export x year)absorbed 
eststo: ppmlhdfe tradeflow_imf_d wtoboth pta_cu pta_cu_eia pta_eia pta_fta pta_fta_eia pta_psa_eia if (year >=1960 & year < 2007 | year > 2009), a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

**PPMLHDFE 9 - wtoboth, pta_custom union pta_free_trade pta_other, africa-import border variables,(countrypair,import x year export x year)absorbed 
eststo: ppmlhdfe tradeflow_imf_d wtoboth pta_customs_union pta_free_trade pta_other Afr_Imp_1990 Afr_Imp_1994 Afr_Imp_1998 Afr_Imp_2002 Afr_Imp_2006 Afr_Imp_2010 Afr_Imp_2014 Afr_Imp_2018 if (year >=1960 & year < 2007 | year > 2009),a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

**PPMLHDFE 10 - wtoboth, pta_custom union pta_free_trade pta_other, pta lag variables, (countrypair,import x year export x year)absorbed
eststo: ppmlhdfe tradeflow_imf_d wtoboth pta_customs_union pta_cu_lag2 pta_cu_lag4 pta_cu_lag6 pta_free_trade pta_fta_lag2 pta_fta_lag4 pta_fta_lag6 pta_other pta_other_lag2 pta_other_lag4 pta_other_lag6 if (year >=1960 & year < 2007 | year > 2009),a(countrypair i.iso3num_o#i.year i.iso3num_d#i.year) vce(cluster countrypair)

***Output results table 
esttab est6 est7 est8 est9 est10 using "robustnesschecks-f.rtf" , replace cells(b(star fmt(3))  se(par fmt(3))) starlevels(* 0.10 ** 0.05 *** 0.01) stats(r2 N,  fmt(3 0)  labels("R-squared" "Observations")) wide 
