jmpSetGraphiteType()
====================

Defines the graphite morphology type for cast irons.

Syntax
------

int jmpSetGraphiteType (char \*typeName);

Parameters
----------

`typeName [input]`

Pointer to a null-terminated sequence of characters that specifies the
graphite type in a cast iron. For possible choices, refer to the file
`inits/ci_types.ini`, which can be found in the subdirectory `Runtime`
in the API installation directory, and should be placed at the same
level as your executable file.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing Coldfire to calculate any of
    the following physical properties for cast irons: Young's, bulk, and
    shear moduli, thermal conductivity, electrical conductivity
    and resistivity.
-   This function call is optional. If you do not specify the graphite
    type, then it will default to `Spheroidal`.
-   Make sure that your application can reach the file
    `inits/ci_types.ini`, otherwise an error will occur when
    running Coldfire.

**Note**  You may define additional morphology types in the file
`inits/ci_types.ini`. Each new type requires that you specify a unique
name tag and appropriate shape factors.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


