jmpRunSolidificationCalculation()
=================================

Runs a solidification calculation.

Syntax
------

int jmpRunSolidificationCalculation (void);

Parameters
----------

This function has no parameters.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Output files
------------

`coldfire.in`

This file is created to store the thermodynamics and compositions of
phases obtained during solidification. It is very similar in structure
to `scheil.out`, since the basis of the calculation is the Solver's
Scheil-Gulliver model. The solidification behaviour described here takes
into account the average composition of the solid formed and, when
appropriate, solid-state transformations occurring during or after
solidification. It is used as input for the Coldfire module, in order to
calculate physical and thermophysical properties of the alloy during
solidification.

`coldfire.out`

The final stage of a solidification calculation involves running
Coldfire to determine physical and thermophysical properties for the
whole temperature range. The required input data is read from
`coldfire.in`, and the output is written to this file in tab-separated
format. The list of properties to consider may be adjusted using
[jmpSetPhysicalProperty()](jmpSetPhysicalProperty.htm) and
[jmpUnsetPhysicalProperty()](jmpUnsetPhysicalProperty.htm).

Remarks
-------

-   Make sure that your application can access the required DLLs,
    configuration and database files, otherwise an error will occur. To
    successfully run a calculation, the contents of the subdirectory
    `Runtime/win32` (for 32-bit applications) or `Runtime/x64` (for
    64-bit applications), found in the API installation directory,
    should be placed at the same level as your executable file.
-   The output files will be saved in the working directory, which can
    be set using [jmpSetWorkingDirectory()](jmpSetWorkingDirectory.htm).
-   When performing several calculations in a row, be sure to extract
    the data that you need or rename the output files at each step, as
    they will be overwritten.

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLLs      `jmpcore.dll`/`jmpcore_x64.dll`\
            `jmpsolver.dll`/`jmpsolver_x64.dll`\
            `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`\
            `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


