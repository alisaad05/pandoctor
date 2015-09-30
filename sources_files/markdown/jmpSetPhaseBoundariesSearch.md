jmpSetPhaseBoundariesSearch()
=============================

Defines whether to search for phase boundaries in stepping or
Scheil-Gulliver calculations.

Syntax
------

int jmpSetPhaseBoundariesSearch (int booleanFlag);

Parameters
----------

`booleanFlag [input]`

Integer that specifies whether to locate phase boundaries (i.e., the
temperature or concentration values at which phases appear or disappear)
when running a Solver stepping or Scheil-Gulliver calculation. Possible
values are `JMP_FLAG_TRUE` or `JMP_FLAG_FALSE`, respectively to perform
the search or not.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing the Solver to run temperature,
    concentration, or extended stepping, as well as
    Scheil-Gulliver calculations. It is also relevant to set up the
    Solidification module, since it uses the Solver's Scheil-Gulliver
    model results as a basis for additional calculations.
-   This function call is optional. The default behaviour is to locate
    phase boundaries as the calculation progresses.
-   Searching for phase boundaries is a difficult task with impact on
    the performance of the API. Calling this function with the parameter
    value `JMP_FLAG_FALSE` will generally lead to faster and less
    error-prone calculations.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


