CLASS zcljs_cust_ent_dt_action DEFINITION PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      tt_r_pernr TYPE RANGE OF zdt_actions-pernr,
      tt_r_begda TYPE RANGE OF zdt_actions-begda,
      tt_r_endda TYPE RANGE OF zdt_actions-endda,

      ts_data    TYPE zdt_actions,
      tt_data    TYPE STANDARD TABLE OF ts_data WITH EMPTY KEY.

    CLASS-METHODS:
      query
        IMPORTING it_r_pernr       TYPE tt_r_pernr OPTIONAL
                  it_r_begda       TYPE tt_r_begda OPTIONAL
                  it_r_endda       TYPE tt_r_endda OPTIONAL
        RETURNING VALUE(rt_result) TYPE tt_data.

    INTERFACES if_rap_query_provider.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS get_data_from_request
      IMPORTING io_request       TYPE REF TO if_rap_query_request
                ""RETURNING VALUE(rt_result) TYPE zif_bs_demo_rap_data_handler=>tt_data
      RETURNING VALUE(rt_result) TYPE tt_data
      RAISING   cx_rap_query_filter_no_range.

ENDCLASS.



CLASS ZCLJS_CUST_ENT_DT_ACTION IMPLEMENTATION.


  METHOD get_data_from_request.
    DATA lt_r_prnr TYPE n LENGTH 8.
    DATA lt_r_begda TYPE d.
    DATA lt_r_endda TYPE d.

    DATA(lt_filter) = io_request->get_filter( )->get_as_ranges( ).
    DATA(ld_offset) = io_request->get_paging( )->get_offset( ).
    DATA(ld_pagesize) = io_request->get_paging( )->get_page_size( ).

*    LOOP AT lt_filter INTO DATA(ls_filter).
*      CASE ls_filter-name.
*        WHEN 'TABLEKEY'.
*          lt_r_ = CORRESPONDING #( ls_filter-range ).
*        WHEN 'DESCRIPTION'.
*          lt_r_begda = CORRESPONDING #( ls_filter-range ).
*        WHEN 'CREATIONDATE'.
*          lt_r_endda = CORRESPONDING #( ls_filter-range ).
*      ENDCASE.
*    ENDLOOP.

    rt_result = zcljs_cust_ent_dt_action=>query(  ).
  ENDMETHOD.


  METHOD if_rap_query_provider~select.
    DATA lt_output TYPE STANDARD TABLE OF ZC_R_Action.

    TRY.
        DATA(lt_database) = get_data_from_request( io_request ).
      CATCH cx_rap_query_filter_no_range.
    ENDTRY.
    lt_output = CORRESPONDING #( lt_database MAPPING PersonnelNumber = pernr StartDate = begda EndDate = endda ).

    IF io_request->is_data_requested( ).
      io_response->set_data( lt_output ).
    ENDIF.

    IF io_request->is_total_numb_of_rec_requested( ).
      io_response->set_total_number_of_records( lines( lt_output ) ).
    ENDIF.
  ENDMETHOD.


  METHOD query.
    SELECT FROM zdt_actions
    FIELDS *
*    WHERE pernr IN @it_r_name
*    AND begda IN @it_r_branch
*    AND endda IN @it_r_description
    INTO TABLE @rt_result.
  ENDMETHOD.
ENDCLASS.
