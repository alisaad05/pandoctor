jmpSetAdditionalTransformationFractions()
=========================================

Defines further fraction values used to flag austenite decomposition in
TTT calculations.

Syntax
------

int jmpSetAdditionalTransformationFractions (int numAdditionalFractions,
double \*additionalFractions);

Parameters
----------

`numAdditionalFractions [input]`

Integer that specifies the number of additional fractions (above the
start point) to consider in a TTT calculation.

`additionalFractions [input]`

Pointer to an array of doubles that specifies the amounts (in volume
fractions) of product phases (either individual or overall) at which to
flag austenite decomposition, and output associated transformation
times, when calculating TTT diagrams.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. If omitted, austenite decomposition
    will be flagged at the transformation fractions 0.1, 0.5, and 0.9.
-   You may specify whether the transformation fractions are interpreted
    on a per phase or overall basis, using the function
    [jmpSetTttFractionsMode()](jmpSetTttFractionsMode.htm).

Requirements
------------

  --------- -------------------------------
  Headers   `jmpcore.h`\
            `jmpttt.h`

  Library   `jmpttt.lib`/`jmpttt_x64.lib`

  DLL       `jmpttt.dll`/`jmpttt_x64.dll`
  --------- -------------------------------


