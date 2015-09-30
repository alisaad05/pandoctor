jmpExcludeColdfirePhases()
==========================

Defines a list of phases to be excluded from a Coldfire calculation.

Syntax
------

int jmpExcludeColdfirePhases (int numPhasesToRemove, char
\*\*excludeList);

Parameters
----------

`numPhasesToRemove [input]`

Integer that specifies the number of phases to exclude from the Coldfire
calculation.

`excludeList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to exclude from the Coldfire calculation.

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
    [jmpSetColdfirePhaseReadMode()](jmpSetColdfirePhaseReadMode.htm)
    with the parameter value `JMP_READ_FROM_SOLVER_WITH_EXCLUSIONS`.
-   Only the specified phases that are found in `summary.out` (or a
    similar user-defined input file) will be excluded from the
    Coldfire calculation. Any phase that is not present will be ignored.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


