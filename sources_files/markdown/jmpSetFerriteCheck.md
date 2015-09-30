jmpSetFerriteCheck()
====================

Defines whether to check for the presence of ferrite prior to TTT/CCT
calculations.

Syntax
------

int jmpSetFerriteCheck (int booleanFlag);

Parameters
----------

`booleanFlag [input]`

Integer that specifies whether to check for the presence of ferrite at
the austenitisation temperature before calculating TTT/CCT diagrams.
Possible values are `JMP_FLAG_TRUE` or `JMP_FLAG_FALSE`. If set to
`JMP_FLAG_TRUE`, the check will be performed and the calculation will
proceed only if ferrite is not found. If set to `JMP_FLAG_FALSE`, the
check will not be performed and the calculation will always run. In any
case, the calculation is based on the austenite composition at the
austenitisation temperature, assuming austenite is the only phase
present at the beginning.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the TTT and CCT modules.
-   This function call is optional. The default behaviour is to ignore
    the presence of ferrite at the beginning of the TTT/CCT calculation.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


