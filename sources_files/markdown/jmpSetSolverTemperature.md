jmpSetSolverTemperature()
=========================

Defines the temperature value used for fixed temperature equilibrium
calculations.

Syntax
------

int jmpSetSolverTemperature (double temperature);

Parameters
----------

`temperature [input]`

Double that specifies the temperature at which the Solver module
performs a fixed temperature equilibrium calculation.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is necessary to prepare the Solver to run
    single point or concentration stepping calculations. It may also be
    used to set up single phase calculations, when only one
    temperature-composition point is required.
-   The input temperature unit may be specified using
    [jmpSetTemperatureUnit()](jmpSetTemperatureUnit.htm).
-   To ensure the validity of the calculations, the Solver temperature
    should not be set to values lower than room temperature.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


