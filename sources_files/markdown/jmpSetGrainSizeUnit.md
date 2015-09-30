jmpSetGrainSizeUnit()
=====================

Defines the input grain size unit.

Syntax
------

int jmpSetGrainSizeUnit (int unitFlag);

Parameters
----------

`unitFlag [input]`

Integer that specifies the unit used to express input grain sizes. This
parameter can take one of the following values:

  ---------------------------------- ---------------------------------------
  `JMP_GRAIN_SIZE_UNIT_METRE`        To input grain sizes in metres.
  `JMP_GRAIN_SIZE_UNIT_MICROMETRE`   To input grain sizes in micrometres.
  `JMP_GRAIN_SIZE_UNIT_ASTM`         To input grain sizes in ASTM numbers.
  ---------------------------------- ---------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. The default grain size unit
    is micrometre.
-   This function only sets the unit used for input grain size values.
    The unit used for output values may differ (usually, it is metre).

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


