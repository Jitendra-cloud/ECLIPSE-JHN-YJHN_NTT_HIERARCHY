@EndUserText.label: 'Action(Hire, Termination, Status Update)'
//@Analytics.document.serviceClassName: 'ABAP:ZCLJS_CUST_ENT_DT'
@ObjectModel.query.implementedBy: 'ABAP:ZCLJS_CUST_ENT_DT_ACTION'
define root custom entity ZC_R_Action
{
  key PersonnelNumber  : abap.numc( 8 );
      StartDate        : abap.dats;
      EndDate          : abap.dats;
      ActionType       : abap.char( 2 );
      ReasonForAction  : abap.char( 2 );
      EmploymentStatus : abap.numc( 1 );
      _OrgAssignment   : composition [0..1] of ZC_R_ORGASSIGNMENT;
      _PersonalData    : composition [0..1] of ZC_R_PERSONALDATA;
      _DateSpec        : composition [0..1] of ZC_R_DATESPEC;
      _Communication   : composition [0..*] of ZC_R_COMMUNICATION;
}
