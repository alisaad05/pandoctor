jmpRunTttCalculation()
======================

Runs a TTT calculation.

Syntax
------

int jmpRunTttCalculation (void);

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

`ttt.out`

The output of a TTT calculation is written to this file in tab-separated
format. Standard transformation temperatures are printed in the header,
which is followed by the calculated transformation times for the
temperature range from just below A~3~ to just above M~s~ (or room
temperature, in case martensite is never found). In addition to the
start and completion points, transformation times are given for the
fraction values specified with
[jmpSetAdditionalTransformationFractions()](jmpSetAdditionalTransformationFractions.htm).

Remarks
-------

-   The TTT module can only be used for general steels. Attempting to
    run a TTT calculation for any other material type will result in
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

  --------- --------------------------------------
  Headers   `jmpcore.h`\
            `jmpttt.h`

  Library   `jmpttt.lib`/`jmpttt_x64.lib`

  DLLs      `jmpcore.dll`/`jmpcore_x64.dll`\
            `jmpsolver.dll`/`jmpsolver_x64.dll`\
            `jmpttt.dll`/`jmpttt_x64.dll`
  --------- --------------------------------------


