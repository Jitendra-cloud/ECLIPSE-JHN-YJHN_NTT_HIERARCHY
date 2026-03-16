@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0001 - Organization Assignment'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_OrgAssignment_TBL
  as select from ZI_OrgAssignment_TBL

  association to parent ZR_ACTIONS_TBL as _Actions on $projection.Pernr = _Actions.Pernr
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

      _Actions
}
