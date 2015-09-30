jmpSetGrainSizes()
==================

Defines the matrix grain sizes to be considered in the calculation of
mechanical properties for most alloy types.

Syntax
------

int jmpSetGrainSizes (int numGrainSizes, double \*grainSizes);

Parameters
----------

`numGrainSizes [input]`

Integer that specifies the number of grain sizes to consider in the
calculation.

`grainSizes [input]`

Pointer to an array of doubles that specifies the set of matrix grain
sizes to consider in the calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is required when preparing Coldfire to perform
    the calculation of room-temperature matrix mechanical properties for
    all material types, with the exception of titanium alloys. For
    these, sets of alpha and beta grain sizes are generally needed, and
    the function
    [jmpSetTitaniumGrainSizes()](jmpSetTitaniumGrainSizes.htm) must be
    used instead.
-   The input grain size unit may be specified using
    [jmpSetGrainSizeUnit()](jmpSetGrainSizeUnit.htm).

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


