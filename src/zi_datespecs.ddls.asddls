@EndUserText.label: 'IT0041 - Date Specs'
define custom entity ZI_DateSpecs
{
  key pernr : abap.numc( 8 );
      begda : abap.dats;
      endda : abap.dats;
      dar01 : abap.char( 2 );
      dat01 : abap.dats;
      dar02 : abap.char( 2 );
      dat02 : abap.dats;
      dar03 : abap.char( 2 );
      dat03 : abap.dats;
}
