jmpSetSolidificationPhases()
============================

Defines a list of phases to be included in a solidification calculation.

Syntax
------

int jmpSetSolidificationPhases (int numPhases, char \*\*phaseList);

Parameters
----------

`numPhases [input]`

Integer that specifies the number of phases to consider in the
solidification calculation.

`phaseList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to consider in the solidification
calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is necessary after requesting a
    user-specified phase read mode, by calling
    [jmpSetSolidificationPhaseReadMode()](jmpSetSolidificationPhaseReadMode.htm)
    with the parameter value `JMP_READ_USER_SPECIFIED`.
-   Depending on the material type, only specific sets of phases
    are allowed. For valid choices, refer to the file `inits/jmp.ini`,
    which can be found in the subdirectory `Runtime` in the API
    installation directory, and should be placed at the same level as
    your executable file.

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLL       `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


