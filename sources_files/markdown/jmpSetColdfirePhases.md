jmpSetColdfirePhases()
======================

Defines a list of phases to be included in a Coldfire calculation.

Syntax
------

int jmpSetColdfirePhases (int numPhases, char \*\*phaseList);

Parameters
----------

`numPhases [input]`

Integer that specifies the number of phases to consider in the Coldfire
calculation.

`phaseList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to consider in the Coldfire calculation.

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
    [jmpSetColdfirePhaseReadMode()](jmpSetColdfirePhaseReadMode.htm)
    with the parameter value `JMP_READ_USER_SPECIFIED`.
-   While you are free to choose any set of phases, only those that can
    be found in `summary.out` (or a similar user-defined input file)
    will effectively be considered in the Coldfire calculation.
-   Also, note that, when calculating room-temperature matrix mechanical
    properties, it is the matrix strength that is sought, so only matrix
    phases will effectively be used.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


