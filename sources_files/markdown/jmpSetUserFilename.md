jmpSetUserFilename()
====================

Defines the name of the preferred user file to read Coldfire input data
from.

Syntax
------

int jmpSetUserFilename (char \*filename);

Parameters
----------

`filename [input]`

Pointer to a null-terminated sequence of characters that specifies the
name of the file that should be used in place of `summary.out` to
retrieve input data for the Coldfire module. It may be prepended with a
file path, and is always assumed to be relative to the working
directory.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is necessary after requesting a
    user-specified input read mode, by calling
    [jmpSetSummaryReadMode()](jmpSetSummaryReadMode.htm) with the
    parameter value `JMP_READ_USER_SPECIFIED`.
-   To ensure the validity of the input data, only Solver output files
    similar to `summary.out` and `scheil.out` should be used.
-   When calculating room-temperature matrix mechanical properties, the
    various blocks in the Solver output file will be interpreted as heat
    treatment information.
-   Make sure that the specified user input file exists, otherwise an
    error will occur when running Coldfire.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


