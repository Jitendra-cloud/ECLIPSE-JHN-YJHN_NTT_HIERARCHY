CLASS lcl_buffer DEFINITION
                 CREATE PRIVATE
                 FINAL.
  PUBLIC SECTION.
    DATA:
      mt_action            TYPE TABLE FOR READ IMPORT zc_r_action,
      mt_orgassignment     TYPE TABLE FOR READ IMPORT zc_r_action\_orgassignment,
      mt_personaldata      TYPE TABLE FOR READ IMPORT zc_r_action\_personaldata,
      mt_datespec          TYPE TABLE FOR READ IMPORT zc_r_action\_datespec,
      mt_communication     TYPE TABLE FOR READ IMPORT zc_r_action\_communication,
      mt_action_ins        TYPE TABLE FOR CREATE zc_r_action,
      mt_orgassignment_ins TYPE TABLE FOR CREATE zc_r_action\_orgassignment,
      mt_personaldata_ins  TYPE TABLE FOR CREATE zc_r_action\_personaldata,
      mt_datespec_ins      TYPE TABLE FOR CREATE zc_r_action\_datespec,
      mt_communication_ins TYPE TABLE FOR CREATE zc_r_action\_communication,
      mt_action_upd        TYPE TABLE FOR UPDATE zc_r_action.
    "  mt_orgassignment_upd TYPE TABLE FOR UPDATE zc_r_action\_orgassignment,
    "  mt_personaldata_upd  TYPE TABLE FOR UPDATE zc_r_action\_personaldata,
    "  mt_datespec_upd      TYPE TABLE FOR UPDATE zc_r_action\_datespec,
    "  mt_communication_upd TYPE TABLE FOR UPDATE zc_r_action\_communication

    CLASS-METHODS
      get_instance
        RETURNING
          VALUE(ro_instance) TYPE REF TO lcl_buffer.

  PRIVATE SECTION.
    CLASS-DATA
      so_instance TYPE REF TO lcl_buffer.

    METHODS:
      constructor.
ENDCLASS.

CLASS lcl_buffer IMPLEMENTATION.
  METHOD get_instance.
    IF so_instance IS NOT BOUND.
      so_instance = NEW lcl_buffer( ).
    ENDIF.
    ro_instance = so_instance.
  ENDMETHOD.
  METHOD constructor.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_utility DEFINITION
                  CREATE PRIVATE
                  FINAL.
  PUBLIC SECTION.
    CLASS-METHODS
      get_instance
        RETURNING
          VALUE(ro_instance) TYPE REF TO lcl_utility.
    METHODS is_startdate_valid
      IMPORTING
        iv_startdate   TYPE begda
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_actiontype_valid
      IMPORTING
        iv_actiontype  TYPE massn
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_employmentstatus_valid
      IMPORTING
        iv_employmentstatus TYPE ZJIT_DE_STATA
      RETURNING
        VALUE(rv_bool)      TYPE abap_boolean.
    METHODS is_companycode_valid
      IMPORTING
        iv_companycode TYPE bukrs
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_personnelarea_valid
      IMPORTING
        iv_personnelarea TYPE persa
      RETURNING
        VALUE(rv_bool)   TYPE abap_boolean.
    METHODS is_personnelsubarea_valid
      IMPORTING
        iv_personnelarea    TYPE persa
        iv_personnelsubarea TYPE btrtl
      RETURNING
        VALUE(rv_bool)      TYPE abap_boolean.
    METHODS is_employeegroup_valid
      IMPORTING
        iv_employeegroup TYPE persg
      RETURNING
        VALUE(rv_bool)   TYPE abap_boolean.
    METHODS is_employeesubgroup_valid
      IMPORTING
        iv_employeesubgroup TYPE persk
      RETURNING
        VALUE(rv_bool)      TYPE abap_boolean.
    METHODS is_costcenter_valid
      IMPORTING
        iv_costcenter  TYPE kostl
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_payrollarea_valid
      IMPORTING
        iv_payrollarea TYPE abkrs
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_formofaddress_valid
      IMPORTING
        iv_formofaddress TYPE anrde
      RETURNING
        VALUE(rv_bool)   TYPE abap_boolean.
    METHODS is_genderkey_valid
      IMPORTING
        iv_genderkey   TYPE ZJIT_DE_HRPAD_GENDER
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
*    METHODS is_dateofbirth_valid
*      IMPORTING
*        iv_dateofbirth TYPE gbdat
*      RETURNING
*        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_datetype_valid
      IMPORTING
        iv_datetype    TYPE ZJIT_DE_DATAR
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_subtype_valid
      IMPORTING
        iv_subtype     TYPE ZJIT_DE_SUBTY_591A  "subty
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
    METHODS is_useridlong_valid
      IMPORTING
        iv_subtype     TYPE ZJIT_DE_SUBTY_591A  "subty
        iv_useridlong  TYPE comm_id_long
      RETURNING
        VALUE(rv_bool) TYPE abap_boolean.
  PRIVATE SECTION.
    CLASS-DATA
      so_instance TYPE REF TO lcl_utility.

    METHODS:
      constructor.
