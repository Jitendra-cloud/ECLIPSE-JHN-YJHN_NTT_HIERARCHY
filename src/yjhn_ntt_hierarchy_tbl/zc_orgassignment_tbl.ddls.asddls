@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0001 - Organization Assignment : Projection'
@Metadata.allowExtensions: true
define view entity ZC_OrgAssignment_TBL
  as projection on ZR_OrgAssignment_TBL
{
  key Pernr,
      Begda,
      Endda,
      Bukrs,
      Werks,
      Btrtl,
      Persg,
      Persk,
      Kostl,
      Abkrs,
      /* Associations */
      _Actions : redirected to parent ZC_Actions_TBL
}
