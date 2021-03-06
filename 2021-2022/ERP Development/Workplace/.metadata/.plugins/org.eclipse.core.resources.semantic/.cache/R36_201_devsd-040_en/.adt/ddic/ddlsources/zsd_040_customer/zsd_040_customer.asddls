@AbapCatalog.sqlViewName: 'ZSD040CUSTOMER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer'
define view ZSD_040_CUSTOMER as select from kna1 {
key mandt as Mandt,
key kunnr as Kunnr,
land1 as Land1,
name1 as Name1,
name2 as Name2,
ort01 as Ort01,
pstlz as Pstlz,
regio as Regio,
sortl as Sortl,
stras as Stras,
telf1 as Telf1,
telfx as Telfx,
xcpdk as Xcpdk,
adrnr as Adrnr,
mcod1 as Mcod1,
mcod2 as Mcod2,
mcod3 as Mcod3,
anred as Anred,
aufsd as Aufsd,
bahne as Bahne,
bahns as Bahns,
bbbnr as Bbbnr,
bbsnr as Bbsnr,
begru as Begru,
brsch as Brsch,
bubkz as Bubkz,
datlt as Datlt,
erdat as Erdat,
ernam as Ernam,
exabl as Exabl,
faksd as Faksd,
fiskn as Fiskn,
knazk as Knazk,
knrza as Knrza,
konzs as Konzs,
ktokd as Ktokd,
kukla as Kukla,
lifnr as Lifnr,
lifsd as Lifsd,
locco as Locco,
loevm as Loevm,
name3 as Name3,
name4 as Name4,
niels as Niels,
ort02 as Ort02,
pfach as Pfach,
pstl2 as Pstl2,
counc as Counc,
cityc as Cityc,
rpmkr as Rpmkr,
sperr as Sperr,
spras as Spras,
stcd1 as Stcd1,
stcd2 as Stcd2,
stkza as Stkza,
stkzu as Stkzu,
telbx as Telbx,
telf2 as Telf2,
teltx as Teltx,
telx1 as Telx1,
lzone as Lzone,
xzemp as Xzemp,
vbund as Vbund,
stceg as Stceg,
dear1 as Dear1,
dear2 as Dear2,
dear3 as Dear3,
dear4 as Dear4,
dear5 as Dear5,
gform as Gform,
bran1 as Bran1,
bran2 as Bran2,
bran3 as Bran3,
bran4 as Bran4,
bran5 as Bran5,
ekont as Ekont,
umsat as Umsat,
umjah as Umjah,
uwaer as Uwaer,
jmzah as Jmzah,
jmjah as Jmjah,
katr1 as Katr1,
katr2 as Katr2,
katr3 as Katr3,
katr4 as Katr4,
katr5 as Katr5,
katr6 as Katr6,
katr7 as Katr7,
katr8 as Katr8,
katr9 as Katr9,
katr10 as Katr10,
stkzn as Stkzn,
umsa1 as Umsa1,
txjcd as Txjcd,
periv as Periv,
abrvw as Abrvw,
inspbydebi as Inspbydebi,
inspatdebi as Inspatdebi,
ktocd as Ktocd,
pfort as Pfort,
werks as Werks,
dtams as Dtams,
dtaws as Dtaws,
duefl as Duefl,
hzuor as Hzuor,
sperz as Sperz,
etikg as Etikg,
civve as Civve,
milve as Milve,
kdkg1 as Kdkg1,
kdkg2 as Kdkg2,
kdkg3 as Kdkg3,
kdkg4 as Kdkg4,
kdkg5 as Kdkg5,
xknza as Xknza,
fityp as Fityp,
stcdt as Stcdt,
stcd3 as Stcd3,
stcd4 as Stcd4,
stcd5 as Stcd5,
xicms as Xicms,
xxipi as Xxipi,
xsubt as Xsubt,
cfopc as Cfopc,
txlw1 as Txlw1,
txlw2 as Txlw2,
ccc01 as Ccc01,
ccc02 as Ccc02,
ccc03 as Ccc03,
ccc04 as Ccc04,
bonded_area_confirm as BondedAreaConfirm,
donate_mark as DonateMark,
cassd as Cassd,
knurl as Knurl,
j_1kfrepre as J1kfrepre,
j_1kftbus as J1kftbus,
j_1kftind as J1kftind,
confs as Confs,
updat as Updat,
uptim as Uptim,
nodel as Nodel,
dear6 as Dear6,
cvp_xblck as CvpXblck,
suframa as Suframa,
rg as Rg,
exp as Exp,
uf as Uf,
rgdate as Rgdate,
ric as Ric,
rne as Rne,
rnedate as Rnedate,
cnae as Cnae,
legalnat as Legalnat,
crtn as Crtn,
icmstaxpay as Icmstaxpay,
indtyp as Indtyp,
tdt as Tdt,
comsize as Comsize,
decregpc as Decregpc,
kna1_eew_cust as Kna1EewCust,
/vso/r_palhgt as /vso/rPalhgt,
/vso/r_pal_ul as /vso/rPalUl,
/vso/r_pk_mat as /vso/rPkMat,
/vso/r_matpal as /vso/rMatpal,
/vso/r_i_no_lyr as /vso/rINoLyr,
/vso/r_one_mat as /vso/rOneMat,
/vso/r_one_sort as /vso/rOneSort,
/vso/r_uld_side as /vso/rUldSide,
/vso/r_load_pref as /vso/rLoadPref,
/vso/r_dpoint as /vso/rDpoint,
alc as Alc,
pmt_office as PmtOffice,
fee_schedule as FeeSchedule,
duns as Duns,
duns4 as Duns4,
psofg as Psofg,
psois as Psois,
pson1 as Pson1,
pson2 as Pson2,
pson3 as Pson3,
psovn as Psovn,
psotl as Psotl,
psohs as Psohs,
psost as Psost,
psoo1 as Psoo1,
psoo2 as Psoo2,
psoo3 as Psoo3,
psoo4 as Psoo4,
psoo5 as Psoo5,
j_1iexcd as J1iexcd,
j_1iexrn as J1iexrn,
j_1iexrg as J1iexrg,
j_1iexdi as J1iexdi,
j_1iexco as J1iexco,
j_1icstno as J1icstno,
j_1ilstno as J1ilstno,
j_1ipanno as J1ipanno,
j_1iexcicu as J1iexcicu,
aedat as Aedat,
usnam as Usnam,
j_1isern as J1isern,
j_1ipanref as J1ipanref,
j_3getyp as J3getyp,
j_3greftyp as J3greftyp,
pspnr as Pspnr,
coaufnr as Coaufnr,
j_3gagext as J3gagext,
j_3gagint as J3gagint,
j_3gagdumi as J3gagdumi,
j_3gagstdi as J3gagstdi,
lgort as Lgort,
kokrs as Kokrs,
kostl as Kostl,
j_3gabglg as J3gabglg,
j_3gabgvg as J3gabgvg,
j_3gabrart as J3gabrart,
j_3gstdmon as J3gstdmon,
j_3gstdtag as J3gstdtag,
j_3gtagmon as J3gtagmon,
j_3gzugtag as J3gzugtag,
j_3gmaschb as J3gmaschb,
j_3gmeinsa as J3gmeinsa,
j_3gkeinsa as J3gkeinsa,
j_3gblsper as J3gblsper,
j_3gkleivo as J3gkleivo,
j_3gcalid as J3gcalid,
j_3gvmonat as J3gvmonat,
j_3gabrken as J3gabrken,
j_3glabrech as J3glabrech,
j_3gaabrech as J3gaabrech,
j_3gzutvhlg as J3gzutvhlg,
j_3gnegmen as J3gnegmen,
j_3gfristlo as J3gfristlo,
j_3geminbe as J3geminbe,
j_3gfmgue as J3gfmgue,
j_3gzuschue as J3gzuschue,
j_3gschprs as J3gschprs,
j_3ginvsta as J3ginvsta,
/sapcem/dber,
/sapcem/kvmeq
    
}
