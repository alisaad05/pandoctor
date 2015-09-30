jmpSetStartTransformationFraction()
===================================

Defines the fraction value that flags the start of austenite
decomposition in TTT/CCT calculations.

Syntax
------

int jmpSetStartTransformationFraction (double startFraction);

Parameters
----------

`startFraction [input]`

Double that specifies the amount (in volume fraction) of a newly formed
phase that will be taken as the beginning of austenite decomposition
when calculating TTT/CCT diagrams.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the TTT and CCT modules.
-   This function call is optional. If you do not specify the start
    transformation fraction, a default value of 0.01 will be assumed.

**Note**  The value specified for the start transformation fraction is
also used to signal the completion of austenite decomposition. When the
remaining austenite volume fraction becomes lower than such value, the
transformation is considered to be complete.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


