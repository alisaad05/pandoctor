jmpSetCctCoolingType()
======================

Defines the CCT cooling type.

Syntax
------

int jmpSetCctCoolingType (int typeFlag);

Parameters
----------

`typeFlag [input]`

Integer that specifies the cooling profile to consider when running a
CCT calculation. This parameter can take one of the following values:

  ----------------------------- -----------------------------------------------------------------------------------------------
  `JMP_CCT_COOLING_CONSTANT`    To assume the cooling is of a constant rate, i.e., a constant cooling profile.
  `JMP_CCT_COOLING_NEWTONIAN`   To assume the cooling is of a Newtonian (or natural) type, i.e., a Newtonian cooling profile.
  ----------------------------- -----------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. By default, CCT diagrams are
    calculated assuming a constant cooling profile.
-   Depending on the specified cooling type, different functions are
    required to complete the setup of the CCT module.

Requirements
------------

  --------- -------------------------------
  Headers   `jmpcore.h`\
            `jmpcct.h`

  Library   `jmpcct.lib`/`jmpcct_x64.lib`

  DLL       `jmpcct.dll`/`jmpcct_x64.dll`
  --------- -------------------------------


