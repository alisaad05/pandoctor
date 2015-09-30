jmpSetSolverCalculationType()
=============================

Defines the Solver calculation type.

Syntax
------

int jmpSetSolverCalculationType (int typeFlag);

Parameters
----------

`typeFlag [input]`

Integer that specifies the type of calculation to perform when running
the Solver. This parameter can take one of the following values:

  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `JMP_SOLVER_CALCULATION_TEMPERATURE_STEPPING`      To perform a multiphase equilibrium calculation at fixed composition and varying the temperature at a given step.
  `JMP_SOLVER_CALCULATION_CONCENTRATION_STEPPING`    To perform a multiphase equilibrium calculation at fixed temperature and variable composition. The concentration of a chosen element is varied at a given step and balanced against one or all of the remaining elements in the alloy.
  `JMP_SOLVER_CALCULATION_SINGLE_POINT`              To perform a multiphase equilibrium calculation at fixed temperature and composition.
  `JMP_SOLVER_CALCULATION_SINGLE_PHASE`              To perform an equilibrium calculation for a single phase. It may be set up for one or multiple temperature-composition points.
  `JMP_SOLVER_CALCULATION_MULTIPLE_POINTS`           To perform a multiphase equilibrium calculation for a set of arbitrary temperatures and compositions.
  `JMP_SOLVER_CALCULATION_EXTENDED_STEPPING`         To extend the calculation of thermodynamic properties below a heat treatment temperature. First, equilibrium stepping at a given composition is performed until reaching the heat treatment temperature. Then, the phase structure is kept frozen and thermodynamic properties are calculated down to room temperature.
  `JMP_SOLVER_CALCULATION_SCHEIL_GULLIVER`           To perform a nonequilibrium Scheil-Gulliver calculation.
  `JMP_SOLVER_CALCULATION_T0_ENERGY_CHANGE`          To perform a calculation that finds the temperature T~0~, at which the Gibbs energy of two phases with identical composition is the same.
  `JMP_SOLVER_CALCULATION_GIBBS_ENERGY_DIFFERENCE`   To calculate the Gibbs energy difference between two phases with identical composition in a given temperature range.
  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. By default, the Solver performs a
    temperature stepping calculation.
-   Depending on the specified calculation type, different functions are
    required to complete the setup of the Solver module.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


