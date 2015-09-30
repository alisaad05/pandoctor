jmpSetSummaryReadMode()
=======================

Defines the input read mode for the Coldfire module.

Syntax
------

int jmpSetSummaryReadMode (int modeFlag);

Parameters
----------

`modeFlag [input]`

Integer that specifies how to obtain the input data required to perform
a Coldfire calculation. This parameter can take one of the following
values:

  --------------------------- ---------------------------------------------------------
  `JMP_READ_FROM_SOLVER`      To read data from the Solver output file `summary.out`.
  `JMP_READ_USER_SPECIFIED`   To read data from a user-defined file.
  --------------------------- ---------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. By default, Coldfire inputs data
    from `summary.out`.
-   If a user-defined file (similar to `summary.out`, e.g., obtained
    from a Solver stepping calculation) is requested with the parameter
    value `JMP_READ_USER_SPECIFIED`, then the function
    [jmpSetUserFilename()](jmpSetUserFilename.htm) must be called to set
    its name.

**Note**  Any Solver calculation apart from T~0~ energy change or Gibbs
energy difference will produce valid input data for the Coldfire module.
When calculating room-temperature matrix mechanical properties, it
should be noted that the various blocks in the Solver output file will
be interpreted as heat treatment information.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