ENDCLASS.

CLASS lcl_utility IMPLEMENTATION.
  METHOD get_instance.
    IF so_instance IS NOT BOUND.
      so_instance = NEW lcl_utility( ).
    ENDIF.
    ro_instance = so_instance.
  ENDMETHOD.
  METHOD constructor.
  ENDMETHOD.
  METHOD is_startdate_valid.
    IF iv_startdate > xco_cp=>sy->date( )->as( xco_cp_time=>format->abap )->value.

    ELSE.
*      RETURN xco_cp=>string( iv_begda )->starts_with( 'L' ).
    ENDIF.
  ENDMETHOD.
  METHOD is_actiontype_valid.
*    SELECT SINGLE @abap_true
*        FROM t529a
*        INTO @rv_bool
*        WHERE massn = @iv_actiontype.
  ENDMETHOD.
  METHOD is_employmentstatus_valid.
*    SELECT SINGLE @abap_true
*        FROM t529u
*        INTO @rv_bool
*        WHERE sprsl = @sy-langu
*          AND statn = '2'
*          AND statv = @iv_employmentstatus.
  ENDMETHOD.
  METHOD is_companycode_valid.
*    SELECT SINGLE @abap_true
*        FROM t001
*        INTO @rv_bool
*        WHERE bukrs = @iv_companycode.
  ENDMETHOD.
  METHOD is_personnelarea_valid.
*    SELECT SINGLE @abap_true
*        FROM t500p
*        INTO @rv_bool
*        WHERE persa = @iv_personnelarea.
  ENDMETHOD.
  METHOD is_personnelsubarea_valid.
*    SELECT SINGLE @abap_true
*        FROM t001p
*        INTO @rv_bool
*        WHERE werks = @iv_personnelarea
*          AND btrtl = @iv_personnelsubarea.
  ENDMETHOD.
  METHOD is_employeegroup_valid.
*    SELECT SINGLE @abap_true
*      FROM t501
*      INTO @rv_bool
*      WHERE persg = @iv_employeegroup.
  ENDMETHOD.
  METHOD is_employeesubgroup_valid.
*    SELECT SINGLE @abap_true
*        FROM t503k
*        INTO @rv_bool
*        WHERE persk = @iv_employeesubgroup.
  ENDMETHOD.
  METHOD is_costcenter_valid.
*    SELECT SINGLE @abap_true
*        FROM csks
*        INTO @rv_bool
*        WHERE kokrs = '9001'
*          AND kostl = @iv_costcenter
*          AND datbi < @sy-datlo.
  ENDMETHOD.
  METHOD is_payrollarea_valid.
*    SELECT SINGLE @abap_true
*        FROM t549a
*        INTO @rv_bool
*        WHERE abkrs = @iv_payrollarea.
  ENDMETHOD.
  METHOD is_formofaddress_valid.
*    SELECT SINGLE @abap_true
*        FROM t522g
*        INTO @rv_bool
*        WHERE anred = @iv_formofaddress.
  ENDMETHOD.
  METHOD is_genderkey_valid.
*    SELECT SINGLE @abap_true
*        FROM t77pad_gender
*        INTO @rv_bool
*        WHERE molga = '40'
*          AND gender = @iv_genderkey.
  ENDMETHOD.
*  METHOD is_dateofbirth_valid.
*  ENDMETHOD.
  METHOD is_datetype_valid.
*    SELECT SINGLE @abap_true
*        FROM t548y
*        INTO @rv_bool
*        WHERE datar = @iv_datetype.
  ENDMETHOD.
  METHOD is_subtype_valid.
