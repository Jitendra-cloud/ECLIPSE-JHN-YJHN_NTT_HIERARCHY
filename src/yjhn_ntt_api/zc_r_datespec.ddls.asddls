@EndUserText.label: 'Hire Date, Service Date'
define custom entity ZC_R_DATESPEC
  // with parameters parameter_name : parameter_type
{
  key PersonnelNumber : abap.numc( 8 );
      StartDate       : abap.dats;
      EndDate         : abap.dats;
      DateType01      : abap.char( 2 );
      Date01          : abap.dats;
      DateType02      : abap.char( 2 );
      Date02          : abap.dats;
      DateType03      : abap.char( 2 );
      Date03          : abap.dats;
      _Action         : association to parent ZC_R_Action on $projection.PersonnelNumber = _Action.PersonnelNumber;
}
