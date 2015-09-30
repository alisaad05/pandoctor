jmpSetTemperatureStepping()
===========================

Defines the temperature range and step size used for variable
temperature calculations.

Syntax
------

int jmpSetTemperatureStepping (double startTemperature, double
endTemperature, double stepTemperature);

Parameters
----------

`startTemperature [input]`

Double that specifies the temperature at which the Solver calculation
starts.

`endTemperature [input]`

Double that specifies the temperature at which the Solver calculation
ends.

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
    temperature stepping, Scheil-Gulliver, T~0~ energy change, or Gibbs
    energy difference calculations.
-   The input temperature unit may be specified using
    [jmpSetTemperatureUnit()](jmpSetTemperatureUnit.htm).
-   For easier Solver convergence, it is recommended to start the
    calculation at high temperature and decrease it.
-   When decreasing temperature, it is not necessary to specify a
    negative stepping interval.
-   To ensure the validity of the calculations, the lowest temperature
    in the range provided should not be set to values below
    room temperature.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


