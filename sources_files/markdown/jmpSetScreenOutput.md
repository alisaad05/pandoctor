jmpSetScreenOutput()
====================

Defines whether to print calculation progress to screen.

Syntax
------

int jmpSetScreenOutput (int booleanFlag);

Parameters
----------

`booleanFlag [input]`

Integer that specifies whether status information should be printed to
screen as a calculation progresses. Possible values are `JMP_FLAG_TRUE`
or `JMP_FLAG_FALSE`, respectively to turn the display mode on or off.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. The default behaviour is to display
    calculation progress.
-   Calling this function with the parameter value `JMP_FLAG_FALSE` only
    cancels normal output. Error and warning messages will always
    be displayed.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


