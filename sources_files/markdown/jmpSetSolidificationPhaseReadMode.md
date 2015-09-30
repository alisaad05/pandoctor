jmpSetSolidificationPhaseReadMode()
===================================

Defines the phase read mode for the Solidification module.

Syntax
------

int jmpSetSolidificationPhaseReadMode (int modeFlag);

Parameters
----------

`modeFlag [input]`

Integer that specifies how to obtain the list of phases to include in a
solidification calculation. This parameter can take one of the following
values:

  ------------------------------------ ------------------------------------------------------------------------------------------------------
  `JMP_READ_DEFAULT`                   To read phases from the file `inits/jmp.ini`.
  `JMP_READ_USER_SPECIFIED`            To read phases from a user-defined list.
  `JMP_READ_DEFAULT_WITH_EXCLUSIONS`   To read phases from the file `inits/jmp.ini`, but disregard those present in a given exclusion list.
  ------------------------------------ ------------------------------------------------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. If omitted, the Solidification
    module will read the default set of phases. In this case, you must
    ensure that your application can reach the file `inits/jmp.ini`,
    otherwise an error will occur when running the calculation.
-   When specifying the parameter value `JMP_READ_USER_SPECIFIED`, the
    list of phases to include in the calculation must be provided, by
    calling
    [jmpSetSolidificationPhases()](jmpSetSolidificationPhases.htm).
-   When specifying the parameter value
    `JMP_READ_DEFAULT_WITH_EXCLUSIONS`, the list of phases to exclude
    from the calculation must be provided, by calling
    [jmpExcludeSolidificationPhases()](jmpExcludeSolidificationPhases.htm).

Requirements
------------

  --------- -----------------------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolidification.h`

  Library   `jmpsolidification.lib`/`jmpsolidification_x64.lib`

  DLL       `jmpsolidification.dll`/`jmpsolidification_x64.dll`
  --------- -----------------------------------------------------


