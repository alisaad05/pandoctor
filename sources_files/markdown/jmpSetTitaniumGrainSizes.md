jmpSetTitaniumGrainSizes()
==========================

Defines the alpha and beta grain sizes to be considered in the
calculation of mechanical properties for titanium alloys.

Syntax
------

int jmpSetTitaniumGrainSizes (int numGrainSizes, double
\*alphaGrainSizes, double \*betaGrainSizes);

Parameters
----------

`numGrainSizes [input]`

Integer that specifies the number of grain sizes to consider in the
calculation.

`alphaGrainSizes [input]`

Pointer to an array of doubles that specifies the set of alpha grain
sizes to consider in the calculation. May be set to `NULL` if the alpha
phase is not present in the alloy.

`betaGrainSizes [input]`

Pointer to an array of doubles that specifies the set of beta grain
sizes to consider in the calculation. May be set to `NULL` if the beta
phase is not present in the alloy.

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
    titanium alloys. For all other material types, only one set of
    matrix grain sizes is needed, and the function
    [jmpSetGrainSizes()](jmpSetGrainSizes.htm) must be used instead.
-   The input grain size unit may be specified using
    [jmpSetGrainSizeUnit()](jmpSetGrainSizeUnit.htm).
-   When there is only one matrix phase (either alpha or beta), the
    grain sizes for the other phase become irrelevant, and the `NULL`
    pointer should be passed where appropriate.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


