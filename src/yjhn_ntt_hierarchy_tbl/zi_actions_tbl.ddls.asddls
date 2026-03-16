@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0000 - Actions'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_ACTIONS_TBL
  as select from zdt_actions
{
  key pernr as Pernr,
      begda as Begda,
      endda as Endda,
      massn as Massn,
      massg as Massg,
      stat2 as Stat2
}
