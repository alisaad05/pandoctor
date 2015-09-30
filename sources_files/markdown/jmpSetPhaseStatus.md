jmpSetPhaseStatus()
===================

Defines the status attribute for a given phase.

Syntax
------

int jmpSetPhaseStatus (char \*phaseName, int statusFlag);

Parameters
----------

`phaseName [input]`

Pointer to a null-terminated sequence of characters that specifies the
phase whose status attribute you wish to change.

`statusFlag [input]`

Integer that specifies the status attribute to set. This parameter can
take one of the following values:

  -------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `JMP_PHASE_STATUS_ACTIVE`              To treat the phase normally, without any special checks being performed.
  `JMP_PHASE_STATUS_DORMANT`             To neglect the phase in a Solver equilibrium calculation, but compute its formation driving force and output the results to file `dg.out`. More information on this file can be found in [jmpRunSolverCalculation()](jmpRunSolverCalculation.htm).
  `JMP_PHASE_STATUS_STOP_WHEN_ABSENT`    To perform the Solver calculation only if the phase is present at the starting point, and subsequently abort it as soon as the phase disappears. The latter requires running a stepping calculation with phase boundaries search.
  `JMP_PHASE_STATUS_STOP_WHEN_PRESENT`   To perform the Solver calculation only if the phase is not present at the starting point, and subsequently abort it as soon as the phase appears. The latter requires running a stepping calculation with phase boundaries search.
  -------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. By default, all phases are flagged
    as active. The only potential exception is the phase `(FE,NI)AL` of
    stainless steels, which is flagged as dormant unless both aluminium
    and nickel are present in the alloy, or when running concentration
    stepping or multiple points calculations.
-   The dormant status attribute should only be used for multiphase
    equilibrium calculations. When set for single phase,
    Scheil-Gulliver, T~0~ energy change, or Gibbs energy difference
    calculations, it has the same effect as excluding the phase from the
    calculation, and could result in an error.
-   When requested, the check for the presence (or absence) of a
    specific phase is performed at the beginning of every
    Solver calculation. Subsequent checks only apply for temperature,
    concentration, or extended stepping, as well as Scheil-Gulliver
    calculations, and require that phase boundaries search is turned on.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


