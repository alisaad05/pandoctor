jmpSetAlloyElements()
=====================

Defines how many and which elements are present in the alloy.

Syntax
------

int jmpSetAlloyElements (int numElements, char \*\*elementList);

Parameters
----------

`numElements [input]`

Integer that specifies the number of elements in the alloy.

`elementList [input]`

Pointer to an array of null-terminated sequences of characters that
specifies the list of elements in the alloy.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is required to set up most calculation modules.
    The only exception is Coldfire, for which the elements in the alloy
    are read from a Solver output file.
-   Depending on the material type, only specific sets of elements
    are allowed. Valid choices are listed below:
-   The base element for a given material type (the first in the sets
    above, e.g., Fe for steels) should always come first in the
    specified list of elements.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


