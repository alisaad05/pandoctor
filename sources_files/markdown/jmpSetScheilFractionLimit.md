jmpSetScheilFractionLimit()
===========================

Defines the liquid fraction value that flags the end of solidification
in Scheil-Gulliver calculations.

Syntax
------

int jmpSetScheilFractionLimit (double limit);

Parameters
----------

`limit [input]`

Double that specifies the amount of liquid (in volume fraction) that
will be used to signal the end of a Scheil-Gulliver calculation. When
the remaining liquid volume fraction becomes lower than this parameter,
the solidification will be considered as complete.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing the Solver to run a
    Scheil-Gulliver calculation. It is also relevant to set up the
    Solidification module, since it uses the Solver's Scheil-Gulliver
    model results as a basis for additional calculations.
-   This function call is optional. If you do not specify the Scheil
    fraction limit, a default value of 0.01 will be assumed.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


