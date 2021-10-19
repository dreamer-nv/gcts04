METHOD GET_OBJECT_LIST.

" start AUnit tests - Ctrl+Shift+F10
" user to call target services - i079666

" method body to check AUnit test
SELECT * FROM Z_TADIR_CDS
UP TO 10 ROWS
into TABLE @et_table
WHERE devclass = @iv_devclass.

" method adding just to check ATC check
" TABLES: tcurc.
*
*DATA: lv_isocd type ISOCD.
*
*SELECT SINGLE land1 FROM t001 INTO @DATA(lv_land) WHERE bukrs EQ '1000'.
*SELECT SINGLE land1 FROM t001 INTO lv_land WHERE spras EQ 'EN'.



ENDMETHOD.