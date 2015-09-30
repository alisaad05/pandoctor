jmpRunColdfireCalculation()
===========================

Runs a Coldfire calculation.

Syntax
------

int jmpRunColdfireCalculation (void);

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

`coldfire.out`

When performing the calculation of physical and thermophysical
properties, output results are written to this file in tab-separated
format. The properties are calculated for the whole temperature or
concentration range found in the input file (`summary.out` or similar)
and, when relevant, they are given as property per phase. In addition to
the quantities specified with
[jmpSetPhysicalProperty()](jmpSetPhysicalProperty.htm), the phase
amounts, enthalpy, specific heat, and latent heat will always be
computed.

In the case of room-temperature matrix mechanical properties, the
calculated values are output to this file in block format. Each data
block includes the grain size (or set of alpha and beta grain sizes, for
titanium alloys) and heat treatment temperature (or concentration of the
varying element, for input files obtained from concentration stepping
calculations), together with the results obtained for every property
specified with
[jmpSetMechanicalProperty()](jmpSetMechanicalProperty.htm).

Remarks
-------

-   Make sure that your application can access the required DLLs,
    configuration and database files, otherwise an error will occur. To
    successfully run a calculation, the contents of the subdirectory
    `Runtime/win32` (for 32-bit applications) or `Runtime/x64` (for
    64-bit applications), found in the API installation directory,
    should be placed at the same level as your executable file.
-   The output file will be saved in the working directory, which can be
    set using [jmpSetWorkingDirectory()](jmpSetWorkingDirectory.htm).
-   Strictly speaking, Coldfire will read input data from the file
    `coldfire.in`, which can also be found in the working directory.
    This is essentially a copy of the Solver output file `summary.out`,
    or a similar user-defined file.
-   When performing several calculations in a row, be sure to extract
    the data that you need or rename the output file at each step, as it
    will be overwritten.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLLs      `jmpcore.dll`/`jmpcore_x64.dll`\
            `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


