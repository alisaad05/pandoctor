jmpSetCompositionUnit()
=======================

Defines the input composition unit.

Syntax
------

int jmpSetCompositionUnit (int unitFlag);

Parameters
----------

`unitFlag [input]`

Integer that specifies the unit used to express input compositions. This
parameter can take one of the following values:

  ---------------------------------------- ----------------------------------------------
  `JMP_COMPOSITION_UNIT_WEIGHT_FRACTION`   To input compositions in weight fractions.
  `JMP_COMPOSITION_UNIT_ATOMIC_FRACTION`   To input compositions in atomic fractions.
  `JMP_COMPOSITION_UNIT_WEIGHT_PERCENT`    To input compositions in weight percentages.
  `JMP_COMPOSITION_UNIT_ATOMIC_PERCENT`    To input compositions in atomic percentages.
  ---------------------------------------- ----------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. The default composition unit is
    weight percent.
-   This function only sets the unit used for input composition values.
    The unit used for output values may differ.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


