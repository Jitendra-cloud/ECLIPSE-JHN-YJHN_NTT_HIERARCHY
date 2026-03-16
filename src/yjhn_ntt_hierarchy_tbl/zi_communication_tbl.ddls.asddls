@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0105 - Communication'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_Communication_TBL
  as select from zdt_comm
{
  key pernr       as Pernr,
      begda       as Begda,
      endda       as Endda,
      usrid_long1 as UsridLong1,
      usrid_long2 as UsridLong2,
      usrid_long3 as UsridLong3,
      usrid_long4 as UsridLong4,
      usrid_long5 as UsridLong5,
      usrid_long6 as UsridLong6
}
