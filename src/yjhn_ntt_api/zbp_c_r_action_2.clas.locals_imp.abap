CLASS lhc_Action DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Action RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Action RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE Action.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Action.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Action.

    METHODS read FOR READ
      IMPORTING keys FOR READ Action RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK Action.

    METHODS rba_Communication FOR READ
      IMPORTING keys_rba FOR READ Action\_Communication FULL result_requested RESULT result LINK association_links.

    METHODS rba_Datespec FOR READ
      IMPORTING keys_rba FOR READ Action\_Datespec FULL result_requested RESULT result LINK association_links.

    METHODS rba_Orgassignment FOR READ
      IMPORTING keys_rba FOR READ Action\_Orgassignment FULL result_requested RESULT result LINK association_links.

    METHODS rba_Personaldata FOR READ
      IMPORTING keys_rba FOR READ Action\_Personaldata FULL result_requested RESULT result LINK association_links.

    METHODS cba_Communication FOR MODIFY
      IMPORTING entities_cba FOR CREATE Action\_Communication.

    METHODS cba_Datespec FOR MODIFY
      IMPORTING entities_cba FOR CREATE Action\_Datespec.

    METHODS cba_Orgassignment FOR MODIFY
      IMPORTING entities_cba FOR CREATE Action\_Orgassignment.

    METHODS cba_Personaldata FOR MODIFY
      IMPORTING entities_cba FOR CREATE Action\_Personaldata.

ENDCLASS.

CLASS lhc_Action IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
    DATA: action_out TYPE zdt_actions,
          messages   TYPE /dmo/t_message.

*    LOOP AT keys ASSIGNING FIELD-SYMBOL(<travel_to_read>) GROUP BY <travel_to_read>-%tky.
*
*      CALL FUNCTION 'ZJIT_READ_ACTION'
*        EXPORTING
*          iv_travel_id = <travel_to_read>-travelid
*        IMPORTING
*          es_travel    = travel_out
*          et_messages  = messages.
*
*      map_messages(
*          EXPORTING
*            travel_id        = <travel_to_read>-TravelID
*            messages         = messages
*          IMPORTING
*            failed_added = DATA(failed_added)
*          CHANGING
*            failed           = failed-travel
*            reported         = reported-travel
*        ).
*
*      IF failed_added = abap_false.
*        INSERT CORRESPONDING #( travel_out MAPPING TO ENTITY ) INTO TABLE result.
*      ENDIF.
*    ENDLOOP.

    DATA(a) = 1.

  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Communication.
  ENDMETHOD.

  METHOD rba_Datespec.
  ENDMETHOD.

  METHOD rba_Orgassignment.
  ENDMETHOD.

  METHOD rba_Personaldata.
  ENDMETHOD.

  METHOD cba_Communication.
  ENDMETHOD.

  METHOD cba_Datespec.
  ENDMETHOD.

  METHOD cba_Orgassignment.
  ENDMETHOD.

  METHOD cba_Personaldata.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Communication DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Communication.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Communication.

    METHODS read FOR READ
      IMPORTING keys FOR READ Communication RESULT result.

    METHODS rba_Action FOR READ
      IMPORTING keys_rba FOR READ Communication\_Action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_Communication IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Action.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_DateSpec DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE DateSpec.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE DateSpec.

    METHODS read FOR READ
      IMPORTING keys FOR READ DateSpec RESULT result.

    METHODS rba_Action FOR READ
      IMPORTING keys_rba FOR READ DateSpec\_Action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_DateSpec IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Action.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_OrgAssignment DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE OrgAssignment.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE OrgAssignment.

    METHODS read FOR READ
      IMPORTING keys FOR READ OrgAssignment RESULT result.

    METHODS rba_Action FOR READ
      IMPORTING keys_rba FOR READ OrgAssignment\_Action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_OrgAssignment IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Action.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_PersonalData DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE PersonalData.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE PersonalData.

    METHODS read FOR READ
      IMPORTING keys FOR READ PersonalData RESULT result.

    METHODS rba_Action FOR READ
      IMPORTING keys_rba FOR READ PersonalData\_Action FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_PersonalData IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Action.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZC_R_ACTION DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZC_R_ACTION IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
