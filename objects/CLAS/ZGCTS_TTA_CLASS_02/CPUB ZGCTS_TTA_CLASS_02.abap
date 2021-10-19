class ZGCTS_TTA_CLASS_02 definition
  public
  final
  create public .

public section.

  types:
    mtt_tadir_view TYPE STANDARD TABLE OF Z_TADIR_view .

  methods SELECT_SOME .
  class-methods GET_OBJECT_LIST
    importing
      !IV_DEVCLASS type DEVCLASS
    exporting
      !ET_TABLE type MTT_TADIR_VIEW .