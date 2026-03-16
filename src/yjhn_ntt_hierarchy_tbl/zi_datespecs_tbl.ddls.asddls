@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IT0041 - Date Specs'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_DateSpecs_TBL
  as select from zdt_datespecs
{
  key pernr as Pernr,
      begda as Begda,
      endda as Endda,
      dar01 as Dar01,
      dat01 as Dat01,
      dar02 as Dar02,
      dat02 as Dat02,
      dar03 as Dar03,
      dat03 as Dat03
}
