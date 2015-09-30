jmpExcludeSolidificationPhases()
================================

Defines a list of phases to be excluded from a solidification
calculation.

Syntax
------

int jmpExcludeSolidificationPhases (int numPhasesToRemove, char
\*\*excludeList);

Parameters
----------

`numPhasesToRemove [input]`

Integer that specifies the number of phases to exclude from the
solidification calculation.

`excludeList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to exclude from the solidification
calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is necessary after requesting a phase read
    mode with exclusions, by calling
    [jmpSetSolidificationPhaseReadMode()](jmpSetSolidificationPhaseReadMode.htm)
    with the parameter value `JMP_READ_DEFAULT_WITH_EXCLUSIONS`.
-   Only the specified phases that are found in the default set will
    be excluded. Any phase that is not present will be ignored.
-   Make sure that your application can reach the file `inits/jmp.ini`,
    otherwise an error will occur when running the calculation.

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLL       `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


