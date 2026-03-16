@EndUserText.label: 'IT0002 - Personal Data'
define custom entity ZI_PersonalData
{
  key pernr : abap.numc( 8 );
      begda : abap.dats;
      endda : abap.dats;
      anred : abap.char( 15 );
      vorna : abap.char( 40 );
      nachn : abap.char( 40 );
      midnm : abap.char( 40 );
      gesch : abap.char( 1 );
      gbdat : abap.dats;
      rufnm : abap.char( 40 );
}
