jmpSetSolidificationTemperatures()
==================================

Defines the start temperature and stepping interval used for
solidification calculations.

Syntax
------

int jmpSetSolidificationTemperatures (double startTemperature, double
stepTemperature);

Parameters
----------

`startTemperature [input]`

Double that specifies the temperature at which the solidification
calculation starts.

`stepTemperature [input]`

Double that specifies the temperature interval between consecutive
steps.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is always required to set up the
    Solidification module.
-   The input temperature unit may be specified using
    [jmpSetTemperatureUnit()](jmpSetTemperatureUnit.htm).
-   To ensure the validity of the calculations, liquid should be the
    only phase present at the start temperature.
-   The calculation will be performed down to room temperature. However,
    it is not necessary to specify a negative stepping interval.

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLL       `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


