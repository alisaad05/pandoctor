jmpSetSolverPhases()
====================

Reads the phases to be included in a Solver calculation from a
user-defined list.

Syntax
------

int jmpSetSolverPhases (int numPhases, char \*\*phaseList);

Parameters
----------

`numPhases [input]`

Integer that specifies the number of phases to consider in the Solver
calculation.

`phaseList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of phases to consider in the Solver calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. However, if you do not specify the
    phases to include in the Solver calculation, then a default list
    must be set instead, by calling
    [jmpSetDefaultPhases()](jmpSetDefaultPhases.htm).
-   Depending on the material type, only specific sets of phases
    are allowed. For valid choices, refer to the file `inits/jmp.ini`,
    which can be found in the subdirectory `Runtime` in the API
    installation directory, and should be placed at the same level as
    your executable file.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


