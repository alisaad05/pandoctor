jmpSetAusteniteGrainSize()
==========================

Defines the prior austenite grain size for general steels.

Syntax
------

int jmpSetAusteniteGrainSize (double grainSize);

Parameters
----------

`grainSize [input]`

Double that specifies the prior austenite grain size.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the TTT and CCT modules.
-   This function call is optional. If you do not specify the austenite
    grain size, a default value of 9 ASTM will be assumed.
-   The input grain size unit may be specified using
    [jmpSetGrainSizeUnit()](jmpSetGrainSizeUnit.htm).

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


