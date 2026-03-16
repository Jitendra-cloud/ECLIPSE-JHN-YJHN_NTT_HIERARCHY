@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0000 - Actions'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_ACTIONS_TBL
  as select from ZI_ACTIONS_TBL
  
  composition of many ZR_OrgAssignment_TBL as _OrgAss
{
  key Pernr,
      Begda,
      Endda,
      Massn,
      Massg,
      Stat2,
      
      _OrgAss
}
