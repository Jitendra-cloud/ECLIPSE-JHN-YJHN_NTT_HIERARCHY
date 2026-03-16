@EndUserText.label: 'Communication - Email, Manager & Limit'
define custom entity ZC_R_COMMUNICATION
  // with parameters parameter_name : parameter_type
{
  key PersonnelNumber : abap.numc( 8 );
  key SubType         : abap.char( 4 );
      StartDate       : abap.dats;
      EndDate         : abap.dats;
      UserIdLong      : abap.char( 241 );
      _Action         : association to parent ZC_R_Action on $projection.PersonnelNumber = _Action.PersonnelNumber;
}
