jmpExcludeSolverPhases()
========================

Defines a list of phases to be excluded from a Solver calculation.

Syntax
------

int jmpExcludeSolverPhases (int numPhasesToRemove, char
\*\*excludeList);

Parameters
----------

`numPhasesToRemove [input]`

Integer that specifies the number of phases to exclude from the Solver
calculation.

`excludeList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to exclude from the Solver calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. It may be used to exclude a few
    phases from the default set, or to alter a user-defined list when
    running successive Solver calculations.
-   Only the specified phases that are found in the list to include in
    the calculation (be it either a default or user-defined set) will
    be excluded. Any phase that is not present will be ignored.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


