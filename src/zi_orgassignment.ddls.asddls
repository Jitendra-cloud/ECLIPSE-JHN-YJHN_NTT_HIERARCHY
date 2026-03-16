@EndUserText.label: 'IT0001 - Organization Assignment'
define custom entity ZI_OrgAssignment
{
  key pernr : abap.numc( 8 );
      begda : abap.dats;
      endda : abap.dats;
      bukrs : abap.char( 4 );
      werks : abap.char( 4 );
      btrtl : abap.char( 4 );
      persg : abap.char( 1 );
      persk : abap.char( 2 );
      kostl : abap.char( 10 );
      abkrs : abap.char( 2 );
}
