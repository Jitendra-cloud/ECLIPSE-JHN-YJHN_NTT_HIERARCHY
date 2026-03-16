@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0000 - Actions : Projection'
@Metadata.allowExtensions: true
define root view entity ZC_Actions_TBL
  provider contract transactional_query
  as projection on ZR_ACTIONS_TBL
{
  key Pernr,
      Begda,
      Endda,
      Massn,
      Massg,
      Stat2,
      /* Associations */
      _OrgAss : redirected to composition child ZC_OrgAssignment_TBL
}
