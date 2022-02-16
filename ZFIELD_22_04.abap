REPORT zfield_22_04.

DATA: nome(20)      TYPE c,
      sobrenome(20) TYPE c VALUE 'Morning',
      var(10)       TYPE c,
      cont          TYPE i.

FIELD-SYMBOLS: <fs_obj> TYPE any.

IF nome IS NOT INITIAL.
  ADD 1 TO cont.
ENDIF.

IF cont = 0.
  var = 'NOME'.
ELSE.
  var = 'SOBRENOME'.
ENDIF.

ASSIGN (var) TO <fs_obj>.

IF <fs_obj> IS ASSIGNED.
  <fs_obj> = 'Sobreposto'.
ENDIF.

WRITE: nome, / sobrenome.
