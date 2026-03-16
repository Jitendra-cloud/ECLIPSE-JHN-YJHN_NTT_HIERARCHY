@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0001 - Organization Assignment'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_OrgAssignment_TBL
  as select from zdt_orgassig
{
  key pernr as Pernr,
      begda as Begda,
      endda as Endda,
      bukrs as Bukrs,
      werks as Werks,
      btrtl as Btrtl,
      persg as Persg,
      persk as Persk,
      kostl as Kostl,
      abkrs as Abkrs
}
