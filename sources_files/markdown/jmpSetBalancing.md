jmpSetBalancing()
=================

Defines the balancing mode used for variable composition calculations.

Syntax
------

int jmpSetBalancing (int modeFlag, char \*balanceElement);

Parameters
----------

`modeFlag [input]`

Integer that specifies the type of balancing to perform when running a
concentration stepping calculation. This parameter can take one of the
following values:

  ---------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------
  `JMP_BALANCE_ONE_ELEMENT`    To compensate the change in concentration of the varying element by applying a reverse change to one of the other elements in the alloy.
  `JMP_BALANCE_ALL_ELEMENTS`   To compensate the change in concentration of the varying element by distributing the required balance over all other elements in the alloy.
  ---------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------

`balanceElement [input, optional]`

Pointer to a null-terminated sequence of characters that specifies the
element to which to apply the balancing. When specifying the mode flag
`JMP_BALANCE_ALL_ELEMENTS`, this parameter is ignored and may be set to
`NULL`.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is only relevant to set up the Solver module to run
    concentration stepping calculations.
-   This function call is optional. The default behaviour is to balance
    against the first element in the alloy.
-   If the specified balancing element is not found in the set of
    elements in the alloy, then the default balancing element will be
    used instead.
-   When balancing against all of the remaining elements in the alloy,
    the distribution is performed according to the proportions defined
    in a base composition, set with
    [jmpSetAlloyComposition()](jmpSetAlloyComposition.htm).

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


