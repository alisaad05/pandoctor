jmpSetDefaultPhases()
=====================

Reads the phases to be included in a Solver calculation from the file
`inits/jmp.ini`.

Syntax
------

int jmpSetDefaultPhases (void);

Parameters
----------

This function has no parameters.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. However, if you do not include the
    default set of phases in the Solver calculation, then a user-defined
    list must be provided instead, via
    [jmpSetSolverPhases()](jmpSetSolverPhases.htm).
-   Make sure that your application can reach the file `inits/jmp.ini`,
    otherwise an error will occur.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


