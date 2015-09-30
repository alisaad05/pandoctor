jmpSetTemperatureUnit()
=======================

Defines the input temperature unit.

Syntax
------

int jmpSetTemperatureUnit (int unitFlag);

Parameters
----------

`unitFlag [input]`

Integer that specifies the unit used to express input temperatures and
temperature intervals. This parameter can take one of the following
values:

  ----------------------------------- ----------------------------------------------
  `JMP_TEMPERATURE_UNIT_KELVIN`       To input temperatures in kelvins.
  `JMP_TEMPERATURE_UNIT_CELSIUS`      To input temperatures in degrees Celsius.
  `JMP_TEMPERATURE_UNIT_FAHRENHEIT`   To input temperatures in degrees Fahrenheit.
  ----------------------------------- ----------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. The default temperature unit
    is kelvin.
-   This function only sets the unit used for input temperature values.
    The unit used for output values may differ (usually, it is kelvin).

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


