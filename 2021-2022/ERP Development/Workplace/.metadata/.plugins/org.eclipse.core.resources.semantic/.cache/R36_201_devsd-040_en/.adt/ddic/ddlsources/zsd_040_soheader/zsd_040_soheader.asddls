@AbapCatalog.sqlViewName: 'ZSD040SOHEADER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SOHeader data definition'
define view ZSD_040_SOHEADER as select from vbak {
    
    key mandt as Mandt,
    key vbeln as Vbeln,
    erdat as Erdat,
    erzet as Erzet,
    ernam as Ernam,
    angdt as Angdt,
    bnddt as Bnddt,
    audat as Audat,
    vbtyp as Vbtyp,
    trvog as Trvog,
    auart as Auart,
    augru as Augru,
    gwldt as Gwldt,
    submi as Submi,
    lifsk as Lifsk,
    faksk as Faksk,
    netwr as Netwr,
    waerk as Waerk,
    vkorg as Vkorg,
    vtweg as Vtweg,
    spart as Spart,
    vkgrp as Vkgrp,
    vkbur as Vkbur,
    gsber as Gsber,
    gskst as Gskst,
    guebg as Guebg,
    gueen as Gueen,
    knumv as Knumv,
    vdatu as Vdatu,
    vprgr as Vprgr,
    autlf as Autlf,
    vbkla as Vbkla,
    vbklt as Vbklt,
    kalsm as Kalsm,
    vsbed as Vsbed,
    fkara as Fkara,
    awahr as Awahr,
    ktext as Ktext,
    bstnk as Bstnk,
    bsark as Bsark,
    bstdk as Bstdk,
    bstzd as Bstzd,
    ihrez as Ihrez,
    bname as Bname,
    telf1 as Telf1,
    mahza as Mahza,
    mahdt as Mahdt,
    kunnr as Kunnr,
    kostl as Kostl,
    stafo as Stafo,
    stwae as Stwae,
    aedat as Aedat,
    kvgr1 as Kvgr1,
    kvgr2 as Kvgr2,
    kvgr3 as Kvgr3,
    kvgr4 as Kvgr4,
    kvgr5 as Kvgr5,
    knuma as Knuma,
    kokrs as Kokrs,
    ps_psp_pnr as PsPspPnr,
    kurst as Kurst,
    kkber as Kkber,
    knkli as Knkli,
    grupp as Grupp,
    sbgrp as Sbgrp,
    ctlpc as Ctlpc,
    cmwae as Cmwae,
    cmfre as Cmfre,
    cmnup as Cmnup,
    cmngv as Cmngv,
    amtbl as Amtbl,
    hityp_pr as HitypPr,
    abrvw as Abrvw,
    abdis as Abdis,
    vgbel as Vgbel,
    objnr as Objnr,
    bukrs_vf as BukrsVf,
    taxk1 as Taxk1,
    taxk2 as Taxk2,
    taxk3 as Taxk3,
    taxk4 as Taxk4,
    taxk5 as Taxk5,
    taxk6 as Taxk6,
    taxk7 as Taxk7,
    taxk8 as Taxk8,
    taxk9 as Taxk9,
    xblnr as Xblnr,
    zuonr as Zuonr,
    vgtyp as Vgtyp,
    kalsm_ch as KalsmCh,
    agrzr as Agrzr,
    aufnr as Aufnr,
    qmnum as Qmnum,
    vbeln_grp as VbelnGrp,
    scheme_grp as SchemeGrp,
    abruf_part as AbrufPart,
    abhod as Abhod,
    abhov as Abhov,
    abhob as Abhob,
    rplnr as Rplnr,
    vzeit as Vzeit,
    stceg_l as StcegL,
    landtx as Landtx,
    xegdr as Xegdr,
    enqueue_grp as EnqueueGrp,
    dat_fzau as DatFzau,
    fmbdat as Fmbdat,
    vsnmr_v as VsnmrV,
    handle as Handle,
    proli as Proli,
    cont_dg as ContDg,
    crm_guid as CrmGuid,
    upd_tmstmp as UpdTmstmp,
    msr_id as MsrId,
    tm_ctrl_key as TmCtrlKey,
    oipbl as Oipbl,
    last_changed_by_user as LastChangedByUser,
    handoverloc as Handoverloc,
    ext_ref_doc_id as ExtRefDocId,
    ext_rev_tmstmp as ExtRevTmstmp,
    _dataaging as Dataaging,
    abstk as Abstk,
    bestk as Bestk,
    cmpsc as Cmpsc,
    cmpsd as Cmpsd,
    cmpsi as Cmpsi,
    cmpsj as Cmpsj,
    cmpsk as Cmpsk,
    cmps_cm as CmpsCm,
    cmps_te as CmpsTe,
    cmgst as Cmgst,
    costa as Costa,
    dcstk as Dcstk,
    fksak as Fksak,
    fmstk as Fmstk,
    fsstk as Fsstk,
    gbstk as Gbstk,
    lfgsk as Lfgsk,
    lfstk as Lfstk,
    lsstk as Lsstk,
    manek as Manek,
    rfgsk as Rfgsk,
    rfstk as Rfstk,
    spstg as Spstg,
    trsta as Trsta,
    uvall as Uvall,
    uvals as Uvals,
    uvfak as Uvfak,
    uvfas as Uvfas,
    uvprs as Uvprs,
    uvvlk as Uvvlk,
    uvvls as Uvvls,
    uvk01 as Uvk01,
    uvk02 as Uvk02,
    uvk03 as Uvk03,
    uvk04 as Uvk04,
    uvk05 as Uvk05,
    uvs01 as Uvs01,
    uvs02 as Uvs02,
    uvs03 as Uvs03,
    uvs04 as Uvs04,
    uvs05 as Uvs05,
    wbstk as Wbstk,
    total_emcst as TotalEmcst,
    total_slcst as TotalSlcst,
    total_lccst as TotalLccst,
    total_pcsta as TotalPcsta,
    dummy_salesdoc_incl_eew_ps as DummySalesdocInclEewPs,
    zapcgkh as Zapcgkh,
    apcgk_extendh as ApcgkExtendh,
    zabdath as Zabdath,
    ad01fareg as Ad01fareg,
    ad01basdoc as Ad01basdoc,
    lastvchr as Lastvchr,
    psm_budat as PsmBudat,
    fsh_kvgr6 as FshKvgr6,
    fsh_kvgr7 as FshKvgr7,
    fsh_kvgr8 as FshKvgr8,
    fsh_kvgr9 as FshKvgr9,
    fsh_kvgr10 as FshKvgr10,
    fsh_rereg as FshRereg,
    fsh_cq_check as FshCqCheck,
    fsh_vrsn_status as FshVrsnStatus,
    fsh_transaction as FshTransaction,
    fsh_vas_cg as FshVasCg,
    fsh_candate as FshCandate,
    fsh_ss as FshSs,
    fsh_os_stg_change as FshOsStgChange,
    j_3gkbaul as J3gkbaul,
    mill_appl_id as MillApplId,
    tas as Tas,
    betc as Betc,
    mod_allow as ModAllow,
    cancel_allow as CancelAllow,
    pay_method as PayMethod,
    bpn as Bpn,
    rep_freq as RepFreq,
    logsysb as Logsysb,
    kalcd as Kalcd,
    multi as Multi,
    sppaym as Sppaym,
    wtysc_clm_hdr as WtyscClmHdr
}