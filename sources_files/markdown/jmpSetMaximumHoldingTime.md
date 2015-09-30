jmpSetMaximumHoldingTime()
==========================

Defines the maximum holding time used for TTT calculations.

Syntax
------

int jmpSetMaximumHoldingTime (double time);

Parameters
----------

`time [input]`

Double that specifies the time limit (in seconds) used for isothermal
holding in a TTT calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. If you do not specify the maximum
    holding time, a default value of 10^5^ s will be assumed.
-   The specified time acts as a calculation cutoff. It should be long
    enough to allow the phase transformations to complete within the
    temperature range of interest.

Requirements
------------

  --------- -------------------------------
  Headers   `jmpcore.h`\
            `jmpttt.h`

  Library   `jmpttt.lib`/`jmpttt_x64.lib`

  DLL       `jmpttt.dll`/`jmpttt_x64.dll`
  --------- -------------------------------


