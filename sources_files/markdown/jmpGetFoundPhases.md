jmpGetFoundPhases()
===================

Retrieves the phases present in a Solver output file.

Syntax
------

int jmpGetFoundPhases (int \*numPhases, char \*\*phaseList);

Parameters
----------

`numPhases [output]`

Pointer to an integer that will contain the number of phases found in
the Solver output file.

`phaseList [output]`

Pointer to an array that will be filled with null-terminated sequences
of characters representing each of the phases found in the Solver output
file.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   By default, this function looks for phases in the Solver output file
    `summary.out`. However, a similar file with a different name may be
    specified, using
    [jmpSetSummaryReadMode()](jmpSetSummaryReadMode.htm) and
    [jmpSetUserFilename()](jmpSetUserFilename.htm).
-   When calling this function, you are responsible for allocating
    enough memory to hold all the phases found. Also, the allocated
    memory should be freed when it is not useful any more. Consider
    structuring your code as illustrated below:

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


