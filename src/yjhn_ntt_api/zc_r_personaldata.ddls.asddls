@EndUserText.label: 'Name, Date of Birth, Gender'
define custom entity ZC_R_PERSONALDATA
  // with parameters parameter_name : parameter_type
{
  key PersonnelNumber : abap.numc( 8 );
      StartDate       : abap.dats;
      EndDate         : abap.dats;
      FormOfAddress   : abap.char( 15 );
      FirstName       : abap.char( 40 );
      LastName        : abap.char( 40 );
      MiddleName      : abap.char( 40 );
      GenderKey       : abap.char( 1 );
      DateOfBirth     : abap.dats;
      KnownAsNickName : abap.char( 40 );
      _Action         : association to parent ZC_R_Action on $projection.PersonnelNumber = _Action.PersonnelNumber;

}
