*&---------------------------------------------------------------------*
*& Report ZGCTS_TTA_REP_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgcts_tta_rep_01.

" test commit 6

PARAMETERS p_res TYPE i.

START-OF-SELECTION.

  IF p_res EQ 4.
    MESSAGE 'You are right!' TYPE 'S'.
  ELSE.
    MESSAGE 'Answer is not correct!' TYPE 'E'.
  ENDIF.