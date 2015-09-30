jmpSetCastIronType()
====================

Defines the structure type for cast irons.

Syntax
------

int jmpSetCastIronType (int typeFlag);

Parameters
----------

`typeFlag [input]`

Integer that specifies the type of structure to consider in a
solidification calculation for cast irons. This parameter can take one
of the following values:

  ---------------------------- ------------------------------------
  `JMP_CAST_IRON_PEARLITIC`    To assume a pearlitic structure.
  `JMP_CAST_IRON_AUSTENITIC`   To assume an austenitic structure.
  `JMP_CAST_IRON_FERRITIC`     To assume a ferritic structure.
  ---------------------------- ------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the Solidification module
    to run a calculation for cast irons.
-   This function call is optional. If omitted, a pearlitic structure
    will be assumed.
-   Currently, cast irons of austenitic and ferritic structures are
    treated in the same manner. Therefore, interchanging them has no
    effect and produces the same calculation results.

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLL       `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