*    SELECT SINGLE @abap_true
*        FROM t591a
*        INTO @rv_bool
*        WHERE infty = '0105'
*          AND subty = @iv_subtype
*          AND ( zeitb = '1' OR zeitb = '2' ).
  ENDMETHOD.
  METHOD is_useridlong_valid.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_action DEFINITION
                INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING
        keys REQUEST requested_authorizations FOR action RESULT result.

    METHODS create FOR MODIFY
      IMPORTING
        entities FOR CREATE action.

    METHODS update FOR MODIFY
      IMPORTING
        entities FOR UPDATE action.

    METHODS delete FOR MODIFY
      IMPORTING
        keys FOR DELETE action.

    METHODS read FOR READ
      IMPORTING
        keys FOR READ action RESULT result.

    METHODS lock FOR LOCK
      IMPORTING
        keys FOR LOCK action.

    METHODS rba_communication FOR READ
      IMPORTING
        keys_rba FOR READ action\_communication FULL result_requested RESULT result LINK association_links.

    METHODS rba_datespec FOR READ
      IMPORTING
        keys_rba FOR READ action\_datespec FULL result_requested RESULT result LINK association_links.

    METHODS rba_orgassignment FOR READ
      IMPORTING
        keys_rba FOR READ action\_orgassignment FULL result_requested RESULT result LINK association_links.

    METHODS rba_personaldata FOR READ
      IMPORTING
        keys_rba FOR READ action\_personaldata FULL result_requested RESULT result LINK association_links.

    METHODS cba_communication FOR MODIFY
      IMPORTING
        entities_cba FOR CREATE action\_communication.

    METHODS cba_datespec FOR MODIFY
      IMPORTING
        entities_cba FOR CREATE action\_datespec.

    METHODS cba_orgassignment FOR MODIFY
      IMPORTING
        entities_cba FOR CREATE action\_orgassignment.

    METHODS cba_personaldata FOR MODIFY
      IMPORTING
        entities_cba FOR CREATE action\_personaldata.

ENDCLASS.

CLASS lcl_action IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    DATA
        lv_trial TYPE i VALUE 1.
    IF lv_trial = 2.
    ENDIF.
*    INSERT LINES OF entities INTO TABLE lcl_buffer=>get_instance( )->mt_action.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_communication.
  ENDMETHOD.

  METHOD rba_datespec.
  ENDMETHOD.

  METHOD rba_orgassignment.
  ENDMETHOD.

  METHOD rba_personaldata.
  ENDMETHOD.

  METHOD cba_communication.
  ENDMETHOD.

  METHOD cba_datespec.
  ENDMETHOD.

  METHOD cba_orgassignment.
  ENDMETHOD.

  METHOD cba_personaldata.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_communication DEFINITION
                        INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING
        entities FOR UPDATE communication.

    METHODS delete FOR MODIFY
      IMPORTING
        keys FOR DELETE communication.

    METHODS read FOR READ
      IMPORTING
        keys FOR READ communication RESULT result.

    METHODS rba_action FOR READ
      IMPORTING
        keys_rba FOR READ communication\_action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lcl_communication IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_action.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_datespec DEFINITION
                    INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING
        entities FOR UPDATE datespec.

    METHODS delete FOR MODIFY
      IMPORTING
        keys FOR DELETE datespec.

    METHODS read FOR READ
      IMPORTING
        keys FOR READ datespec RESULT result.

    METHODS rba_action FOR READ
      IMPORTING
        keys_rba FOR READ datespec\_action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lcl_datespec IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_action.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_orgassignment DEFINITION
                        INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING
        entities FOR UPDATE orgassignment.

    METHODS delete FOR MODIFY
      IMPORTING
        keys FOR DELETE orgassignment.

    METHODS read FOR READ
      IMPORTING
        keys FOR READ orgassignment RESULT result.

    METHODS rba_action FOR READ
      IMPORTING
        keys_rba FOR READ orgassignment\_action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lcl_orgassignment IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_action.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_personaldata DEFINITION
                        INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING
        entities FOR UPDATE personaldata.

    METHODS delete FOR MODIFY
      IMPORTING
        keys FOR DELETE personaldata.

    METHODS read FOR READ
      IMPORTING
        keys FOR READ personaldata RESULT result.

    METHODS rba_action FOR READ
      IMPORTING
        keys_rba FOR READ personaldata\_action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lcl_personaldata IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_action.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_zc_r_action DEFINITION
                        INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.
ENDCLASS.

CLASS lcl_zc_r_action IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
    LOOP AT lcl_buffer=>get_instance( )->mt_action
      ASSIGNING FIELD-SYMBOL(<ls_action>).
      IF <ls_action>-personnelnumber <= 0.
        INSERT VALUE #( %key = <ls_action>-%key ) INTO TABLE failed-action.
        INSERT VALUE #( %key = <ls_action>-%key
                        %msg = new_message( id       = 'ZBS_HCM'
                                            number   = '001'
                                            severity = if_abap_behv_message=>severity-error ) ) INTO TABLE reported-action.
      ENDIF.

*      IF NOT lcl_utility=>get_instance( )->is_actiontype_valid( iv_actiontype = <ls_action>- ).
*        INSERT VALUE #( %key = new-%key ) INTO TABLE failed-location.
*        INSERT VALUE #( %key = new-%key
*                        %msg = new_message( id       = 'ZBS_DEMO_RAP_PATTERN'
*                                            number   = '011'
*                                            severity = if_abap_behv_message=>severity-error
*                                            v1       = new-locationid ) ) INTO TABLE reported-location.
*      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.
ENDCLASS.
