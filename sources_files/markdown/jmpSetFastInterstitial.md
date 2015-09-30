jmpSetFastInterstitial()
========================

Defines whether to consider fast diffusion of interstitial atoms in
Scheil-Gulliver calculations.

Syntax
------

int jmpSetFastInterstitial (int booleanFlag);

Parameters
----------

`booleanFlag [input]`

Integer that specifies whether fast diffusion of interstitial atoms
(specifically, carbon and nitrogen) should be taken into account when
running a Scheil-Gulliver calculation. Possible values are
`JMP_FLAG_TRUE` or `JMP_FLAG_FALSE`, respectively to include fast
diffusion or not.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing the Solver to run a
    Scheil-Gulliver calculation or when setting up the
    Solidification module.
-   This function call is optional. By default, fast carbon and nitrogen
    diffusion is taken into account for steels, but for the other
    material types the classical Scheil-Gulliver model is used.
-   Although this function can be applied for most material types, its
    usage is only recommended for steels.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


