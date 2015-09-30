jmpSetTttFractionsMode()
========================

Defines the interpretation mode of the TTT transformation fractions.

Syntax
------

int jmpSetTttFractionsMode (int modeFlag);

Parameters
----------

`modeFlag [input]`

Integer that specifies how to interpret the transformation fractions
used to flag austenite decomposition in a TTT calculation. This
parameter can take one of the following values:

  --------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  `JMP_TTT_FRACTIONS_INDIVIDUAL_PHASES`   To work on a per phase basis. Austenite decomposition will be flagged for each of the products, whenever the individual phase fractions reach specified values.
  `JMP_TTT_FRACTIONS_OVERALL`             To work on an overall basis. Austenite decomposition will be flagged when the total amount of product phases reaches specified values.
  --------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. By default, the TTT transformation
    fractions are interpreted on an overall basis.
-   The specified interpretation mode only applies to the intermediate
    region of fractions defined with
    [jmpSetAdditionalTransformationFractions()](jmpSetAdditionalTransformationFractions.htm).
    The start of austenite decomposition is always treated on a per
    phase basis.

Requirements
------------

  --------- -------------------------------
  Headers   `jmpcore.h`\
            `jmpttt.h`

  Library   `jmpttt.lib`/`jmpttt_x64.lib`

  DLL       `jmpttt.dll`/`jmpttt_x64.dll`
  --------- -------------------------------


