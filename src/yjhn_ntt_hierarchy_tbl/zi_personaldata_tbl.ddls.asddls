@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0002 - Personal Data'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PersonalData_TBL
  as select from zdt_personaldata
{
  key pernr as Pernr,
      begda as Begda,
      endda as Endda,
      anred as Anred,
      vorna as Vorna,
      nachn as Nachn,
      midnm as Midnm,
      gesch as Gesch,
      gbdat as Gbdat,
      rufnm as Rufnm
}
