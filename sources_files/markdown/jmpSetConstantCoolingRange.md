jmpSetConstantCoolingRange()
============================

Defines the exponents used to obtain the limiting rates for constant
cooling.

Syntax
------

int jmpSetConstantCoolingRange (int slowRateExponent, int
fastRateExponent);

Parameters
----------

`slowRateExponent [input]`

Integer that specifies the exponent used to determine the minimum value
of the constant cooling range, calculated as a power of 10. Provides the
slowest cooling rate to consider in the CCT calculation.

`fastRateExponent [input]`

Integer that specifies the exponent used to determine the maximum value
of the constant cooling range, calculated as a power of 10. Provides the
fastest cooling rate to consider in the CCT calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the calculation of CCT
    diagrams using a constant cooling profile.
-   This function call is optional. If omitted, default values of -2 and
    2 will be assumed for the slow and fast rate
    exponents, respectively.

Requirements
------------

  --------- -------------------------------
  Headers   `jmpcore.h`\
            `jmpcct.h`

  Library   `jmpcct.lib`/`jmpcct_x64.lib`

  DLL       `jmpcct.dll`/`jmpcct_x64.dll`
  --------- -------------------------------


