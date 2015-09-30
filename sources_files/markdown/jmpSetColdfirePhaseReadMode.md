jmpSetColdfirePhaseReadMode()
=============================

Defines the phase read mode for the Coldfire module.

Syntax
------

int jmpSetColdfirePhaseReadMode (int modeFlag);

Parameters
----------

`modeFlag [input]`

Integer that specifies how to obtain the list of phases to include in a
Coldfire calculation. This parameter can take one of the following
values:

  ---------------------------------------- --------------------------------------------------------------------------------------------------
  `JMP_READ_FROM_SOLVER`                   To read phases from a Solver output file.
  `JMP_READ_USER_SPECIFIED`                To read phases from a user-defined list.
  `JMP_READ_FROM_SOLVER_WITH_EXCLUSIONS`   To read phases from a Solver output file, but disregard those present in a given exclusion list.
  ---------------------------------------- --------------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. The default behaviour is to read the
    phases to consider in the Coldfire calculation from a Solver
    output file.
-   The Solver output file defaults to `summary.out`. However, a similar
    file with a different name may be specified, using
    [jmpSetSummaryReadMode()](jmpSetSummaryReadMode.htm) and
    [jmpSetUserFilename()](jmpSetUserFilename.htm).
-   When specifying the parameter value `JMP_READ_USER_SPECIFIED`, the
    list of phases to include in the calculation must be provided, by
    calling [jmpSetColdfirePhases()](jmpSetColdfirePhases.htm).
-   When specifying the parameter value
    `JMP_READ_FROM_SOLVER_WITH_EXCLUSIONS`, the list of phases to
    exclude from the calculation must be provided, by calling
    [jmpExcludeColdfirePhases()](jmpExcludeColdfirePhases.htm).

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


