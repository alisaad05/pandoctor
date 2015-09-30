jmpRunCctCalculation()
======================

Runs a CCT calculation.

Syntax
------

int jmpRunCctCalculation (void);

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

`cct.out`

The output of a CCT calculation is written to this file in several
blocks of data. Standard transformation temperatures are printed in the
header, which is followed by the temperature-time pairs for each product
phase to reach its start fraction, calculated as a function of cooling
rate or t~85~ parameter. These are given in separate blocks for ferrite,
pearlite, and bainite, unless any of these phases cannot be found in the
system. Similar results are printed next for the transformation end
point, as well as for martensite start, 50%, and 90% formation levels
(whenever martensite is present in the alloy). The final block provides
the room-temperature microstructure (in volume fraction) and mechanical
properties, calculated as a function of cooling rate or t~85~ parameter.

Remarks
-------

-   The CCT module can only be used for general steels. Attempting to
    run a CCT calculation for any other material type will result in
    an error.
-   Make sure that your application can access the required DLLs,
    configuration and database files, otherwise an error will occur. To
    successfully run a calculation, the contents of the subdirectory
    `Runtime/win32` (for 32-bit applications) or `Runtime/x64` (for
    64-bit applications), found in the API installation directory,
    should be placed at the same level as your executable file.
-   The output file will be saved in the working directory, which can be
    set using [jmpSetWorkingDirectory()](jmpSetWorkingDirectory.htm).
-   When performing several calculations in a row, be sure to extract
    the data that you need or rename the output file at each step, as it
    will be overwritten.

Requirements
------------

  --------- ------------------------------------------
  Headers   `jmpcore.h`\
            `jmpcct.h`

  Library   `jmpcct.lib`/`jmpcct_x64.lib`

  DLLs      `jmpcore.dll`/`jmpcore_x64.dll`\
            `jmpsolver.dll`/`jmpsolver_x64.dll`\
            `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`\
            `jmpcct.dll`/`jmpcct_x64.dll`
  --------- ------------------------------------------


