@EndUserText.label: 'C. Code, Cost Ctr, Per. Area, Emp. Grp'
define custom entity ZC_R_ORGASSIGNMENT
  // with parameters parameter_name : parameter_type
{
  key PersonnelNumber  : abap.numc( 8 );
      StartDate        : abap.dats;
      EndDate          : abap.dats;
      CompanyCode      : abap.char( 4 );
      PersonnelArea    : abap.char( 4 );
      PersonnelSubArea : abap.char( 4 );
      EmployeeGroup    : abap.char( 1 );
      EmployeeSubGroup : abap.char( 2 );
      CostCenter       : abap.char( 10 );
      PayrollArea      : abap.char( 2 );
      _Action          : association to parent ZC_R_Action on $projection.PersonnelNumber = _Action.PersonnelNumber;
}
