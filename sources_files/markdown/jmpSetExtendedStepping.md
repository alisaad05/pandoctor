jmpSetExtendedStepping()
========================

Defines the start temperature, heat treatment temperature, and stepping
interval, required for extended calculations.

Syntax
------

int jmpSetExtendedStepping (double startTemperature, double
heatTreatmentTemperature, double stepTemperature);

Parameters
----------

`startTemperature [input]`

Double that specifies the temperature at which the extended stepping
calculation starts.

`heatTreatmentTemperature [input]`

Double that specifies the temperature used to heat treat the alloy. The
calculation of thermodynamic properties will be performed down to room
temperature, with the phase structure obtained at the heat treatment
temperature being kept frozen.

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

-   This function call is required when preparing the Solver to run
    extended stepping calculations.
-   The input temperature unit may be specified using
    [jmpSetTemperatureUnit()](jmpSetTemperatureUnit.htm).
-   To ensure the validity of the calculations, the start temperature
    should be higher than the heat treatment temperature, and both
    should be above room temperature.
-   It is not necessary to specify a negative stepping interval.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


